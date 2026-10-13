{ config, pkgs, ... }:
{ # application pkgs
    environment.systemPackages = with pkgs; [
        kitty
        alacritty
        ghostty
        # browsers
        librewolf
        mullvad-browser
        firefox
        brave
        ungoogled-chromium
        #
        obs-studio
        lukesmithxyz-bible-kjv
        libqalculate
        thunar
        keepassxc
        # razer
        polychromatic
        openrazer-daemon
        # chat
        signal-desktop
        signal-cli
        discord
        # music
        strawberry
        spotify
        lmms
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
        supertuxkart
        ani-cli
        termdown
        lukesmithxyz-bible-kjv
        transmission_4-gtk
        localsend
        # rss
        newsboat
        # file
        libreoffice
        # games
        steam
        prismlauncher
        pokemmo-installer
        zeroad
        chess-tui
        # ide 
        vscodium
        processing
        # cam
        droidcam
        #
        unstable.visual-paradigm-ce
    ];
}
