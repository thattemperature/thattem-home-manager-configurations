{ config, lib, ... }:

let

  home = config.home.homeDirectory;

in

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      xdg.userDirs = {
        enable = true;
        createDirectories = true;
        setSessionVariables = true;

        desktop = "${home}/Desktop";
        documents = "${home}/Documents";
        download = "${home}/Downloads";
        music = "${home}/Music";
        pictures = "${home}/Pictures";
        projects = "${home}/Projects";
        publicShare = "${home}/Public";
        templates = "${home}/Templates";
        videos = "${home}/Videos";
        extraConfig = {
          GAMES = "${home}/Games";
          SYNC = "${home}/Sync";
        };
      };
    }
  );

}
