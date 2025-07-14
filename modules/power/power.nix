{ config, pkgs, ... }:
{
  imports = [
    ./config/auto-cpufreq.nix
  ];
}
