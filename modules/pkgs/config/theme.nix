{ config, pkgs, ... }:
{ # theme + icon  pkgs
  environment.systemPackages = with pkgs; [
    papirus-icon-theme
    papirus-folders
    adwaita-icon-theme
    gruvbox-gtk-theme
  ];
}
