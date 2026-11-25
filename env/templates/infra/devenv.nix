{ pkgs, ... }:

{
  packages = [
    pkgs.opentofu
    pkgs.tflint
    pkgs.shellcheck
    pkgs.hadolint
    pkgs.sops
  ];

  scripts = {
    fmt.exec = "tofu fmt -recursive";
    lint.exec = ''
      tofu fmt -check -recursive
      shopt -s globstar nullglob
      sh_files=(**/*.sh)
      if [ ''${#sh_files[@]} -gt 0 ]; then shellcheck "''${sh_files[@]}"; fi
      docker_files=(**/Dockerfile* Dockerfile*)
      if [ ''${#docker_files[@]} -gt 0 ]; then hadolint "''${docker_files[@]}"; fi
    '';
    test.exec = ''if ls *.tf >/dev/null 2>&1; then tofu init -backend=false -input=false && tofu validate; else echo "No .tf files in root"; fi'';
    check.exec = "lint && test";
  };

  git-hooks.excludes = [ ".devenv" ];
  git-hooks.hooks = {
    check-added-large-files.enable = true;
    detect-private-key.enable = true;
    end-of-file-fixer.enable = true;
    trim-trailing-whitespace.enable = true;
    shellcheck.enable = true;
    hadolint.enable = true;
  };

  enterShell = ''
    tofu version
    sops --version
  '';
}
