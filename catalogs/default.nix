{ pkgs, self, ... }:
let
  lib = self.lib pkgs;
in
{
  au-ism-catalog = lib.sub-source {
    name = "Australian Federal Information Security Manual";
    source = self.sources.${pkgs.system}.au-ism-v2025-03-31;
    path = "./ISM_catalog.json";
    meta = {
      version = "2025.03.31";
      oscal-version = "1.1.2";
    };
  };
}
