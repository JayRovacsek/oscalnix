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

  sub-source =
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

  profile =
    {
      title,
      imports ? [ ],
      merge ? { },
      modify ? { },
      ...
    }@args:
    builtins.toJSON "${title}-profile.json" (
      pkgs.lib.recursiveUpdate args {
        profile = {
          metadata = {
            inherit title;
          };
          inherit imports merge modify;
        };
      }
    );
in
{
  inherit
    sub-source
    git-source
    profile
    url-source
    ;
}
