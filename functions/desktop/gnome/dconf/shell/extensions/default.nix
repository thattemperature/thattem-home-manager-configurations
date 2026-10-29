# Note: these files are auto generated

{ config, lib, ... }:

{

  imports = [
    ./appindicator.nix
    ./auto-move-windows.nix
    ./blur-my-shell.nix
    ./burn-my-windows.nix
    ./caffeine.nix
    ./compiz-alike-magic-lamp-effect.nix
    ./compiz-windows-effect.nix
    ./coverflowalttab.nix
    ./dash-to-dock.nix
    ./ddterm.nix
    ./openbar.nix
    ./top-bar-organizer.nix
    ./transparent-window-moving.nix
    ./workspaces-indicator-by-open-apps.nix
  ];

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell" = {
          # Workaround: disable version validation temporarily
          disable-extension-version-validation = true;
        };
      };
    }
  );

}
