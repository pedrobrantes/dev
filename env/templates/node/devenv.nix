{ pkgs, ... }:

{
  languages.javascript = {
    enable = true;
    npm.enable = true;
  };

  packages = [
    pkgs.nodejs
  ];

  enterShell = ''
    node --version
    npm --version
  '';
}
