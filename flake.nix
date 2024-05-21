{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = { flake-parts, ... }@inputs: 
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" ];
      perSystem = { config, self', inputs', pkgs, system, ...}:
      {
        packages = pkgs.callPackage ./packages.nix {};
        nixosModules = {
          splitfree-backend = { ... }: {
            systemd.services.splitfree-backend = {
              wantedBy = [ "multi-user.target" ];
              serviceConfig = {
                DynamicUser = true;
                ExecStart = [
                  "${self'.packages.splitfree-backend}/bin/splitfree-backend"
                ];
              };
            };
          };
        };
      };
    };
}
