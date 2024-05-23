{ pkgs }: {
  splitfree-backend = pkgs.buildGoModule {
    name = "splitfree-backend";
    src = ./.;
    vendorHash = "sha256-8iuhmk1HrBzObMCuIWmczDMC3IKfHZTkCIYJ3Mrprh8=";
    subPackages = [ "./splitfree-backend" ];
  };
}
