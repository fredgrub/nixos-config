{ inputs, pkgs, username, ... }:

{
  services.displayManager.autoLogin = {
    enable = true;
    user = "${username}";
  };

  services.libinput = {
    enable = true;
  };

  programs.hyprland.enable = true;
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
  };
}
