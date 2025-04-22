---
layout: post
title: "Shell: How I Make My Life Easier?"
tags: tools
last_modified_at: 2024-11-20 12:03:29 +0800
published: false
---

I used to be enthusiastic about Shell builtins: history(3), readline(3), find(1)
... Although *they are not intuitively designed*, I believe that every
programmer should learn about these traditional, general-purposed old tools,
which are available in most development environments.

However I found it really hard to manipulate all these things. It's a
time-consuming job. That's why I began to change my mind. I know Rust has become
a more popular language which is regarded to be faster and safer. Many Unix
tools have modern alternatives that are written with Rust, like `fd` for `find`,
`lsd` for `ls`... See [ibraheemdev/modern-unix](https://github.com/ibraheemdev/modern-unix) for the collection.

In this article I will discuss how I make my daily command-line workflow more
easier with minimal “modern tools” ‐ I still want to keep the generality. I'm
not willing to install plenty of tools again and again on different
machines.


## bat

Alternative for `less` and `cat`.

```sh
alias cat=bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export BAT_THEME="gruvbox-dark"
```


## fd

It's self-claimed to be very fast. But I prefer the traditional find(1) or shell
globbing.

```sh
fd <search query> <directory>
# List all files in the directory
fd # current directory
fd . <directory>
```


## fzf

A command-line fuzzy finder. The tool is really awesome! It can also integrate
with other buddy tools like `fd` and `tree`.

```sh
export FZF_DEFAULT_COMMAND="fd --type f --strip-cwd-prefix"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --strip-cwd-prefix"
# print tree structure in the preview window
export FZF_ALT_C_OPTS="--preview 'tree -C {}'"
_fzf_compgen_dir() {
    # cd **<TAB>
    fd --type d --hidden --follow --exclude ".git" --exclude "node_modules" . "$1"
}
_fzf_compgen_path() {
    # vim **<TAB>
    fd --hidden --follow --exclude ".git" --exclude "node_modules" . "$1"
}
```


## cheat

With `cheat`, I can quickly record my cheatsheet and refer to them later.

```sh
cheat ffmpeg
cheat -e ffmpeg # auto-create a personal configuration
```


## Ripgrep

Ripgrep, or `rg`, recursively searches the current directory for a regex
pattern, which is one of my favorite Rust tools. It's definitely faster than the
`find .. -exec grep ..` routine and the command is much simpler, with decorated
outputs. It has been integrated into the famous VS Code, which proves its
impact.

By default, ripgrep will respect gitignore rules and automatically skip hidden
files/directories and binary files.

Ripgrep is built on top of [Rust's regex engine](https://github.com/rust-lang/regex), so the regex syntax is just the
same as [crate regex](https://docs.rs/regex/1.10.5/regex/#syntax).
