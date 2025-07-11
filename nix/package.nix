{
  pkgs,
  stdenv,
  ...
}:
stdenv.mkDerivation {
  name = "pict";
  version = "0.1.0";
  src = ./..;
  buildInputs = [pkgs.just];
  buildPhase = ''
    ${pkgs.just}/bin/just clean
  '';
  installPhase = ''
    mkdir -p $out/bin
    ${pkgs.just}/bin/just build $out/bin/pict
    chmod +x $out/bin/pict
  '';
}
