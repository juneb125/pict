{ stdenvNoCC, lib, ... }:
stdenvNoCC.mkDerivation {
  name = "pict";
  version = "0.1.0";
  src = lib.fileset.toSource {
    root = ./.;
    fileset = lib.fileset.unions [ ./pict ];
  };

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
    maintainers = with lib.maintainers; [ juneb125 ];
    platforms = lib.platforms.all;
  };
}
