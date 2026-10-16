{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.browser.enable {

      programs.firefox = {
        enable = true;
        nativeMessagingHosts = [
          pkgs.gnome-browser-connector
        ];
        profiles = {
          thattemperature-default = {
            isDefault = true;
            extensions = {
              packages = with pkgs.firefoxAddons; [
                adblock-for-youtube
                bewlybewly
                gesturefy
                gnome-shell-integration
                keepassxc-browser
                ublock-origin
              ];
              settings = {
                "{506e023c-7f2b-40a3-8066-bc5deb40aebe}" = {
                  force = true;
                  settings = import ./extensions/gesturefy.nix;
                };
              };
            };
            settings = {
              "browser.backup.scheduled.enabled" = true;
              "browser.backup.location" = "${config.xdg.userDirs.documents}/Restore Firefox";
              "browser.download.useDownloadDir" = false;
              "browser.startup.page" = 3;
              "media.autoplay.default" = 0;
              "signon.autofillForms" = false;
              "signon.generation.enabled" = false;
              "signon.management.page.breach-alerts.enabled" = false;
              "signon.rememberSignons" = false;
              "toolkit.tabbox.switchByScrolling" = true;
            };
          };
        };
      };
    }
  );

}
