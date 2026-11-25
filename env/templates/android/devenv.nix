{ pkgs, ... }:

{
  languages.java.enable = true;
  languages.kotlin.enable = true;
  languages.dart.enable = true;

  packages = [
    pkgs.flutter
    pkgs.android-tools
    pkgs.gradle
    pkgs.google-java-format
  ];

  env.JAVA_HOME = "${pkgs.jdk.home}";

  scripts = {
    fmt.exec = "dart format .";
    lint.exec = "flutter analyze";
    test.exec = "flutter test";
    check.exec = "fmt && lint && test";
  };

  git-hooks.excludes = [ ".devenv" ];
  git-hooks.hooks = {
    check-added-large-files.enable = true;
    detect-private-key.enable = true;
    end-of-file-fixer.enable = true;
    trim-trailing-whitespace.enable = true;
  };

  enterShell = ''
    echo '🤖 Ambiente Android (Kotlin/Dart/Flutter) ativo!'
    java --version
    flutter --version
  '';
}
