{ config, pkgs, ... }:
{
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        pulse.enable = true;

        extraConfig.pipewire."91-eq" = {
            "context.modules" = [
                {
                    name = "libpipewire-module-filter-chain";
                    args = {
                        "node.description" = "Airpods EQ";
                        "media.name" = "Airpods EQ";
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
    };
}
