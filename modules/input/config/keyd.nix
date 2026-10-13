{ config, pkgs, ... }:
{
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
