{ config, lib, ... }:

let

  nerd-icons = fromTOML (builtins.readFile ./starship-presets/nerd-font-symbols.toml);
  latte = fromTOML (builtins.readFile ./starship-presets/latte.toml);

in

{

  config = lib.mkIf config.thattem.home-manager.shell.enable {

    programs.starship = {
      enable = true;
      settings = {
        env_var.STARSHIP_SHELL = {
          default = "unknown";
          format = "[ $env_value](blue bold) ";
        };

        palette = "catppuccin_latte";
      }
      // nerd-icons
      // latte;
    };
  };

}
