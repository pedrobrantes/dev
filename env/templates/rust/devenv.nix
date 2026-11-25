{ pkgs, ... }:

{
  languages.rust.enable = true;

  packages = [
    pkgs.cargo-edit
    pkgs.cargo-watch
  ];

  scripts = {
    fmt.exec = "cargo fmt";
    lint.exec = "cargo clippy --all-targets -- -D warnings";
    test.exec = "cargo test";
    check.exec = "fmt && lint && test";
  };

  git-hooks.excludes = [ ".devenv" ];
  git-hooks.hooks = {
    check-added-large-files.enable = true;
    detect-private-key.enable = true;
    end-of-file-fixer.enable = true;
    trim-trailing-whitespace.enable = true;
    rustfmt.enable = true;
    clippy.enable = true;
  };

  enterShell = ''
    rustc --version
    cargo --version
  '';
}
