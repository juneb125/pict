{ stdenv, lib, ... }:
stdenv.mkDerivation {
  name = "pict";
  version = "0.1.0";
  src = ./.;

  buildPhase = "";
  installPhase = ''
    mkdir -p $out/bin
    cp pict $out/bin/pict
    chmod +x $out/bin/pict
  '';

  meta = {
    description = "C project initializer";
    homepage = "https://github.com/juneb125/pict";
    license = lib.licenses.mit;
    platforms = lib.platforms.all;
  };
}
