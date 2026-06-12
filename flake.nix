{
  description = "Rennsax's blog files.";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      with pkgs;
      {
        devShells.default = mkShell {
          packages = [
            nodejs
            (python3.withPackages (
              ps: with ps; [
                brotli
                fonttools
              ]
            ))
            yarn
            ruby
          ];
        };
      }
    );
}
