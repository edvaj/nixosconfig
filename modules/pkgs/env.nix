{ config, pkgs, ... }:
{ # programming pkgs
  environment.systemPackages = with pkgs; [
    # python
    python3
    # java
    jdk25
    # rust
    rustc
    cargo
    rust-analyzer
    #js
    nodejs
    # github
    gh
  ];
}
