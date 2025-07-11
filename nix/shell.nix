{ self, pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  name = "pict-devshell";
  packages = [pkgs.just];
  shellHook = ''
    echo "Welcome to pict's nix shell"
  '';
}
