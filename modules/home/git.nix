{ config, pkgs, lib, ... }:

{
  options.home.git.enable = lib.mkEnableOption "git";
  config = lib.mkIf config.home.git.enable {
    home-manager.users."breanna".programs.git = {
      enable = true;
      settings = {
        user = {
          name = "breanna";
	  email = "52141078+breanna-rayburn@users.noreply.github.com";
	};
	init = {
          defaultBranch = "main";
	};
      };
    };
  };
}
