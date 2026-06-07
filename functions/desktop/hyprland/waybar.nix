{ config, lib, pkgs, ... }:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      programs.waybar = {
        enable = true;
        systemd.enable = true;

        settings = {
          # ── Top bar (workspaces, clock, system tray) ──
          mainBar = {
            layer = "top";
            position = "top";
            height = 32;
            spacing = 4;

            modules-left = [
              "hyprland/workspaces"
            ];
            modules-center = [
              "clock"
            ];
            modules-right = [
              "tray"
              "network"
              "cpu"
              "memory"
              "idle_inhibitor"
            ];

            # ── Workspaces (replaces workspaces-indicator-by-open-apps) ──
            "hyprland/workspaces" = {
              disable-scroll = false;
              all-outputs = false;
              format = "{icon}";
              format-icons = {
                "1" = "󰈹";
                "2" = "";
                "3" = "󰒓";
                "4" = "󰍩";
                "5" = "󰿀";
                "6" = "󰌋";
                urgent = "󰃤";
                default = "󰊓";
              };
              persistent-workspaces = {
                "1" = [ ];
                "2" = [ ];
                "3" = [ ];
                "4" = [ ];
                "5" = [ ];
                "6" = [ ];
              };
            };

            # ── Tray (replaces appindicator extension) ──
            tray = {
              spacing = 10;
            };

            # ── Network ──
            network = {
              format-wifi = "  {signalStrength}%";
              format-ethernet = "󰈀";
              format-disconnected = "󰖪";
              tooltip-format = "{ifname}: {ipaddr}";
            };

            # ── CPU (replaces system-monitor extension) ──
            cpu = {
              format = "󰻠 {usage}%";
              tooltip = true;
              on-click = "kitty -e btop";
            };

            # ── Memory (replaces system-monitor extension) ──
            memory = {
              format = "󰍛 {used:0.1f}G";
              tooltip = true;
              on-click = "kitty -e btop";
            };

            # ── Idle inhibitor (replaces caffeine extension) ──
            idle_inhibitor = {
              format = "{icon}";
              format-icons = {
                activated = "󰅶";
                deactivated = "󰾪";
              };
            };

            # ── Clock ──
            clock = {
              format = "{:%H:%M:%S}";
              format-alt = "{:%Y-%m-%d %A}";
              tooltip-format = "<big>{:%Y-%m-%d}</big>\n<tt>{:%A, %B %d}</tt>";
            };

          };

          # ── Left dock (dash-to-dock replacement) ──
          dock = {
            layer = "top";
            position = "left";
            width = 48;
            spacing = 8;

            modules-top = [
              "custom/launcher_firefox"
              "custom/launcher_emacs"
              "custom/launcher_discord"
              "custom/launcher_telegram"
              "custom/launcher_qq"
            ];
            modules-center = [
              "wlr/taskbar"
            ];

            # ── Launcher buttons ──
            "custom/launcher_firefox" = {
              format = "";
              on-click = "firefox";
              tooltip = "Firefox";
            };
            "custom/launcher_emacs" = {
              format = "";
              on-click = "emacs";
              tooltip = "Emacs";
            };
            "custom/launcher_discord" = {
              format = "󰙯";
              on-click = "discord";
              tooltip = "Discord";
            };
            "custom/launcher_telegram" = {
              format = "";
              on-click = "telegram-desktop";
              tooltip = "Telegram";
            };
            "custom/launcher_qq" = {
              format = "󰘕";
              on-click = "qq";
              tooltip = "QQ";
            };

            # ── Running apps taskbar ──
            "wlr/taskbar" = {
              format = "{icon}";
              icon-size = 24;
              tooltip-format = "{title}";
              on-click = "activate";
              on-click-middle = "close";
            };
          };
        };

        # ── Waybar style (CSS) ──
        style = ''
          * {
            font-family: "Sarasa UI SC";
            font-size: 14px;
            font-weight: bold;
            min-height: 0;
            border: none;
            border-radius: 0;
          }

          /* ── Top & left panels ── */
          window#waybar {
            background: rgba(251, 247, 240, 0.85);
            color: #3a3a3a;
          }

          window#waybar.left {
            background: rgba(251, 247, 240, 0.92);
          }

          /* ── Workspaces (top bar) ── */
          #workspaces button {
            padding: 0 6px;
            background: transparent;
            color: #7a7a7a;
          }

          #workspaces button.active {
            color: #3a3a3a;
            border-bottom: 2px solid #c4a77d;
          }

          #workspaces button:hover {
            background: rgba(196, 167, 125, 0.2);
          }

          /* ── Top bar modules ── */
          #clock {
            padding: 0 12px;
          }

          #tray {
            padding: 0 6px;
          }

          #cpu, #memory, #network, #idle_inhibitor {
            padding: 0 8px;
          }

          /* ── Dock (left panel) ── */
          #custom-launcher_firefox,
          #custom-launcher_emacs,
          #custom-launcher_discord,
          #custom-launcher_telegram,
          #custom-launcher_qq {
            font-size: 22px;
            padding: 6px 0;
            margin: 2px 8px;
            border-radius: 8px;
          }

          #custom-launcher_firefox:hover,
          #custom-launcher_emacs:hover,
          #custom-launcher_discord:hover,
          #custom-launcher_telegram:hover,
          #custom-launcher_qq:hover {
            background: rgba(196, 167, 125, 0.2);
          }

          #taskbar button {
            padding: 4px;
            margin: 2px 6px;
            border-radius: 8px;
          }

          #taskbar button.active {
            background: rgba(196, 167, 125, 0.3);
          }

          #taskbar button:hover {
            background: rgba(196, 167, 125, 0.15);
          }
        '';

      };

    }
  );

}
