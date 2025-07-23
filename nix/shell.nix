{ pkgs, ... }:
pkgs.mkShell {
  name = "pict-devshell";
  packages = with pkgs; [
    just
    shellcheck
  ];
  shellHook = ''
    echo "Welcome to pict's nix shell"
  '';
}
