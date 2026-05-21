{
  config,
  lib,
  ...
}:

{

  config = lib.mkIf config.thattem.home-manager.connecting.enable {

    programs.ssh = {
      enable = true;
      # Workaround: A temporary option which will be removed in the future
      enableDefaultConfig = false;
      settings = {

        "Match all" = {
          Compression = false;
          ControlMaster = "auto";
          ControlPath = "~/.ssh/master-%r@%n:%p";
          ControlPersist = "no";
          HashKnownHosts = false;
          ServerAliveCountMax = 4;
          ServerAliveInterval = 15;
          UserKnownHostsFile = "~/.ssh/known_hosts";
        };

        "Match host github.com" =
          lib.hm.dag.entryBefore
            [
              "Match all"
            ]
            {
              HostName = "ssh.github.com";
              Port = 443;
              User = "git";
            };

        "Match host gitlab.com" =
          lib.hm.dag.entryBefore
            [
              "Match all"
            ]
            {
              HostName = "altssh.gitlab.com";
              Port = 443;
              User = "git";
            };
      };
    };
  };

}
