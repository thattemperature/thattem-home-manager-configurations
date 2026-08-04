{ config, lib, ... }:

{

  imports = [
    ./bookmarks.nix
    ./cursor.nix
    ./font.nix
    ./icon.nix
    ./theme.nix
  ];

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      gtk.enable = true;
    }
  );

}
