{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      gtk.iconTheme = {
        name = "MoreWaita";
        package = pkgs.morewaita-icon-theme;
      };
    }
  );

}
