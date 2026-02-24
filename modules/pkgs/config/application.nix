{ config, pkgs, ... }:
{ # application pkgs
    environment.systemPackages = with pkgs; [
        kitty
        alacritty
        # browsers
        librewolf
        mullvad-browser
        firefox
        brave
        ungoogled-chromium
        #
        libqalculate
        thunar
        mullvad-vpn
        keepassxc
        # razer
        polychromatic
        openrazer-daemon
        # chat
        signal-desktop
        discord
        # music
        strawberry
        spotify
        cider
        # ai
        claude-code
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
        steam
        prismlauncher
        pokemmo-installer
        # ide 
        vscodium
        processing
        jetbrains.idea-oss
        # cam
        droidcam
    ];
}
