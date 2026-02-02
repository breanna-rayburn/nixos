{ ... }:

{
  imports = [ 
    ./bash.nix 
    ./git.nix
  ];

  home-manager.users."breanna".home.stateVersion = "25.11";
}
