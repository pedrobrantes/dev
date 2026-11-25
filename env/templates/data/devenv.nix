{ pkgs, ... }:

{
  languages.python = {
    enable = true;
    uv.enable = true;
  };

  packages = [
    pkgs.duckdb
    pkgs.ruff
    pkgs.sqlfluff
    pkgs.visidata
  ];

  scripts = {
    fmt.exec = ''ruff format . && (shopt -s globstar nullglob; files=(**/*.sql); if [ ''${#files[@]} -gt 0 ]; then sqlfluff fix --dialect bigquery "''${files[@]}"; fi)'';
    lint.exec = ''ruff check . && (shopt -s globstar nullglob; files=(**/*.sql); if [ ''${#files[@]} -gt 0 ]; then sqlfluff lint --dialect bigquery "''${files[@]}"; fi)'';
    test.exec = "uv run pytest";
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
    duckdb --version
    sqlfluff --version
  '';
}
