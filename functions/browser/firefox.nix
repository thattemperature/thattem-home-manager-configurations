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
      };
    }
  );

}
