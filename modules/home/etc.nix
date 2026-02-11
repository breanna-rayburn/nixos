{ config, lib, pkgs, ... }:

{
  options.etc.enable = lib.mkEnableOption "etc";
  config = lib.mkIf config.etc.enable {
    home.packages = with pkgs; [
      neovim

			librewolf
      firefox

			discord
			krita
    ];
 };
}
