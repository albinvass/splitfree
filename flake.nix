{
  description = "Splitfree";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    devenv.url = "github:cachix/devenv";
    poetry2nix = {
      url = "github:nix-community/poetry2nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { flake-parts, ...}@inputs: 
  flake-parts.lib.mkFlake { inherit inputs; } {
    systems = [ "x86_64-linux" ];
    imports = [ inputs.devenv.flakeModule ];
    perSystem = { config, pkgs, inputs, ... }: {
      devenv.shells.default = {
        packages = with pkgs; [ nodejs_21 ];
      };
      #splitfree.programs =
      #  let
      #    inherit (inputs.poetry2nix.lib.mkPoetry2Nix { inherit pkgs; }) mkPoetryApplication;
      #  in {
      #    backend = mkPoetryApplication {
      #      projectDir = ./backend;
      #      extras = [];
      #    };
      #  };
    };
  };
}
