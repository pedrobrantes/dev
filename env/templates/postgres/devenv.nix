{ pkgs, ... }:

{
  packages = [ pkgs.coreutils ];

  services.postgres = {
    enable = true;
    extensions = extensions: [ extensions.postgis ];

    initialDatabases = [{ name = "mydb"; }];

    initialScript = ''
      CREATE EXTENSION IF NOT EXISTS postgis;
    '';
  };

  scripts = {
    fmt.exec = "echo 'No formatter configured'";
    lint.exec = "echo 'No linter configured'";
    test.exec = "psql -d mydb -c 'SELECT version(), PostGIS_Version();'";
    check.exec = "test";
  };

  git-hooks.excludes = [ ".devenv" ];
  git-hooks.hooks = {
    check-added-large-files.enable = true;
    detect-private-key.enable = true;
    end-of-file-fixer.enable = true;
    trim-trailing-whitespace.enable = true;
  };
}
