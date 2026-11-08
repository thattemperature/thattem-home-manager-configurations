# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/blur-my-shell" = {
          pipelines = [
            (mkDictionaryEntry [
              "pipeline_default"
              [
                (mkDictionaryEntry [
                  "name"
                  (mkVariant "Default")
                ])
                (mkDictionaryEntry [
                  "effects"
                  (mkVariant [
                    (mkVariant [
                      (mkDictionaryEntry [
                        "type"
                        (mkVariant "dual_kawase_blur")
                      ])
                      (mkDictionaryEntry [
                        "id"
                        (mkVariant "effect_000000000000")
                      ])
                      (mkDictionaryEntry [
                        "params"
                        (mkVariant [
                          (mkDictionaryEntry [
                            "unscaled_radius"
                            (mkVariant 30)
                          ])
                          (mkDictionaryEntry [
                            "brightness"
                            (mkVariant (mkDouble "0.8"))
                          ])
                        ])
                      ])
                    ])
                  ])
                ])
              ]
            ])
          ];
          rounded-blur-found = false;
          settings-version = 7;
        };

        "org/gnome/shell/extensions/blur-my-shell/appfolder" = {
          blur = true;
          pipeline = "pipeline_default";
        };

        "org/gnome/shell/extensions/blur-my-shell/applications" = {
          blur = false;
          pipeline = "pipeline_default";
        };

        "org/gnome/shell/extensions/blur-my-shell/coverflow-alt-tab" = {
          pipeline = "pipeline_default";
        };

        "org/gnome/shell/extensions/blur-my-shell/dash-to-dock" = {
          blur = true;
          override-background = true;
          pipeline = "pipeline_default";
          static-blur = false;
          style-dash-to-dock = 0;
          unblur-in-overview = false;
        };

        "org/gnome/shell/extensions/blur-my-shell/dash-to-panel" = {
          blur-original-panel = false;
        };

        "org/gnome/shell/extensions/blur-my-shell/lockscreen" = {
          pipeline = "pipeline_default";
        };

        "org/gnome/shell/extensions/blur-my-shell/overview" = {
          blur = true;
          pipeline = "pipeline_default";
        };

        "org/gnome/shell/extensions/blur-my-shell/panel" = {
          blur = false;
          override-background = false;
          pipeline = "pipeline_default";
          unblur-in-overview = false;
        };

        "org/gnome/shell/extensions/blur-my-shell/popup" = {
          blur = true;
          override-background = false;
          pipeline = "pipeline_default";
          static-blur = false;
        };

        "org/gnome/shell/extensions/blur-my-shell/screenshot" = {
          pipeline = "pipeline_default";
        };

        "org/gnome/shell/extensions/blur-my-shell/window-list" = {
          pipeline = "pipeline_default";
        };

      };
    }
  );

}
