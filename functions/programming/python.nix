{ config, lib, ... }:

let

  python-lsp = config.thattem-packages.python-lsp;

in

lib.mkIf (python-lsp != null) {

  home.packages = [
    python-lsp
  ];

}
