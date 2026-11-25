{ pkgs, ... }:

{
  languages.c.enable = true;

  packages = [ pkgs.cmake pkgs.ceedling ];

  scripts = {
    fmt.exec = "echo 'Configure clang-format for this project if needed'";
    lint.exec = "echo 'clang-tidy runs via git-hooks'";
    test.exec = "ceedling test:all";
    check.exec = "test";
  };

  enterShell = ''
    cmake --version
  '';

  git-hooks.excludes = [ ".devenv" ];
  git-hooks.hooks = {
    check-added-large-files.enable = true;
    detect-private-key.enable = true;
    end-of-file-fixer.enable = true;
    trim-trailing-whitespace.enable = true;
    clang-tidy.enable = true;
  };
}
