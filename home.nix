{ config, pkgs, ... }:

{
  home.username = "lucas";
  home.homeDirectory = "/home/lucas";

  programs.git = {
    enable = true;
    userName = "Lucas de Sousa Rosa";
    userEmail = "roses.lucas404@gmail.com";
  };

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
