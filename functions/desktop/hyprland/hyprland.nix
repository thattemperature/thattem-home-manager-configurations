{
  config,
  lib,
  pkgs,
  ...
}:

{
  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      # ── Packages needed by the Hyprland desktop ──
      home.packages = with pkgs; [
        kitty # terminal emulator
        grimblast # screenshot tool
        brightnessctl # screen brightness control
        btop # system monitor (opened from waybar)

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
        configType = "lua";

        # All config written as proper Lua — the settings→Lua conversion
        # in home-manager is buggy (doesn't handle $mod, generates invalid
        # hl.exec-once, etc.)
        extraConfig = ''
          -- ═══════════════════════════════════════════════
          --  Variables
          -- ═══════════════════════════════════════════════
          local terminal = "kitty"
          local menu = "rofi -show drun"
          local switcher = "rofi -show window"

          -- ═══════════════════════════════════════════════
          --  Monitors
          -- ═══════════════════════════════════════════════
          hl.monitor({
            output = "",
            mode = "preferred",
            position = "auto",
            scale = "auto",
          })

          -- ═══════════════════════════════════════════════
          --  Environment
          -- ═══════════════════════════════════════════════
          hl.env("XCURSOR_SIZE",  "32")
          hl.env("XCURSOR_THEME", "Future-cursors")
          hl.env("QT_QPA_PLATFORM", "wayland")
          hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
          hl.env("GDK_BACKEND", "wayland,x11")

          -- ═══════════════════════════════════════════════
          --  Look & Feel
          -- ═══════════════════════════════════════════════
          hl.config({
            general = {
              gaps_in = 5,
              gaps_out = 10,
              border_size = 2,
              col = {
                active_border = "rgb(c4a77d)",
                inactive_border = "rgb(595959)",
              },
              layout = "dwindle",
            },

            decoration = {
              rounding = 8,
              blur = {
                enabled = true,
                size = 8,
                passes = 3,
                new_optimizations = true,
              },
              dim_inactive = true,
              dim_strength = 0.2,
            },

            misc = {
              disable_hyprland_logo = true,
              disable_splash_rendering = true,
              force_default_wallpaper = 0,

            },

            input = {
              kb_layout = "us",
              follow_mouse = 1,
              touchpad = {
                natural_scroll = true,
              },
              sensitivity = 0,
            },
          })

          -- ═══════════════════════════════════════════════
          --  Workspaces (all on primary monitor DP-1)
          -- ═══════════════════════════════════════════════
          hl.config({
            workspace = {
              "1, monitor:DP-1",
              "2, monitor:DP-1",
              "3, monitor:DP-1",
              "4, monitor:DP-1",
              "5, monitor:DP-1",
              "6, monitor:DP-1",
            },
          })

          -- ═══════════════════════════════════════════════
          --  Window Rules (auto-move apps to workspaces)
          -- ═══════════════════════════════════════════════
          hl.config({
            windowrulev2 = {
              -- WS1: Browsers
              "workspace 1, class:^(firefox)$",
              "workspace 1, class:^(chromium-browser)$",
              "workspace 1, class:^(epiphany)$",
              -- WS2: Emacs
              "workspace 2, class:^(emacs)$",
              -- WS3: System tools
              "workspace 3, class:^(clash-verge)$",
              "workspace 3, class:^(dconf-editor)$",
              "workspace 3, class:^(gnome-system-monitor)$",
              "workspace 3, class:^(gnome-disks)$",
              "workspace 3, class:^(gnome-control-center)$",
              "workspace 3, class:^(baobab)$",
              "workspace 3, class:^(gnome-tweaks)$",
              -- WS4: Communication
              "workspace 4, class:^(discord)$",
              "workspace 4, class:^(element)$",
              "workspace 4, class:^(org.telegram.desktop)$",
              "workspace 4, class:^(qq)$",
              "workspace 4, class:^(wechat)$",
              -- WS5: Gaming
              "workspace 5, class:^(hmcl)$",
              "workspace 5, class:^(luanti)$",
              "workspace 5, class:^(steam)$",
              -- WS6: Security
              "workspace 6, class:^(KeePassXC)$",
              "workspace 6, class:^(keepassxc)$",
              -- Float dialogs
              "float, class:^(gnome-calculator)$",
              "float, class:^(org.gnome.Calculator)$",
              "float, class:^(pavucontrol)$",
            },
          })

          -- ═══════════════════════════════════════════════
          --  Animations
          -- ═══════════════════════════════════════════════
          hl.curve("wind",   { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })
          hl.curve("winIn",  { type = "bezier", points = { {0.1, 1.1}, {0.1, 1.1} } })
          hl.curve("winOut", { type = "bezier", points = { {0.3, -0.3}, {0, 1} } })
          hl.curve("linear", { type = "bezier", points = { {0, 0}, {1, 1} } })

          hl.animation({ leaf = "windows",     enabled = true, speed = 6,   bezier = "wind",   style = "slide" })
          hl.animation({ leaf = "windowsIn",   enabled = true, speed = 6,   bezier = "winIn",  style = "slide" })
          hl.animation({ leaf = "windowsOut",  enabled = true, speed = 5,   bezier = "winOut", style = "slide" })
          hl.animation({ leaf = "windowsMove", enabled = true, speed = 6,   bezier = "wind",   style = "slide" })
          hl.animation({ leaf = "fade",        enabled = true, speed = 4,   bezier = "default" })
          hl.animation({ leaf = "fadeIn",      enabled = true, speed = 4,   bezier = "default" })
          hl.animation({ leaf = "fadeOut",     enabled = true, speed = 4,   bezier = "default" })
          hl.animation({ leaf = "workspaces",  enabled = true, speed = 5,   bezier = "wind",   style = "slide" })
          hl.animation({ leaf = "border",      enabled = true, speed = 6,   bezier = "default" })
          hl.animation({ leaf = "borderangle", enabled = true, speed = 100, bezier = "linear",  style = "loop" })

          -- ═══════════════════════════════════════════════
          --  Keybindings
          -- ═══════════════════════════════════════════════

          -- Terminal
          hl.bind("SUPER + Return", hl.dsp.exec_cmd(terminal))
          -- App launcher (replaces GNOME overview / show-apps)
          hl.bind("SUPER + D", hl.dsp.exec_cmd(menu))
          -- Window switcher (replaces coverflow-alt-tab)
          hl.bind("SUPER + Tab", hl.dsp.exec_cmd(switcher))
          -- Kill window
          hl.bind("SUPER + Q", hl.dsp.window.kill())
          -- Toggle floating
          hl.bind("SUPER + V", hl.dsp.window.float({ action = "toggle" }))
          -- Toggle fullscreen
          hl.bind("SUPER + F", hl.dsp.window.fullscreen({ action = "toggle" }))
          -- Pseudo tile
          hl.bind("SUPER + P", hl.dsp.window.pseudo({ action = "toggle" }))
          -- Toggle split (dwindle)
          hl.bind("SUPER + J", hl.dsp.layout("togglesplit"))
          -- Exit Hyprland
          hl.bind("SUPER + M", hl.dsp.exit())
          -- Screenshot
          hl.bind("Print",             hl.dsp.exec_cmd("grimblast copy area"))
          hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("grimblast copy area"))
          -- Dropdown terminal (replaces ddterm) — toggles special workspace
          hl.bind("SUPER + grave", hl.dsp.workspace.toggle_special())

          -- Workspace switching: SUPER + 1..6
          hl.bind("SUPER + 1", hl.dsp.focus({ workspace = "1" }))
          hl.bind("SUPER + 2", hl.dsp.focus({ workspace = "2" }))
          hl.bind("SUPER + 3", hl.dsp.focus({ workspace = "3" }))
          hl.bind("SUPER + 4", hl.dsp.focus({ workspace = "4" }))
          hl.bind("SUPER + 5", hl.dsp.focus({ workspace = "5" }))
          hl.bind("SUPER + 6", hl.dsp.focus({ workspace = "6" }))

          -- Move window to workspace: SUPER + SHIFT + 1..6
          hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = "1" }))
          hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = "2" }))
          hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = "3" }))
          hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = "4" }))
          hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = "5" }))
          hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = "6" }))

          -- Mouse: drag window
          hl.bind("SUPER + mouse:272", hl.dsp.window.drag(),   { mouse = true })
          -- Mouse: resize window
          hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

          -- ═══════════════════════════════════════════════
          --  Autostart
          -- ═══════════════════════════════════════════════
          hl.on("hyprland.start", function()
            hl.exec_cmd("waybar")
            hl.exec_cmd("hyprpaper")
            hl.exec_cmd("dunst")
            hl.exec_cmd("hypridle")
            hl.exec_cmd("hyprpolkitagent")
            hl.exec_cmd("ibus-daemon -drxR")
          end)
        '';
      };

    }
  );
}
