{ config, lib, pkgs, ... }:

{
  options.home.etc.enable = lib.mkEnableOption "etc";
  config = lib.mkIf config.home.etc.enable {
		home-manager.users."breanna" = {
			home.packages = with pkgs; [
				neovim

				librewolf
				firefox

				#discord
				krita
			];
		};
  };
}
