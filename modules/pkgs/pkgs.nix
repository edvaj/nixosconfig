{ config, pkgs, ... }:
{ 
  imports = [
    ./config/application.nix
    ./config/env.nix
    ./config/fonts.nix
    ./config/theme.nix
    ./config/ui.nix
    ./config/utility.nix
  ];
}
