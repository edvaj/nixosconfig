{ config, pkgs, ... }:
{
  services.mullvad-vpn = {
    enable = true;
    settings = {
      auto_connect = true;
      relay_settings = {
        normal = {
	  location = {
	    only = {
	      country = "gb";
	    };
          };
	};
      };
      tunnel_protocol = "wireguard";
      wireguard_constraints = {
        ip_version = "ipv4";
        daita = {
	  enabled = true;
          use_multihop_if_neccesarry = false;
        };
      };
    };
  };
}	
