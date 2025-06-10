{ pkgs, ... }:
pkgs.writeShellScriptBin "update-references" ''
  # Exit on errors
  set -e

  ${pkgs.python3Minimal}/bin/python3 ${./main.py} "$@"
''
