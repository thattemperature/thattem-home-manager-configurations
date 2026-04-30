{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.home-manager.shell.enable {

    programs.fish.enable = true;
  };

}
