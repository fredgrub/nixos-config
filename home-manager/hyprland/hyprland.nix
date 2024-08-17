{ inputs, pkgs, ... }:

{
  home.packages = with pkgs; [
    waybar
    swaybg
    swaylock
    wl-clipboard
    slurp
    wf-recorder
    mako
  ]; 
  systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.enable = true;
  };
}
