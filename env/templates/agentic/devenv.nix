{ pkgs, ... }:

{
  languages.python = {
    enable = true;
    uv.enable = true;
  };

  packages = [
    pkgs.ruff
    pkgs.jq
  ];

  scripts = {
    fmt.exec = "ruff format .";
    lint.exec = "ruff check .";
    test.exec = "uv run pytest -m 'not live'";
    eval-smoke.exec = "uv run pytest evals/ -m live";
    check.exec = "fmt && lint && test";
  };

  git-hooks.excludes = [ ".devenv" ];
  git-hooks.hooks = {
    check-added-large-files.enable = true;
    detect-private-key.enable = true;
    end-of-file-fixer.enable = true;
    trim-trailing-whitespace.enable = true;
    ruff.enable = true;
    ruff-format.enable = true;
  };

  enterShell = ''
    python --version
    uv --version
  '';
}
