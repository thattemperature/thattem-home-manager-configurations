{ pkgs, ... }:

{

  gtk.iconTheme = {
    name = "MoreWaita";
    package = pkgs.morewaita-icon-theme;
  };

}
