---
layout: post
title: Jinx and Nix
tags: Emacs Nix
---

## Background

Today I'm trying to adapt my [jinx.el](https://github.com/minad/jinx) configurations for Nix. Jinx.el leverages
[libenchant](https://abiword.github.io/enchant/), a general interface for various spelling libraries like GNU Aspell,
Hunspell, to provide powerful and high-performance spelling check in Emacs. To
use jinx.el, we should first compile a dynamic library (jinx-mod) which depends
on libenchant.

Previously, I installed [enchant with Homebrew](https://formulae.brew.sh/formula/enchant) and linked it to the target
library. The step is straight-forward, since jinx.el will try to find the
dependency and compile the module for us, out-of-box.

Nixpkgs also provides [enchant package](https://search.nixos.org/packages?channel=unstable&query=enchant). We need to manually specify the compiling
process. Moreover, for Nix-managed system, backends behind enchant should also
be configured for proper usage.


## Compiling

The function `jinx--load-module` defines the process of compiling and loading
the dynamic module that jinx.el depends on. The command for compiling is simple:

```sh
# On GNU/Linux with GCC
gcc -I. -O2 -Wall -Wextra -fPIC -shared -o jinx-mod.so jinx-mod.c \
    $(pkg-config --cflags --libs enchant-2)
```

Jinx.el uses `pkg-config` to find the enchant-2 dependency. It's easy to write a
Nix derivation based on this:

```nix
let
  moduleName = "jinx-mod";
  moduleFileName = moduleName + ".so";
in
stdenv.mkDerivation rec {
  pname = moduleName;
  version = "1.10";
  src = fetchFromGitHub {
    owner = "minad";
    repo = "jinx";
    rev = version;
    hash = "sha256-ddOp5BRk5GtMZ5LPU7SGUa6Z8NCmT3UnUDXTHVhJqNQ=";
  };
  nativeBuildInputs = [ pkg-config ];
  buildInputs = [ enchant ];
  buildPhase = ''
    $CC -I. -O2 -Wall -Wextra -fPIC -shared -o ${moduleFileName} jinx-mod.c $($PKG_CONFIG --cflags --libs enchant-2)
  '';
  installPhase = ''
    mkdir -p $out/lib
    cp ${moduleFileName} $out/lib/
  '';
}
```

Either put the derivation in a flake's output or `default.nix`. I add
`flake.nix` to the jinx directory and run `nix build` to get the `result`:

```text
result
└── lib
    └── jinx-mod.so
```


## Jinx Configuration

Then we should make jinx find the dynamic module. From the definition of
`jinx--load-module`:

```emacs-lisp
(let* ((mod-name (file-name-with-extension "jinx-mod" module-file-suffix))
       (mod-file (locate-library mod-name t)))
  ...)
```

Jinx tries to find the module at the same directory. The module name (suffix)
depends on `module-file-suffix`, which is a constant defined in C source code of
Emacs. Generally, on macOS it's `.dylib` and on Linux it's `.so`.

I just create a symbolic link for it:

```sh
ln -sf ./result/lib/jinx-mod.so /path/to/jinx/dir/jinx-mod.dylib # on macOS
```

You can also add `:before` advice to `jinx--load-module` for automatically
building the derivation and creating the symlink, which can be more elegant.


## Spell Checker Backends


### Why Enchant from Nixpkgs does not work?

If you install enchant from Nixpkgs, it's definitely not out-of-box. You can
test it:

```sh
nix shell nixpkgs#enchant
enchant-2 -l <your-file>
```

> Libenchant detects your environment variable `LANG` to determine which directory
> it will use for spelling check. Either set it to a reasonable value, or unset it
> (it's different from set it to an empty value!).

And get:

```text
No dictionary available for 'en': The file "/nix/store/dy3qcnavb2qfnh0hq7yhp2nc71ma5jz0-aspell-0.60.8.1/lib/aspell/en" can not be opened for reading.
```

By listing the directory pointed by the error message, I see a bunch of
unrelated files.

We can list the available dictionaries for enchant with

```sh
enchant-lsmod-2 -list-dicts
```

which gives out (only):

```text
he (hspell)
he_IL (hspell)
```

These two dictionaries can really be used, with `-d` option. But I don't know
where they come from 🥲. And in fact, we want some English dictionaries.


### The Reason

Enchant does not provide spell checking functionalities itself. In other words,
it **must** reply on other spell checkers.

<img width="90%" alt="Jinx Enchant Architecture" src="/assets/img/2024-07-20-jinx-enchant-architecture.svg" />

Yes, I'm not kidding. If you install enchant from some other package manager,
like Homebrew, you'll find it can find a lot of available dictionaries. The
reason is that Homebrew makes aspell a runtime dependency of enchant, and when
installing aspell, [it always installs a whole list of dictionaries](https://github.com/Homebrew/homebrew-core/blob/e1fc85992ddf0f980b910a9aee9d16718f92fa37/Formula/a/aspell.rb#L22-L554).

On the contrary, Nixpkgs does not force you to install all these dictionaries,
even when you install aspell. The dictionaries of aspell are served as separate
packages, [as you can find here](https://search.nixos.org/packages?channel=unstable&query=aspellDicts).


### Install Dictionaries {#install-dictionaries}

So let's install the dictionaries. Add `aspellDicts.en` to
`environment.systemPackages`, or `home.pacakges`, or run

```sh
nix-env -iA nixpkgs#aspellDicts.en
```

Depending on how you manage your packages with Nix. After installing at least
one aspell dictionary, `enchant-lsmod-2 -list-dicts` outputs more dictionaries:

```text
en (aspell)
en-variant_0 (aspell)
en-variant_1 (aspell)
en-variant_2 (aspell)
...
en_US-w_accents (aspell)
en_US-wo_accents (aspell)
he (hspell)
he_IL (hspell)
```

But `enchant-2 -l <file>` still emits the same error. What's the trouble again?

I did not find the true reason, regrettably. But I found the error message
origins from the aspell backend ‐ GNU Aspell cannot find the dictionary. I think
[this patch](https://github.com/NixOS/nixpkgs/blob/ad0b5eed1b6031efaed382844806550c3dcb4206/pkgs/development/libraries/aspell/default.nix#L30) should make it search the correct path for dictionaries, but actually
it does not.

From the [documentation of GNU Aspell](http://aspell.net/0.50-doc/man-html/4_Customizing.html#SECTION00510000000000000000), I learned that we can specify the location
of the dictionaries from the file `~/.aspell.conf`. So I write this to my Nix
configuration:

```nix
{
  home.file.".aspell.conf".text = ''
    dict-dir ${config.home.profileDirectory}/lib/aspell
  '';
}
```

I'm using home-manager. You may change the profile dictionary.

After rebuild and switch, it finally works! And jinx.el in Emacs works correctly
as well.


## Conclusion

To use enchant installed with Nixpkgs, at least you need to:

-   Install enchant.
-   Install some dictionaries from `nixpkgs.aspellDicts`.
-   Specify an user configuration for GNU Aspell.

To use jinx.el in the Nix-way, apart from the steps above, you also need to:

-   Build jinx-mod with Nix, which links it to libenchant in your Nix store.
-   Tell jinx.el how to find the compiled module. You can either load it ahead, or
    create a symlink.
