{ config, pkgs, ... }:
{ # swap page up and page down on hp laptop kb
  services.keyd = {
    enable = true;
    keyboards.default = {
      ids = [ "*" ];
      settings.main = {
        pageup = "up";
        pagedown = "down";
        up = "pageup";
        down = "pagedown";
      };
    };
  };
}
