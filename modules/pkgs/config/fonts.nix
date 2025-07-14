{ config, pkgs, ... }:
{ # font pkgs
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    inter
  ];
}
