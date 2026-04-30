{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.home-manager.system.enable {

    programs.fastfetch.enable = true;
  };

}
