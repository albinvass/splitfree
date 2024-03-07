{
  description = "Splitfree";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    dream2nix.url = "github:nix-community/dream2nix";

    poetry2nix = {
      url = "github:nix-community/poetry2nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { nixpkgs, flake-utils, poetry2nix, ... }: 
  flake-utils.lib.eachDefaultSystem(system:
  let
    pkgs = import nixpkgs { inherit system; };
    inherit (poetry2nix.lib.mkPoetry2Nix { inherit pkgs; }) mkPoetryApplication;
  in {
    packages = {
      splitfree-backend = mkPoetryApplication {
        projectDir = ./backend;
        extras = [];
      };
      splitfree-frontend = pkgs.mkYarnPackage {
        name = "splitfree-frontend";
        src = ./frontend;
        packageJSON = ./frontend/package.json;
        yarnLock = ./frontend/yarn.lock;
        yarnNix = ./frontend/yarn.nix;
      };
    };
  });
}
