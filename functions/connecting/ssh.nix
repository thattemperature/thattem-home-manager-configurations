{
  config,
  lib,
  ...
}:

{

  config = lib.mkIf config.thattem.home-manager.connecting.enable {

    programs.ssh = {
      enable = true;
      enableDefaultConfig = false;
      settings = {

        "*" = {
          Compression = false;
          ControlMaster = "auto";
          ControlPath = "~/.ssh/master-%r@%n:%p";
          ControlPersist = "no";
          HashKnownHosts = false;
          ServerAliveCountMax = 4;
          ServerAliveInterval = 15;
          UserKnownHostsFile = "~/.ssh/known_hosts";
        };

        "github.com" =
          lib.hm.dag.entryBefore
            [
              "*"
            ]
            {
              HostName = "ssh.github.com";
              Port = 443;
              User = "git";
              AddressFamily = "inet";
            };

        "gitlab.com" =
          lib.hm.dag.entryBefore
            [
              "*"
            ]
            {
              HostName = "altssh.gitlab.com";
              Port = 443;
              User = "git";
              AddressFamily = "inet";
            };
      };
    };
  };

}
