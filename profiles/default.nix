{ pkgs, self, ... }:
let
  lib = self.lib pkgs;
in
{
  "800-53-rev4-high" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/profiles/800-53-rev4-high.json";
    hash = "sha256-wUHTr5gfDzGgJ4pL2tEpfzrtgPspTbxeFatstc/auAU=";
  };
  "800-53-rev4-low" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/profiles/800-53-rev4-low.json";
    hash = "sha256-jGGdhCqo/0YrMCh9mU8wJOMtdE2na6WB93dLtFS35mg=";
  };
  "800-53-rev4-moderate" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/profiles/800-53-rev4-moderate.json";
    hash = "sha256-adaSfMv3kzTpgY2f9hTF6E23A+yEcQvRjFe0xaDSq5s=";
  };
  "800-53-rev5-high" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/profiles/800-53-rev5-high.json";
    hash = "sha256-TiIR03rfYGxQmFzQhJFa1RVCqMQlMO0xSVAlt5K3TGM=";
  };
  "800-53-rev5-low" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/profiles/800-53-rev5-low.json";
    hash = "sha256-w+/37hDgMUSEW1rhmVLV9kNLgg+0F5nyv2OHmB9jAK8=";
  };
  "800-53-rev5-privacy" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/profiles/800-53-rev5-privacy.json";
    hash = "sha256-hp99LPWLa28PlGVdGKHPL/9bLDU2ec2ACJaurcmkxqU=";
  };

  au-ism_e8_ml1-baseline_profile = lib.sub-source {
    name = "Information security manual Essential Eight Maturity Level One Baseline";
    source = self.sources.${pkgs.system}.au-ism-v2025-03-31;
    path = "./ISM_E8_ML1-baseline_profile.json";
    meta = {
      version = "2025.03.31";
      oscal-version = "1.1.2";
    };
  };
}
