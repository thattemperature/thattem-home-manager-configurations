{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.home-manager.shell.enable {

    programs.nushell.enable = true;
  };

}
