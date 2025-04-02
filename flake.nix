{
  description = "oscalnix";

  inputs = {
    devshell = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:numtide/devshell";
    };

    flake-utils.url = "github:numtide/flake-utils";

    git-hooks = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:cachix/git-hooks.nix";
    };

    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    {
      devshell,
      flake-utils,
      git-hooks,
      nixpkgs,
      self,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = with self.inputs; [
            devshell.overlays.default
          ];
        };
      in
      {

        checks = {
          git-hooks = git-hooks.lib.${system}.run {
            src = self;
            hooks = {
              deadnix = {
                enable = true;
                settings.edit = true;
              };

              nixfmt-rfc-style = {
                enable = true;
                settings.width = 120;
              };

              prettier = {
                enable = true;
                settings.write = true;
              };

              typos = {
                enable = true;
                settings = {
                  binary = false;
                  ignored-words = [ ];
                  locale = "en-au";
                };
              };

              trufflehog-verified = {
                enable = pkgs.stdenv.isLinux;
                name = "Trufflehog Search";
                entry = "${pkgs.trufflehog}/bin/trufflehog git file://. --since-commit HEAD --only-verified --fail";
                language = "system";
                pass_filenames = false;
              };
            };
          };
        };

        devShells.default = pkgs.devshell.mkShell {
          devshell.startup.git-hooks.text = self.checks.${system}.git-hooks.shellHook;

          name = "oscalnix";

          packages = with pkgs; [
            actionlint
            deadnix
            git-cliff
            lix
            nixfmt-rfc-style
            nodePackages.prettier
            statix
            trufflehog
            typos
          ];
        };

        # Formatter option for `nix fmt` - redundant via checks but nice to have
        formatter = pkgs.nixfmt-rfc-style;

      }
    );
}
