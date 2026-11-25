{ pkgs, ... }:

{
  languages.typescript.enable = true;
  languages.javascript = {
    enable = true;
    npm.enable = true;
  };

  packages = [
    pkgs.nodejs
    pkgs.bun
    pkgs.biome
  ];

  scripts = {
    fmt.exec = "biome format --write .";
    lint.exec = "biome check . && (if [ -f tsconfig.json ]; then npx tsc --noEmit; fi)";
    test.exec = "npm test --if-present";
    check.exec = "fmt && lint && test";
  };

  git-hooks.excludes = [ ".devenv" ];
  git-hooks.hooks = {
    check-added-large-files.enable = true;
    detect-private-key.enable = true;
    end-of-file-fixer.enable = true;
    trim-trailing-whitespace.enable = true;
    biome.enable = true;
  };

  enterShell = ''
    node --version
    bun --version
    biome --version
  '';
}
