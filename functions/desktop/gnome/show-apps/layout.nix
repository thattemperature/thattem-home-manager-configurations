# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell" = {
          app-picker-layout = [
            [
              (mkDictionaryEntry [
                "firefox.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 0)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "chromium-browser.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 1)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Epiphany.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 2)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "emacs.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 3)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "emacsclient.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 4)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Console.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 5)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "gimp.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 6)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Snapshot.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 7)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Loupe.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 8)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Showtime.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 9)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Decibels.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 10)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Music.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 11)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.TextEditor.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 12)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Papers.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 13)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.font-viewer.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 14)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Characters.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 15)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.SimpleScan.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 16)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "cups.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 17)
                  ])
                ])
              ])
            ]
            [
              (mkDictionaryEntry [
                "startcenter.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 0)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "clash-verge.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 1)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "ca.desrt.dconf-editor.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 2)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.SystemMonitor.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 3)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.DiskUtility.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 4)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Extensions.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 5)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Settings.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 6)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.baobab.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 7)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.tweaks.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 8)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "element-desktop.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 9)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.telegram.desktop.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 10)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "qq.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 11)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "wechat.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 12)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Calendar.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 13)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.clocks.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 14)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Weather.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 15)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Contacts.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 16)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Maps.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 17)
                  ])
                ])
              ])
            ]
            [
              (mkDictionaryEntry [
                "HMCL.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 0)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.luanti.luanti.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 1)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "steam.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 2)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.keepassxc.KeePassXC.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 3)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "animeko.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 4)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "dev.lizardbyte.app.Sunshine.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 5)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Connections.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 6)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Calculator.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 7)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "xterm.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 8)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "com.github.amezin.ddterm.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 9)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.seahorse.Application.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 10)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Logs.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 11)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Yelp.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 12)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "org.gnome.Tour.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 13)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "nixos-manual.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 14)
                  ])
                ])
              ])
              (mkDictionaryEntry [
                "syncthing-ui.desktop"
                (mkVariant [
                  (mkDictionaryEntry [
                    "position"
                    (mkVariant 15)
                  ])
                ])
              ])
            ]
          ];
        };

      };
    }
  );

}
