{ ... }:

{
  languages.r = {
    enable = true;
    radian.enable = true;
  };

  scripts = {
    fmt.exec = "echo 'Configure styler if needed'";
    lint.exec = "echo 'Configure lintr if needed'";
    test.exec = ''Rscript -e 'if (dir.exists("tests")) testthat::test_local() else message("No tests/ directory")' '';
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
