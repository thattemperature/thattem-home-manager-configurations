{ config, lib, ... }:

let

  python-lsp = config.thattem.packages.python-lsp;

in

{

  config = lib.mkIf config.thattem.nixos.programming.enable (
    lib.mkIf config.thattem.home-manager.programming.enable (

      lib.mkIf (python-lsp != null) {

        home.packages = [
          python-lsp
        ];

      }
    )
  );

}
