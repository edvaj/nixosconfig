{ config, pkgs, ... }:
{
  services.pipewire.extraConfig.pipewire."92-eq-eo-ia500" = {
    "context.modules" = [
      {
        name = "libpipewire-module-filter-chain";
        args = {
          "node.description" = "EO-IA500 EQ";
          "media.name" = "EO-IA500 EQ";
          "filter.graph" = {
            nodes = [
              {
                type = "builtin";
                name = "eq";
                label = "param_eq";
                config = {
                  blocksize = 1024;
                  "pregain-dB" = "-4.1";
                  filters = [
                    { type = "bq_peaking";   freq = 36;    q = 0.79; gain = -1.5; }
                    { type = "bq_peaking";   freq = 146;   q = 0.44; gain = -5.3; }
                    { type = "bq_peaking";   freq = 206;   q = 0.45; gain = -2.9; }
                    { type = "bq_lowshelf";  freq = 464;   q = 3.00; gain = -0.1; }
                    { type = "bq_peaking";   freq = 848;   q = 2.16; gain = -1.0; }
                    { type = "bq_peaking";   freq = 850;   q = 1.29; gain = 3.1; }
                    { type = "bq_peaking";   freq = 2005;  q = 4.00; gain = 0.2; }
                    { type = "bq_highshelf"; freq = 2332;  q = 2.66; gain = 0.3; }
                    { type = "bq_peaking";   freq = 3350;  q = 1.29; gain = -2.2; }
                    { type = "bq_peaking";   freq = 4985;  q = 1.21; gain = 4.5; }
                    { type = "bq_peaking";   freq = 8833;  q = 2.89; gain = 1.8; }
                    { type = "bq_peaking";   freq = 10454; q = 1.63; gain = 4.3; }
                    { type = "bq_peaking";   freq = 15491; q = 1.73; gain = -1.7; }
                    { type = "bq_peaking";   freq = 15993; q = 0.40; gain = -6.7; }
                    { type = "bq_peaking";   freq = 15999; q = 0.82; gain = 7.2; }
                  ];
                };
              }
            ];
            links = [];
          };
          "audio.channels" = 2;
          "audio.position" = [ "FL" "FR" ];
          "capture.props" = {
            "node.name" = "effect_input.eq";
            "media.class" = "Audio/Sink";
          };
          "playback.props" = {
            "node.name" = "effect_output.eq";
            "node.passive" = true;
          };
        };
      }
    ];
  };

  services.pipewire.extraConfig.pipewire."90-audiophile" = {
    "context.properties" = {
      "default.clock.rate" = 48000;
      "default.clock.allowed-rates" = [ 44100 48000 88200 96000 ];
      "resample.quality" = 10;
    };
  };

}
