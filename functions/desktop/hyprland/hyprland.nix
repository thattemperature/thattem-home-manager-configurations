{ config, lib, pkgs, ... }:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      # ── Packages needed by the Hyprland desktop ──
      home.packages = with pkgs; [
        kitty          # terminal emulator
        grimblast     # screenshot tool
        brightnessctl # screen brightness control
        btop          # system monitor (opened from waybar)

        # Polkit agent for GUI auth dialogs
        hyprpolkitagent

        # Screen locker
        hyprlock

        # Clipboard manager
        wl-clipboard
      ];

      wayland.windowManager.hyprland = {
        enable = true;
        systemd.enable = true;

        settings = {

          # ── Modifier ──
          "$mod" = "SUPER";

          # ── Monitor ──
          monitor = [ ",preferred,auto,1" ];

          # ── Startup ──
          exec-once = [
            "waybar"
            "hyprpaper"
            "dunst"
            "hypridle"
            "hyprpolkitagent"
            "ibus-daemon -drxR"
          ];

          # ── Environment ──
          env = [
            "XCURSOR_SIZE,32"
            "XCURSOR_THEME,Future-cursors"
            "QT_QPA_PLATFORM,wayland"
            "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
            "GDK_BACKEND,wayland,x11"
          ];

          # ── Input ──
          input = {
            kb_layout = "us";
            follow_mouse = 1;
            touchpad.natural_scroll = true;
            sensitivity = 0;
          };

          # ── General ──
          general = {
            gaps_in = 5;
            gaps_out = 10;
            border_size = 2;
            "col.active_border" = "rgb(c4a77d)";
            "col.inactive_border" = "rgb(595959)";
            layout = "dwindle";
          };

          # ── Decoration (replaces blur-my-shell + transparency) ──
          decoration = {
            rounding = 8;
            blur = {
              enabled = true;
              size = 8;
              passes = 3;
              new_optimizations = true;
            };
            dim_inactive = true;
            dim_strength = 0.2;
          };

          # ── Animations (replaces burn-my-windows + compiz effects) ──
          animations = {
            enabled = true;
            bezier = [
              "wind, 0.05, 0.9, 0.1, 1.05"
              "winIn, 0.1, 1.1, 0.1, 1.1"
              "winOut, 0.3, -0.3, 0, 1"
              "linear, 0, 0, 1, 1"
            ];
            animation = [
              # Windows open/close
              "windows, 1, 6, wind, slide"
              "windowsIn, 1, 6, winIn, slide"
              "windowsOut, 1, 5, winOut, slide"
              # Window move (replaces compiz-windows-effect wobble)
              "windowsMove, 1, 6, wind, slide"
              # Fade in/out
              "fade, 1, 4, default"
              "fadeIn, 1, 4, default"
              "fadeOut, 1, 4, default"
              # Workspace switch
              "workspaces, 1, 5, wind, slide"
              # Border color transitions
              "border, 1, 6, default"
              "borderangle, 1, 100, linear, loop"
            ];
          };

          # ── Misc ──
          misc = {
            disable_hyprland_logo = true;
            disable_splash_rendering = true;
            force_default_wallpaper = 0;
            vfr = true;
          };

          # ── Keybindings ──
          bind =
            [
              # Terminal
              "$mod, Return, exec, kitty"
              # Launcher (replaces GNOME overview / show-apps)
              "$mod, D, exec, rofi -show drun"
              # Window switcher (replaces coverflow-alt-tab)
              "$mod, Tab, exec, rofi -show window"
              # Close window
              "$mod, Q, killactive"
              # Toggle floating
              "$mod, V, togglefloating"
              # Toggle fullscreen
              "$mod, F, fullscreen, 1"
              # Pseudo tile
              "$mod, P, pseudo"
              # Toggle split
              "$mod, J, togglesplit"
              # Exit Hyprland
              "$mod, M, exit"
              # Screenshot
              ", Print, exec, grimblast copy area"
              "$mod SHIFT, S, exec, grimblast copy area"
              # Dropdown terminal (replaces ddterm) — toggle special workspace
              "$mod, grave, togglespecialworkspace"
            ]
            ++ (
              # Workspaces: $mod + 1-6 = switch, $mod + Shift + 1-6 = move
              builtins.concatLists (builtins.genList (i:
                let ws = i + 1;
                in [
                  "$mod, code:1${toString (i + 9)}, workspace, ${toString ws}"
                  "$mod SHIFT, code:1${toString (i + 9)}, movetoworkspace, ${toString ws}"
                ]
              ) 6)
            );

          bindm = [
            # Mouse bindings
            "$mod, mouse:272, movewindow"
            "$mod, mouse:273, resizewindow"
          ];

          # ── Window Rules (replaces auto-move-windows extension) ──
          windowrulev2 = [
            # WS1: Browsers
            "workspace 1, class:^(firefox)$"
            "workspace 1, class:^(chromium-browser)$"
            "workspace 1, class:^(epiphany)$"

            # WS2: Emacs
            "workspace 2, class:^(emacs)$"

            # WS3: System tools
            "workspace 3, class:^(clash-verge)$"
            "workspace 3, class:^(dconf-editor)$"
            "workspace 3, class:^(gnome-system-monitor)$"
            "workspace 3, class:^(gnome-disks)$"
            "workspace 3, class:^(gnome-control-center)$"
            "workspace 3, class:^(baobab)$"
            "workspace 3, class:^(gnome-tweaks)$"

            # WS4: Communication
            "workspace 4, class:^(discord)$"
            "workspace 4, class:^(element)$"
            "workspace 4, class:^(org.telegram.desktop)$"
            "workspace 4, class:^(qq)$"
            "workspace 4, class:^(wechat)$"

            # WS5: Gaming
            "workspace 5, class:^(hmcl)$"
            "workspace 5, class:^(luanti)$"
            "workspace 5, class:^(steam)$"

            # WS6: Security
            "workspace 6, class:^(KeePassXC)$"
            "workspace 6, class:^(keepassxc)$"

            # Float some dialogs
            "float, class:^(gnome-calculator)$"
            "float, class:^(org.gnome.Calculator)$"
            "float, class:^(pavucontrol)$"
          ];

          # ── Workspaces ──
          workspace = [
            "1, monitor:DP-1"
            "2, monitor:DP-1"
            "3, monitor:DP-1"
            "4, monitor:DP-1"
            "5, monitor:DP-1"
            "6, monitor:DP-1"
          ];

        };
      };

    }
  );

}
