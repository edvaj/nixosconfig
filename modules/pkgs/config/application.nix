{ config, pkgs, ... }:
{ # application pkgs
  environment.systemPackages = with pkgs; [
    kitty
    alacritty
    # browsers
    librewolf
    mullvad-browser
    firefox
    ungoogled-chromium
    #
    xfce.thunar
    mullvad-vpn
    keepassxc
    # chat
    signal-desktop
    signal-cli
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
    pokemmo-installer
    # ide 
    vscodium
    processing
  ];
}
