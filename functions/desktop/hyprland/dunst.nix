{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      services.dunst = {
        enable = true;

        settings = {
          global = {
            monitor = 0;
            follow = "mouse";
            width = 400;
            height = 200;
            origin = "top-right";
            offset = "10x50";
            scale = 0;
            notification_limit = 5;

            progress_bar = true;
            progress_bar_height = 3;
            progress_bar_frame_width = 0;
            progress_bar_min_width = 150;
            progress_bar_max_width = 300;

            indicate_hidden = "yes";
            transparency = 0;
            separator_height = 2;
            padding = 12;
            horizontal_padding = 12;
            text_icon_padding = 0;
            frame_width = 2;
            frame_color = "#c4a77d";
            separator_color = "frame";

            sort = "yes";
            idle_threshold = 120;

            font = "Sarasa UI SC 14";
            line_height = 0;
            markup = "full";
            format = "<b>%s</b>\n%b";
            alignment = "left";
            vertical_alignment = "center";
            show_age_threshold = 60;
            ellipsize = "middle";
            ignore_newline = "no";
            stack_duplicates = true;
            hide_duplicate_count = false;
            show_indicators = "yes";

            icon_position = "left";
            min_icon_size = 0;
            max_icon_size = 48;

            sticky_history = "yes";
            history_length = 20;

            browser = "xdg-open";
            always_run_script = true;

            title = "Dunst";
            class = "Dunst";

            corner_radius = 8;

            # Colors — matching light theme
            background = "#fbf7f0";
            foreground = "#3a3a3a";
          };

          urgency_low = {
            background = "#fbf7f0";
            foreground = "#7a7a7a";
            timeout = 5;
          };

          urgency_normal = {
            background = "#fbf7f0";
            foreground = "#3a3a3a";
            timeout = 7;
          };

          urgency_critical = {
            background = "#fbf7f0";
            foreground = "#3a3a3a";
            frame_color = "#d00000";
            timeout = 0;
          };
        };
      };

    }
  );

}
