{ config, pkgs, ... }:
{ # ui pkgs
  environment.systemPackages = with pkgs; [
    hyprland
    waybar
    rofi-wayland
    dunst
    libnotify
    swww
  ];
}
