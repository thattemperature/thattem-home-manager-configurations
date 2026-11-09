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
        name = "phinger-cursors-light";
        package = pkgs.phinger-cursors;
        size = 32;
      };
    }
  );

}
