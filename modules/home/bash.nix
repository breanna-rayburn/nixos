{ config, pkgs, lib, ... }:

{
  options.home.bash.enable = lib.mkEnableOption "bash";
  config = lib.mkIf config.home.bash.enable {
    #TODO: pass user down?
    home-manager.users."breanna".programs.bash = {
      enable = true;
      enableCompletion = true;

      shellAliases = {
        "bye" = "shutdown now";
      };
    };
  };
}
