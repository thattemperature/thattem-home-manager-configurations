# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ lib, ... }:

with lib.hm.gvariant;

{
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
                    (mkVariant "native_static_gaussian_blur")
                  ])
                  (mkDictionaryEntry [
                    "id"
                    (mkVariant "effect_000000000000")
                  ])
                  (mkDictionaryEntry [
                    "params"
                    (mkVariant [
                      (mkDictionaryEntry [
                        "radius"
                        (mkVariant 30)
                      ])
                      (mkDictionaryEntry [
                        "brightness"
                        (mkVariant (mkDouble "0.6"))
                      ])
                    ])
                  ])
                ])
              ])
            ])
          ]
        ])
        (mkDictionaryEntry [
          "pipeline_default_rounded"
          [
            (mkDictionaryEntry [
              "name"
              (mkVariant "Default rounded")
            ])
            (mkDictionaryEntry [
              "effects"
              (mkVariant [
                (mkVariant [
                  (mkDictionaryEntry [
                    "type"
                    (mkVariant "native_static_gaussian_blur")
                  ])
                  (mkDictionaryEntry [
                    "id"
                    (mkVariant "effect_000000000001")
                  ])
                  (mkDictionaryEntry [
                    "params"
                    (mkVariant [
                      (mkDictionaryEntry [
                        "radius"
                        (mkVariant 30)
                      ])
                      (mkDictionaryEntry [
                        "brightness"
                        (mkVariant 1)
                      ])
                      (mkDictionaryEntry [
                        "unscaled_radius"
                        (mkVariant 30)
                      ])
                    ])
                  ])
                ])
                (mkVariant [
                  (mkDictionaryEntry [
                    "type"
                    (mkVariant "corner")
                  ])
                  (mkDictionaryEntry [
                    "id"
                    (mkVariant "effect_000000000002")
                  ])
                  (mkDictionaryEntry [
                    "params"
                    (mkVariant [
                      (mkDictionaryEntry [
                        "radius"
                        (mkVariant 50)
                      ])
                      (mkDictionaryEntry [
                        "corners_bottom"
                        (mkVariant true)
                      ])
                    ])
                  ])
                ])
              ])
            ])
          ]
        ])
      ];
      settings-version = 2;
    };

    "org/gnome/shell/extensions/blur-my-shell/appfolder" = {
      brightness = mkDouble "0.6";
      sigma = 30;
    };

    "org/gnome/shell/extensions/blur-my-shell/coverflow-alt-tab" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/dash-to-dock" = {
      blur = true;
      brightness = mkDouble "1.0";
      override-background = true;
      pipeline = "pipeline_default_rounded";
      sigma = 20;
      static-blur = true;
      style-dash-to-dock = 0;
      unblur-in-overview = false;
    };

    "org/gnome/shell/extensions/blur-my-shell/lockscreen" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/overview" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      blur = false;
      brightness = mkDouble "0.6";
      pipeline = "pipeline_default";
      sigma = 30;
    };

    "org/gnome/shell/extensions/blur-my-shell/screenshot" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/window-list" = {
      brightness = mkDouble "0.6";
      sigma = 30;
    };

  };
}
