{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      home.packages = with pkgs; [
        dconf-editor
        gnome-tweaks
      ];
    }
  );

}
