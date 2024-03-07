{
  description = "Splitfree";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    devenv.url = "github:cachix/devenv";
  };
  outputs = { flake-parts, ...}@inputs: 
  flake-parts.lib.mkFlake { inherit inputs; } {
    systems = [ "x86_64-linux" ];
    imports = [ inputs.devenv.flakeModule ];
    perSystem = { config, pkgs, ... }: {
      devenv.shells.default = {
        languages = {
          python.poetry.enable = true;
          javascript.enable = true;
        };
      };
    };
  };
}
