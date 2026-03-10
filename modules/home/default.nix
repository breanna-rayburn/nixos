{ inputs, ... }:

{
  home-manager.sharedModules = [
    inputs.nixvim.homeModules.nixvim
  ];

  imports = [ 
    ./bash.nix
    ./nvim
    ./git.nix
    ./sway
    ./foot
    ./etc.nix
  ];

  home-manager.users."breanna".home.stateVersion = "25.11";
}
