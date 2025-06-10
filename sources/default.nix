{ pkgs, self, ... }:
let
  lib = self.lib pkgs;
in
{
  "800-53-rev4-appendixj" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/800-53-rev4-appendixj.json";
    hash = "sha256-fKh0gAoQJy63vLP+/QckbLoORp7heyVazRwLmb2nsWI=";
  };
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
  "800-171rev2" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/800-171rev2.json";
    hash = "sha256-5R/VhuXlLHlLLjk/4MHPAu9r/RzJhVXGSQLreIU88UA=";
  };
  "australian-ism" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/australian-ism.json";
    hash = "sha256-2hX8TtN1+Hr6PfSmmJNAoa4Qz2TLB+ixtnrQuV0btL0=";
  };
  "asvs" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/asvs.json";
    hash = "sha256-p6dJajdrzKZ6+dSb0u+jPJChvI9IQtlQy5eZNNhcsOE=";
  };
  "au-ism-v2025-03-31" = lib.git-source {
    url = "https://github.com/AustralianCyberSecurityCentre/ism-oscal";
    rev = "v2025.03.31";
    hash = "sha256-/DmwCsVDKuwyhIZkgNhOAnHfGmKIPKNd70T8uHmtOB0=";
  };
  "c2m2" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/c2m2.json";
    hash = "sha256-Q6WV/d+Zq4aBX7a6+Yv9kKHWfLynGYNVLCDbNO7mcVk=";
  };
  "cisa-cpg" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/cisa-cpg.json";
    hash = "sha256-5L6WbqLasHGSrTsW6UtCpayZCp+BiuR95yVFl17EcaU=";
  };
  "cis-aws" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/cis-aws.json";
    hash = "sha256-0nDLg2xa7WK/EHgNUYTzEpcqqiOJWiavEpWfQyDGfcg=";
  };
  "cis-v8-ig1" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/cis-v8-ig1.json";
    hash = "sha256-ufHoIHbQWGo0Muz11mk9Ww+mGkhSow5tqyHQCT5LB+I=";
  };
  "cis-v8-ig2" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/cis-v8-ig2.json";
    hash = "sha256-Oz8re5nbK5eNUs1BlNpjodGaX2h3mF1IW46OimxJLkQ=";
  };
  "cjis" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/cjis.json";
    hash = "sha256-l8lLlM77vFyRDoKJ7sjDhFKnV7eLO29/R9rbiuxW4XM=";
  };
  "classificationtypes" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/other/classificationtypes.json";
    hash = "sha256-MiPcuUjvYOT3VTtQlYHHYs0902v3vGgUUmlzZVWTQAc=";
  };
  "ccpa" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/ccpa.json";
    hash = "sha256-jB0sNgCXfNQNLCY+H0+cn8Da0IyzBL+EDKb3kbn9msw=";
  };
  "cms-ars5" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/cms-ars5.json";
    hash = "sha256-LU5eDZ5OiQMrIXVBHzq1ZUFqYfscXTVJtIDps3UmjDU=";
  };
  "cobit2019" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/cobit2019.json";
    hash = "sha256-3tY7Wb5S7PRBofgZlKhdX6bMWAiJmFk31/1IjdyLf1Q=";
  };
  "cri-profile-tier1" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/cri-profile-tier1.json";
    hash = "sha256-bEMgEMOpqQuBnYYnFR8X3vkC2zmejRWYGyXiYDXW2kw=";
  };
  "cri-profile-tier2" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/cri-profile-tier2.json";
    hash = "sha256-+BzvPYbbf/qCHM9zDoC9CoKexP675k+QLPfgLIjcLec=";
  };
  "cri-profile-tier3" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/cri-profile-tier3.json";
    hash = "sha256-A35SsqirDV1lGpNcEnddrV3L3dK9i3r1g8kp7yjG3k0=";
  };
  "cri-profile-tier4" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/cri-profile-tier4.json";
    hash = "sha256-4BySuvW2KM3A776f5TQvvR8Bir6f5L0oSSincJgMNlw=";
  };
  "csa-ccm-301" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/csa-ccm-301.json";
    hash = "sha256-Wacnbk2a49tWMx9bG2+XrESNOHvPcEJlGRz1iq2J+kg=";
  };
  "csa-ccm-v4" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/csa-ccm-v4.json";
    hash = "sha256-C006PsFOJVJLUylqoOMPL5VDvHZjVcfErrfoy1GSrJM=";
  };
  "dhs-4300a" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/dhs-4300a.json";
    hash = "sha256-xfyzjfKKT4pwxcu7EfFyyguAvtqgJX6BzcvyVe/zvIA=";
  };
  "fedramp-high" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/fedramp-high.json";
    hash = "sha256-UU22GTaX9I1Ps19SIPrDIrYWOaxNzyRSiA3ZKg3MgU4=";
  };
  "fedramp-low" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/fedramp-low.json";
    hash = "sha256-38xgVPBaCFMq4Hm12rbBSy7GJvgY0sts7z5EW4gPGgk=";
  };
  "fedramp-moderate" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/fedramp-moderate.json";
    hash = "sha256-X/D4URD+tHM0MGMOQN0UqgWZdVguuMpkL1m1FCjixkk=";
  };
  "fedramp_r5_high_oscal_compliant" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/fedramp_r5_high_oscal_compliant.json";
    hash = "sha256-OEXJ0+VMqP3bUZUeraSrHWIWtg2iVltQMz5nNkC7gZk=";
  };
  "fedramp_r5_low_oscal_compliant" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/fedramp_r5_low_oscal_compliant.json";
    hash = "sha256-ySkBP5hR1T88TpCvuTUdZeRtcZtMtgrGg5VaCKCRaz8=";
  };
  "fedramp_r5_moderate_oscal_compliant" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/fedramp_r5_moderate_oscal_compliant.json";
    hash = "sha256-gdO9SH1TzmkByzikcL6e1Mn/L3OHmoJzR3Xw4I6i23k=";
  };
  "foci-dss-ecp" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/foci-dss-ecp.json";
    hash = "sha256-pSb+s6yWnxzEkZBVu7hA/EkYwvnfsLQB16T0u0jPgZk=";
  };
  "fsscp" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/fsscp.json";
    hash = "sha256-r4jbx82t0Y4AekmHVUFe+l8kz5z9K+PnX8wklpSvjE4=";
  };
  "gdpr" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/gdpr.json";
    hash = "sha256-HXPOfWtEhpbIfgIhvuAXzdhfeRNPghifL0hETjMeYic=";
  };
  "hipaa" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/hipaa.json";
    hash = "sha256-6sPXvWUMk/B4DYq5aFolqoNabqcwMSRnanwFVZoIVpQ=";
  };
  "mars" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/mars.json";
    hash = "sha256-7QBR3DxO4oxjlo/ANIe+5VuyYznQFRu/T8qcT//5na0=";
  };
  "mvsp" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/mvsp.json";
    hash = "sha256-r+COgiCA6xmuhUkiE3LAUCvq8jCFEpvdUyaQWe2S9yk=";
  };
  "nerc-cip" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nerc-cip.json";
    hash = "sha256-RvzCS0aUo+IJRo0kymj5blVh1cATq5i5pMr48Mtg/9E=";
  };
  "nist-800-82-r3-high" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nist-800-82-r3-high.json";
    hash = "sha256-hdZZee0rQ+TcNHXzr3xK4RELUYcCQDHp42PXF4XOAb0=";
  };
  "nist-800-82-r3-low" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nist-800-82-r3-low.json";
    hash = "sha256-6XKL/iu3t5YCGCRlw0gABlDBcvTgUtMy7yh4cTpGv+Q=";
  };
  "nist-800-82-r3-moderate" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nist-800-82-r3-moderate.json";
    hash = "sha256-por//ccatbpE9Kk4BvU/N/b0NyC7PHpYQAP1MWJuIPI=";
  };
  "nist-privacy-framework" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nist-privacy-framework.json";
    hash = "sha256-FssZQO3JHSz5Tk8ontFGO9MGDUCqZ9aKJFoAN5a8jl0=";
  };
  "nist-csf" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nist-csf.json";
    hash = "sha256-YhtZh7VGKzM6/5sJXSE7FlzK24Xn6Xwt6LwBOe7iPWI=";
  };
  "nist-csf-2" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nist-csf-2.json";
    hash = "sha256-OWGYBZ89GLDDo71Q/0E0T35vE5YaQnZylO/9PJmxjMw=";
  };
  "nist800-171-rev3" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nist800-171-rev3.json";
    hash = "sha256-OVtaxnhp7YW+3V/mGvshkELEZ4pB/jq13yo8n9fvlwA=";
  };
  "nist800-53rev4_reg-v2" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nist800-53rev4_reg-v2.json";
    hash = "sha256-5hYlrnKJcdti1HGcxRLllZcvh0MKNkhknr1bVhJY9u4=";
  };
  "NIST800-53Rev5_regscale-v2" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/NIST800-53Rev5_regscale-v2.json";
    hash = "sha256-+QR9ItjYFA0NjeZ2MIDRIHTeViPUUn3jAvShaKRtwh0=";
  };
  "nydfs" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nydfs.json";
    hash = "sha256-JV3YGamYB7AOoHVGbpluc6Q1dfhKk3w5TV0IvBHmd7w=";
  };
  "omb-m-22-09" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/omb-m-22-09.json";
    hash = "sha256-8Ucm0+H6YoTwqDUYrlR4pSUX8oAdGyrwYavOyEa/ou4=";
  };
  "pci-dss-321" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/pci-dss-321.json";
    hash = "sha256-NcFj0Yesm4yf3rSLwhTLp/ZEHhaQb/Aq3uU8fuH3als=";
  };
  "pci-dss-4" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/pci-dss-4.json";
    hash = "sha256-z2dSArN+3m1DZxk0CGEjBL+WgcNVjbdxXFm/Pe67Z0Q=";
  };
  "regscale-nist-800-82-r3-high" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nist-800-82-r3-high.json";
    hash = "sha256-hdZZee0rQ+TcNHXzr3xK4RELUYcCQDHp42PXF4XOAb0=";
  };
  "sacsf" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/sacsf.json";
    hash = "sha256-0HWRfU524G63M6rOBPnRVnwVRMeGwlKlV7e0JZthfuw=";
  };
  "scf" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/scf.json";
    hash = "sha256-aQsm21Wr8My6tsKDTXNPS/dr3d8/hzz/+eKXT9S8aC0=";
  };
  "soc2" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/soc2.json";
    hash = "sha256-LPfLf9WkFiybp6oxCN8szMTF+JFjkjFn9HLXyFUcsGk=";
  };
  "sox" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/sox.json";
    hash = "sha256-ty9PHewDFkDsB5cXR/OE7VO0+/DKPP18AN1/v0mYhNM=";
  };
  "ssdf" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/ssdf.json";
    hash = "sha256-Wsti9MI1HcMIAHvhRJYLl5jR/h6cE0ZfYCBU4P+NVPM=";
  };
  "stateramp-rev5-moderate" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/stateramp-rev5-moderate.json";
    hash = "sha256-bYk1OXWAV2+9M/b2n7XQRzU4AnYKOm3dDa0G30ziahM=";
  };
  "tic30" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/tic30.json";
    hash = "sha256-ST/nP3ATY44awd+eI+VUeV8abADEDfrK420UTdEDa9w=";
  };
  "NIST-AI-RMF-Playbook-2023" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/NIST-AI-RMF-Playbook-2023.json";
    hash = "sha256-l6By3XpIZoXyJ3GDZmQY7BoAPQAsrKBSr9a2YJgAcZg=";
  };
  "FFIEC_cybersecurity_assessment" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/FFIEC_cybersecurity_assessment.json";
    hash = "sha256-63QHC/+/z7fyuQwpilKPzk+9xzA+zCcDCvuoySZdB44=";
  };
  "nist800-82r2_high_cat" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nist800-82r2_high_cat.json";
    hash = "sha256-zmIGdTbWoRKSHpi8rEdw6peSMfPDTQTkxddPBZDfq34=";
  };
  "nist800-82r2_low_cat" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nist800-82r2_low_cat.json";
    hash = "sha256-snKC64dMAsPc1UxfFy+kJMVeDDU3XLnX+vPpuz2+6DA=";
  };
  "nist800-82r2_mod_cat" = lib.url-source {
    url = "https://regscaleblob.blob.core.windows.net/catalogs/nist800-82r2_mod_cat.json";
    hash = "sha256-f/bdGm3cJWRsVeMHZvLkdVUj6ZUIk257xaY+pi/WkBY=";
  };
}
