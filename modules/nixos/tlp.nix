{ config, lib, pkgs, ... }:

{
  options.tlp.enable = lib.mkEnableOption "tlp";
  config = lib.mkIf config.tlp.enable {
    services.tlp = {
      enable = true;
    };
  };
}
