{ config, ... }:

let

  home = config.home.homeDirectory;

in

{

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
    setSessionVariables = true;

    desktop = "${home}/Desktop";
    documents = "${home}/Documents";
    download = "${home}/Downloads";
    music = "${home}/Music";
    pictures = "${home}/Pictures";
    publicShare = "${home}/Public";
    templates = "${home}/Templates";
    videos = "${home}/Videos";
    extraConfig = {
      GAMES = "${home}/Games";
      PROJECTS = "${home}/Projects";
      SYNC = "${home}/Sync";
    };
  };

}
