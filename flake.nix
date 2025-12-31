{
  description = "Initialize C projects with ease";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs, }: let
    systems = [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];
    forEachSystem = f: nixpkgs.lib.genAttrs systems
      (system: f nixpkgs.legacyPackages.${system});
  in {
    packages = forEachSystem (pkgs: {
      default = pkgs.callPackage ./package.nix {};
    });

    devShells = forEachSystem (pkgs: {
      default = pkgs.callPackage ./shell.nix {};
    });
  };
}
