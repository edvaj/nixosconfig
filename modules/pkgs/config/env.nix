{ config, pkgs, ... }:
{ # programming pkgs
  environment.systemPackages = with pkgs; [
    # python
    python3
    # java
    jdk25
  ];
}
