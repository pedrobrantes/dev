{ pkgs, ... }:

{
  packages = [
    pkgs.shellcheck
  ];

  scripts = {
    fmt.exec = "echo 'No formatter configured for base template'";
    lint.exec = ''shopt -s globstar nullglob; files=(**/*.sh); if [ ''${#files[@]} -gt 0 ]; then shellcheck "''${files[@]}"; else echo "No .sh files to lint"; fi'';
    test.exec = "echo 'Add project-specific tests in devenv.nix'";
    check.exec = "lint && test";
  };

  git-hooks.excludes = [ ".devenv" ];
  git-hooks.hooks = {
    check-added-large-files.enable = true;
    detect-private-key.enable = true;
    end-of-file-fixer.enable = true;
    trim-trailing-whitespace.enable = true;
    shellcheck.enable = true;
  };
}
