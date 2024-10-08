{
  config,
  pkgs,
  ...
}: {
  imports = [
    (import ./hyprland)
  ];

  home.username = "lucas";
  home.homeDirectory = "/home/lucas";

  programs.google-chrome = {
    enable = true;

    commandLineArgs = [
      "--ozone-platform-hint=auto"
      "--ozone-platform=wayland"
    ];
  };

  programs.kitty = {
    enable = true;
  };

  programs.git = {
    enable = true;
    userName = "Lucas de Sousa Rosa";
    userEmail = "roses.lucas404@gmail.com";
  };

  programs.bash.enable = true;

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
