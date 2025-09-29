{ config, pkgs, ... }:
{ # application pkgs
  environment.systemPackages = with pkgs; [
    kitty
    alacritty
    # browsers
    librewolf
    mullvad-browser
    firefox
    #
    xfce.thunar
    mullvad-vpn
    keepassxc
    # chat
    signal-desktop
    discord
    # music
    strawberry
    spotify
    #
    zathura
    mpv
    imv
    octave
    anki
    ollama
    gimp
    pinta
    cheese
    superTuxKart
    ani-cli
    termdown
    lukesmithxyz-bible-kjv
    transmission_4-gtk
    # rss
    newsboat
    # file
    libreoffice
    # games
    prismlauncher
    # ide 
    vscodium
    processing
  ];
}
