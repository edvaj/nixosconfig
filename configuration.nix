# configuration.nix
{ inputs, config, pkgs, ... }:
{
  imports = [ # include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/input/input.nix
      ./modules/pkgs/pkgs.nix
      ./modules/power/power.nix
  ];

  # optimisation
  nix.settings.auto-optimise-store = true;

  # autocleanup
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  # bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.luks.devices."luks-38cba8f7-59cd-4158-90fb-ffe32058a5c2".device = "/dev/disk/by-uuid/38cba8f7-59cd-4158-90fb-ffe32058a5c2";
  networking.hostName = "dragonfly"; # define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # enable network manager
  networking.networkmanager.enable = true;

  # enable hyprland
  programs.hyprland.enable = true;

  # enable greetd
  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = {
        command = "${pkgs.hyprland}/bin/Hyprland";
      	user = "goat";
      };
      default_session = initial_session;
    };
  };

  # desktop portals
  xdg.portal.enable = true;

  # time zone
  time.timeZone = "Europe/London";

  # internationalisation, locale
  i18n.defaultLocale = "en_GB.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };

  # x11 keymap
  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };

  # console keymap
  console.keyMap = "uk";

  # user account
  users.users.goat = {
    isNormalUser = true;
    description = "goat";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # autologin in tty
  services.getty.autologinUser = "goat";

  # allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # audio
  hardware.pulseaudio.enable = true;
  services.pipewire.enable = false;

  # graphics drivers
  hardware.opengl.enable = true;

  # services
  services.mullvad-vpn.enable = true;
  # usb
  services.devmon.enable = true;
  services.gvfs.enable = true; 
  services.udisks2.enable = true;
  # bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;
  # flatpak
  services.flatpak.enable = true;
 
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

}
