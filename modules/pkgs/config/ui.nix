{ config, pkgs, ... }:
{ # ui pkgs
  environment.systemPackages = with pkgs; [
    hyprland
    waybar
    rofi
    dunst
    libnotify
    swww
  ];
}
