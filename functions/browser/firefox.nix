{ pkgs, ... }:

{

  programs.firefox = {
    enable = true;
    nativeMessagingHosts = [
      pkgs.gnome-browser-connector
    ];
  };

}
