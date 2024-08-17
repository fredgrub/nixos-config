{
  config,
  pkgs,
  ...
}: {
  home.username = "lucas";
  home.homeDirectory = "/home/lucas";

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      "$terminal" = "kitty";
      bind = [
        "$mod, Q, exec, $terminal"
        "$mod, C, killactive"
      ];
      input = {
        kb_layout = "us,br";
        kb_variant = "intl,";
        kb_options = "grp:win_space_toggle";
      };
    };
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
