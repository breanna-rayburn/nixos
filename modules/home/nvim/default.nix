{ config, pkgs, lib, ... }:

{
  options.home.nvim.enable = lib.mkEnableOption "nvim";
  config = lib.mkIf config.home.nvim.enable {
    home-manager.users."breanna".programs.neovim = {
      enable = true;
    };

    home-manager.users."breanna".programs.nixvim = {
      enable = true;

      opts = {
        number = true;
        relativenumber = true;
  
        tabstop = 2;
        softtabstop = 2;
        shiftwidth = 2;
        expandtab = true;
      };
    };
  };
}
