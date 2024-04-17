{ pkgs, ... }:
{
  packages = with pkgs; [
    atlas
    hurl
  ];
  services.postgres = {
    enable = true;
    listen_addresses = "127.0.0.1";
    initialDatabases = [{ name = "splitfree"; }];
    initialScript = ''
      CREATE USER splitfree WITH PASSWORD 'splitfree';
      GRANT ALL PRIVILEGES ON DATABASE splitfree TO splitfree;
      \c splitfree;
      GRANT ALL ON SCHEMA public TO splitfree;
    '';
  };
  languages = {
    go.enable = true;
  };
  cachix.enable = false;
}
