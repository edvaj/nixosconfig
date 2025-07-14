{ config, pkgs, ... }:
{ # utility pkgs
  environment.systemPackages = with pkgs; [
    home-manager
    vim
    neovim
    tree
    lf
    htop
    btop
    wev
    brightnessctl
    pavucontrol
    networkmanagerapplet
    powertop
    killall
    wlsunset
    pipes-rs
    libinput
    cmatrix
    spotdl
    unzip
    git
    icloudpd
    # printer
    hplipWithPlugin
    # flash
    caligula
    # fetch
    neofetch
    microfetch
  ];
}
