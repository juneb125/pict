{
  self,
  pkgs,
  stdenv,
  ...
}:
stdenv.mkDerivation {
  name = "pict";
  version = "0.1.0";
  src = self;
  buildInputs = [pkgs.just];
  buildPhase = ''
    ${pkgs.just} build pict
  '';
  installPhase = ''
    mkdir -p $out/bin
    cp pict $out/bin
  '';
}
