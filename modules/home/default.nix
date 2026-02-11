{ inputs, ... }:

{
  home-manager.sharedModules = [
    inputs.nixvim.homeModules.nixvim
  ];

  imports = [ 
		./bash.nix
    ./git.nix
    ./sway
    ./foot.nix
		./etc.nix
    ./nixvim
  ];

	home-manager.users."breanna".home.stateVersion = "25.11";
}
