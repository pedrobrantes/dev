{ pkgs, ... }: {
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
  
  enterShell = ''
    echo '🤖 Ambiente Android (Kotlin/Dart/Flutter) ativo!'
    java --version
    flutter --version
  '';
}
