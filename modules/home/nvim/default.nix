{ config, pkgs, lib, ... }:

{
  options.home.nvim.enable = lib.mkEnableOption "nvim";
  config = lib.mkIf config.home.nvim.enable {
    home-manager.users."breanna".programs.neovim = {
      enable = true;
    };

    home-manager.users."breanna".programs.nixvim = {
      enable = true;
      defaultEditor = true;
      
      imports = [
        ./options.nix
        ./keymaps.nix
      ];
    };
  };
}
