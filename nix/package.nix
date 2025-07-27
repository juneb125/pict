{ pkgs, lib, stdenv, ... }: let
  inherit (pkgs) just;
  just_bin = "${just}/bin/just";
in
  stdenv.mkDerivation {
    name = "pict";
    version = "0.1.0";
    src = ./..;

    buildInputs = [just];
    buildPhase = ''
      ${just_bin} clean
    '';
    installPhase = ''
      mkdir -p $out/bin
      ${just_bin} build $out/bin/pict
      chmod +x $out/bin/pict
    '';

    meta = with lib; {
			description = "C project initializer";
			homepage = "https://github.com/juneb125/pict";
			license = licenses.mit;
			platforms = platforms.all;
    };
  }
