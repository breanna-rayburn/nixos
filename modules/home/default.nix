{ ... }:

{
  imports = [ 
    ./bash.nix
    ./sway
    ./git.nix
  ];

  home-manager.users."breanna".home.stateVersion = "25.11";
}
