{ pkgs, ... }:

{

  programs.gnome-shell.enable = true;
  programs.gnome-shell.extensions = [
    { package = pkgs.gnomeExtensions.appindicator; }
    { package = pkgs.gnomeExtensions.auto-move-windows; }
    { package = pkgs.gnomeExtensions.blur-my-shell; }
    { package = pkgs.gnomeExtensions.burn-my-windows; }
    { package = pkgs.gnomeExtensions.caffeine; }
    { package = pkgs.gnomeExtensions.compiz-alike-magic-lamp-effect; }
    { package = pkgs.gnomeExtensions.compiz-windows-effect; }
    { package = pkgs.gnomeExtensions.coverflow-alt-tab; }
    { package = pkgs.gnomeExtensions.customize-ibus; }
    { package = pkgs.gnomeExtensions.dash-to-dock; }
    { package = pkgs.gnomeExtensions.ddterm; }
    { package = pkgs.gnomeExtensions.edit-desktop-files; }
    { package = pkgs.gnomeExtensions.extension-list; }
    { package = pkgs.gnomeExtensions.open-bar; }
    { package = pkgs.gnomeExtensions.system-monitor; }
    { package = pkgs.gnomeExtensions.tiling-assistant; }
    { package = pkgs.gnomeExtensions.top-bar-organizer; }
    { package = pkgs.gnomeExtensions.transparent-window-moving; }
    { package = pkgs.gnomeExtensions.workspaces-indicator-by-open-apps; }
  ];

}
