{ config, pkgs, ... }:
{ # utility pkgs
  environment.systemPackages = with pkgs; [
    home-manager
    # vim things
    vim
    # clip
    wl-clipboard
    #
    usbutils
    pandoc
    imagemagick
    zip
    micro
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
    ffmpeg
    sox
    poppler-utils
    # printer
    hplipWithPlugin
    # flash
    caligula
    # fetch
    fastfetch
    microfetch
    # gtk
    gtk3
    hyprshot # ss
    figlet
    toilet
    # iphone
    libimobiledevice
    ifuse
  ];
}
