{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.communication.enable {

      programs.discord.enable = true;
    }
  );

}
