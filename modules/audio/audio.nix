{ config, pkgs, ... }:
{
  # EO-IA500 EQ
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
            "node.name" = "effect_input.eq_eo_ia500";
            "media.class" = "Audio/Sink";
          };
          "playback.props" = {
            "node.name" = "effect_output.eq_eo_ia500";
            "node.passive" = true;
          };
        };
      }
    ];
  };

  # AirPods Pro EQ
  services.pipewire.extraConfig.pipewire."93-eq-airpods" = {
    "context.modules" = [
      {
        name = "libpipewire-module-filter-chain";
        args = {
          "node.description" = "AirPods EQ";
          "media.name" = "AirPods EQ";
          "filter.graph" = {
            nodes = [
              {
                type = "builtin";
                name = "eq";
                label = "param_eq";
                config = {
                  blocksize = 1024;
                  "pregain-dB" = "-10.4";
                  filters = [
                    { type = "bq_peaking";   freq = 20;    q = 0.40; gain = 2.1; }
                    { type = "bq_peaking";   freq = 34;    q = 0.40; gain = 1.0; }
                    { type = "bq_peaking";   freq = 71;    q = 0.91; gain = 2.7; }
                    { type = "bq_peaking";   freq = 116;   q = 2.39; gain = 0.2; }
                    { type = "bq_peaking";   freq = 220;   q = 1.17; gain = -0.7; }
                    { type = "bq_peaking";   freq = 423;   q = 1.91; gain = -1.8; }
                    { type = "bq_lowshelf";  freq = 895;   q = 3.00; gain = -0.2; }
                    { type = "bq_peaking";   freq = 1394;  q = 4.00; gain = -0.4; }
                    { type = "bq_peaking";   freq = 1834;  q = 3.99; gain = 1.3; }
                    { type = "bq_peaking";   freq = 4388;  q = 0.40; gain = 6.5; }
                    { type = "bq_peaking";   freq = 6714;  q = 2.41; gain = -4.3; }
                    { type = "bq_peaking";   freq = 9960;  q = 1.50; gain = 6.0; }
                    { type = "bq_highshelf"; freq = 15277; q = 2.60; gain = 1.8; }
                    { type = "bq_peaking";   freq = 15999; q = 1.01; gain = 7.6; }
                    { type = "bq_peaking";   freq = 15999; q = 2.69; gain = -5.3; }
                  ];
                };
              }
            ];
            links = [];
          };
          "audio.channels" = 2;
          "audio.position" = [ "FL" "FR" ];
          "capture.props" = {
            "node.name" = "effect_input.eq_airpods";
            "media.class" = "Audio/Sink";
          };
          "playback.props" = {
            "node.name" = "effect_output.eq_airpods";
            "node.passive" = true;
          };
        };
      }
    ];
  };

  # Audio quality
  services.pipewire.extraConfig.pipewire."90-audiophile" = {
    "context.properties" = {
      "default.clock.rate" = 48000;
      "default.clock.allowed-rates" = [ 44100 48000 88200 96000 ];
      "resample.quality" = 10;
    };
  };
}
