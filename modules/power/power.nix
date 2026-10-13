{ config, pkgs, ... }:
{
  imports = [
    ./auto-cpufreq.nix
  ];
}
