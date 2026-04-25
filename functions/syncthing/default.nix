{
  nixosConfig,
  config,
  lib,
  ...
}:

{

  config = lib.mkMerge [
    {
      services.syncthing.enable = true;
    }

    (lib.mkIf config.thattem-nixos.special.enable {

      services.syncthing = {
        key = config.private.syncthing.key;
        cert = config.private.syncthing.cert;
        settings = {
          devices = config.private.syncthing.devices;
          folders = {
            "default" = {
              label = "Default Folder";
              id = "default";
              path = "~/Sync/Default";
              devices = config.private.syncthing.default-folder-devices;
            };
            "temporary" = {
              label = "Temporary Files";
              id = "temporary";
              path = "~/Sync/Temporary";
              devices = config.private.syncthing.temporary-folder-devices;
            };
            "archive" = {
              label = "Archived Files";
              id = "archive";
              path = "~/Sync/Archive";
              devices = config.private.syncthing.archive-folder-devices;
            };
            "secret" = {
              label = "Secret Files";
              id = "secret";
              path = "~/Sync/Secret";
              devices = config.private.syncthing.secret-folder-devices;
            };
            "secret-2" = {
              label = "Second Secret Files";
              id = "secret-2";
              path = "~/Sync/Secret-2";
              devices = config.private.syncthing.secret-folder-2-devices;
            };
          };
          options = {
            localAnnounceEnabled = true;
            relaysEnabled = true;
            urAccepted = 3;
          };
        };
        guiCredentials = {
          username = "thattemperature";
          # Workaround
          passwordFile = nixosConfig.age.secrets.syncthing-password.path;
        };
      };
    })
  ];

}
