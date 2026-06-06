{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      services.hypridle = {
        enable = true;

        settings = {
          general = {
            lock_cmd = "pidof hyprlock || hyprlock";
            before_sleep_cmd = "loginctl lock-session";
            after_sleep_cmd = "hyprctl dispatch dpms on";
          };

          listener = [
            {
              # Dim screen after 5 minutes
              timeout = 300;
              on-timeout = "brightnessctl -s set 10%";
              on-resume = "brightnessctl -r";
            }
            {
              # Lock after 10 minutes
              timeout = 600;
              on-timeout = "loginctl lock-session";
            }
            {
              # Turn off screen after 15 minutes
              timeout = 900;
              on-timeout = "hyprctl dispatch dpms off";
              on-resume = "hyprctl dispatch dpms on";
            }
          ];
        };
      };

    }
  );

}
