{ options-module, users-path }:

username:

{

  "${username}" =
    { nixosConfig, ... }:
    {
      imports = [
        options-module
        (users-path + "/${username}")
      ];
      config = {
        home.username = nixosConfig.users.users."${username}".name;
        home.homeDirectory = nixosConfig.users.users."${username}".home;
        thattem = nixosConfig.thattem;
      };
    };

}
