{ pkgs, ... }:

{

  gtk.cursorTheme = {
    name = "Future-cursors";
    package = pkgs.future-cursor-theme;
    size = 32;
  };

}
