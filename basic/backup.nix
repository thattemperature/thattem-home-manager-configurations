{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable {

    home.backupCommand = "${lib.getExe' pkgs.glib "gio"} trash";
  };

}
