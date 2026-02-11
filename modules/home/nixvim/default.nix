{ config, pkgs, lib, ... }:

{
  options.home.nixvim.enable = lib.mkEnableOption "nixvim";
  config = lib.mkIf config.home.nvim.enable {
    #TODO: pass user down?
    home-manager.users."breanna".programs.nixvim = {
      enable = true;

      opts = {
        number = true;
	relativenumber = true;
      };
    };
  };
}
