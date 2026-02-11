{ config, pkgs, lib, ... }:

{
  options.home.nixvim.enable = lib.mkEnableOption "nixvim";
  config = lib.mkIf config.home.nixvim.enable {
    home-manager.users."breanna".programs.nixvim = {
      enable = true;

      opts = {
        number = true;
	relativenumber = true;
      };
    };
  };
}
