{ pkgs, ... }:
let
  git-source =
    {
      url,
      rev,
      hash ? "",
    }:
    pkgs.fetchgit {
      inherit hash rev url;
    };

  url-source =
    {
      url,
      hash ? "",
    }:
    pkgs.fetchurl {
      inherit hash url;
    };

  catalog =
    {
      name,
      source,
      path,
      ...
    }@args:
    pkgs.stdenvNoCC.mkDerivation (
      {
        inherit name;
        buildPhase = ''
          ${pkgs.coreutils}/bin/cp ${source}/${path} $out
        '';
        phases = [ "buildPhase" ];
      }
      // args
    );
in
{
  inherit catalog git-source url-source;
}
