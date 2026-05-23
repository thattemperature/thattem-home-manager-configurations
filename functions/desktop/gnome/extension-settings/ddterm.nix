# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "com/github/amezin/ddterm" = {
          background-color = "rgb(251,247,240)";
          background-opacity = mkDouble "0.75";
          backspace-binding = "auto";
          bold-color = "rgb(64,0,128)";
          bold-color-same-as-fg = false;
          bold-is-bright = true;
          cursor-background-color = "rgb(208,0,0)";
          cursor-colors-set = true;
          cursor-foreground-color = "rgb(251,247,240)";
          custom-font = "Sarasa Mono SC Semi-Bold 20";
          ddterm-activate-hotkey = [ "<Control><Alt>t" ];
          ddterm-toggle-hotkey = [ ];
          delete-binding = "auto";
          foreground-color = "rgb(0,0,0)";
          hide-animation-duration = mkDouble "0.25";
          hide-when-focus-lost = true;
          hide-window-on-esc = true;
          highlight-background-color = "rgb(194,188,181)";
          highlight-colors-set = true;
          highlight-foreground-color = "rgb(0,0,0)";
          new-tab-button = true;
          new-tab-front-button = false;
          notebook-border = false;
          palette = [
            "#171421"
            "#c01c28"
            "#26a269"
            "#a2734c"
            "#12488b"
            "#a347ba"
            "#2aa1b3"
            "#d0cfcc"
            "#5e5c64"
            "#f66151"
            "#33da7a"
            "#e9ad0c"
            "#2a7bde"
            "#c061cb"
            "#33c7de"
            "#ffffff"
          ];
          panel-icon-type = "toggle-button";
          pointer-autohide = true;
          scroll-on-output = false;
          shortcut-find = [ ];
          shortcut-find-next = [ ];
          shortcut-find-prev = [ ];
          shortcut-font-scale-decrease = [ ];
          shortcut-font-scale-increase = [ ];
          shortcut-font-scale-reset = [ ];
          shortcut-move-tab-next = [ ];
          shortcut-move-tab-prev = [ ];
          shortcut-next-tab = [
            "<Control>Tab"
            "<Shift><Control>f"
          ];
          shortcut-page-close = [ "<Shift><Control>k" ];
          shortcut-prev-tab = [
            "<Shift><Control>Tab"
            "<Shift><Control>b"
          ];
          shortcut-terminal-copy = [ "<Alt>w" ];
          shortcut-terminal-paste = [ "<Control>y" ];
          shortcut-terminal-reset = [ ];
          shortcut-terminal-reset-and-clear = [ ];
          shortcut-toggle-maximize = [ ];
          shortcut-win-new-tab = [ "<Shift><Control>t" ];
          shortcut-win-new-tab-front = [ ];
          shortcut-window-size-dec = [ ];
          shortcut-window-size-inc = [ ];
          show-animation = "linear";
          show-animation-duration = mkDouble "0.25";
          show-scrollbar = false;
          tab-close-buttons = true;
          tab-expand = true;
          tab-label-ellipsize-mode = "middle";
          tab-label-width = mkDouble "0.1";
          tab-policy = "always";
          tab-position = "top";
          tab-show-shortcuts = true;
          tab-switcher-popup = false;
          text-blink-mode = "always";
          theme-variant = "system";
          use-system-font = false;
          use-theme-colors = false;
          window-maximize = false;
          window-resizable = false;
          window-size = mkDouble "0.75";
        };

      };
    }
  );

}
