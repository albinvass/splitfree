{ pkgs, ... }:
{
  packages = with pkgs; [
    atlas
  ];
  services.postgres.enable = true;
  languages = {
    go.enable = true;
  };
  cachix.enable = false;
}
