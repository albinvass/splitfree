{ pkgs, ... }:
{
  packages = with pkgs; [
    atlas
    hurl
    golangci-lint
  ];

  processes = {
    splitfree-backend = {
      exec = "go run ./splitfree-backend";
      process-compose = {
        environment = [
          ''AUTH0_CALLBACK_URL=''${AUTH0_CALLBACK_URL}''
          ''AUTH0_DOMAIN=''${AUTH0_DOMAIN}''
          ''AUTH0_CLIENT_ID=''${AUTH0_CLIENT_ID}''
          ''AUTH0_CLIENT_SECRET=''${AUTH0_CLIENT_SECRET}''
          "SPLITFREE_CANONICAL_URL=http://localhost:3000"
        ];
        depends_on = {
          postgres = { condition = "process_healthy"; };
        };
      };
    };
  };

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
