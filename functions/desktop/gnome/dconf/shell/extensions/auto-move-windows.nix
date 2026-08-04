# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/auto-move-windows" = {
          application-list = [
            "chromium-browser.desktop:1"
            "firefox.desktop:1"
            "org.gnome.Epiphany.desktop:1"

            "emacs.desktop:2"
            "emacsclient.desktop:2"

            ".clash-verge-wrapped-handler.desktop:3"
            "ca.desrt.dconf-editor.desktop:3"
            "clash-verge.desktop:3"
            "gnome-system-monitor-kde.desktop:3"
            "org.gnome.DiskUtility.desktop:3"
            "org.gnome.Extensions.desktop:3"
            "org.gnome.Settings.desktop:3"
            "org.gnome.Shell.Extensions.desktop:3"
            "org.gnome.SystemMonitor.desktop:3"
            "org.gnome.baobab.desktop:3"
            "org.gnome.tweaks.desktop:3"

            "discord.desktop:4"
            "element-desktop.desktop:4"
            "org.telegram.desktop.desktop:4"
            "qq.desktop:4"
            "wechat.desktop:4"

            "HMCL.desktop:5"
            "org.luanti.luanti.desktop:5"
            "steam.desktop:5"

            "org.keepassxc.KeePassXC.desktop:6"
          ];
        };

      };
    }
  );
}
