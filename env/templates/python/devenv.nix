{ pkgs, ... }:

{
  languages.python = {
    enable = true;
    uv.enable = true;
  };

  packages = [
    pkgs.zlib
    pkgs.stdenv.cc.cc.lib
  ];

  enterShell = ''
    python --version
    uv --version
  '';
}
