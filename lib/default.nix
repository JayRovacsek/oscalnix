{ pkgs, ... }:
let
  source =
    {
      url,
      rev,
      hash ? "",
    }:
    pkgs.fetchgit {
      inherit hash rev url;
    };

  catalog =
    {
      name,
      source,
      path,
    }:
    pkgs.stdenvNoCC.mkDerivation {
      inherit name;
      buildPhase = ''
        ${pkgs.coreutils}/bin/cp ${source}/${path} $out
      '';
      phases = [ "buildPhase" ];
    };
in
{
  inherit catalog source;
}
