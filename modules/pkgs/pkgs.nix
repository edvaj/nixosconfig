{ config, pkgs, ... }:
{ 
  imports = [
    ./application.nix
    ./env.nix
    ./fonts.nix
    ./theme.nix
    ./ui.nix
    ./utility.nix
    ./unstableOverlay.nix
  ];
}
