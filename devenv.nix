{ pkgs, ... }:
{
  packages = with pkgs; [
    atlas
    hurl
  ];
  services.postgres.enable = true;
  languages = {
    go.enable = true;
  };
  cachix.enable = false;
}
