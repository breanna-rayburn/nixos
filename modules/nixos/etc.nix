{ config, lib, pkgs, ... }:

{
  options.etc.enable = lib.mkEnableOption "etc";
  config = lib.mkIf config.etc.enable {
  # TODO: seperate from home/nixos modules
    environment.systemPackages = with pkgs; [
      bemenu
      grim
      slurp
      wl-clipboard

      neovim
      wget
      git

      fastfetch
      librewolf
      firefox
    ];

    #TODO: maybe module
    fonts.packages = with pkgs; [
      ibm-plex
    ];
  };
}
