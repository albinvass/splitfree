{ pkgs }: {
  splitfree-backend = pkgs.buildGoModule {
    name = "splitfree-backend";
    src = ./.;
    vendorHash = "sha256-aFNwsqNdV2J8dbBFoWMS17mciVy9di6EBj5PdXS3b1k=";
    subPackages = [ "./cmd/splitfree-backend" ];
  };
}
