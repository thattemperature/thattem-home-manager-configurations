{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.home-manager.shell.enable {

    programs.bash.enable = true;
  };

}
