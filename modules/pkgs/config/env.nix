{ config, pkgs, ... }:
{ # programming pkgs
  environment.systemPackages = with pkgs; [
    python3
  ];
}
