{ pkgs, ... }:

{
  languages.javascript = {
    enable = true;
    npm.enable = true;
  };

  packages = [
    pkgs.nodejs
  ];

  scripts = {
    fmt.exec = "npm run format --if-present";
    lint.exec = "npm run lint --if-present";
    test.exec = "npm test --if-present";
    check.exec = "fmt && lint && test";
  };

  git-hooks.excludes = [ ".devenv" ];
  git-hooks.hooks = {
    check-added-large-files.enable = true;
    detect-private-key.enable = true;
    end-of-file-fixer.enable = true;
    trim-trailing-whitespace.enable = true;
  };

  enterShell = ''
    node --version
    npm --version
  '';
}
