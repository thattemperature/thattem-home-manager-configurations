{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      gtk.cursorTheme = {
        name = "Future-cursors";
        package = pkgs.future-cursor-theme;
        size = 32;
      };
    }
  );

}
