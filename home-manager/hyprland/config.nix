{ ... }:

{
  wayland.windowManager.hyprland = {
    settings = {
      "$mod" = "SUPER";
      "$terminal" = "kitty";

      bind = [
        "$mod, Return, exec, $terminal"
        "$mod, Q, killactive"
        "$mod, F, fullscreen"
        "$mod, Space, togglefloating"
        "$mod, S, pseudo"
      ];

      input = {
        kb_layout = "us,br";
        kb_variant = "intl,";
        kb_options = "grp:win_space_toggle";
        touchpad = {
          natural_scroll = true;
        };
      };
    };
  };
}
