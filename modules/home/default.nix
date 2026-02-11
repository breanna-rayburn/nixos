{ ... }:

{
  imports = [ 
    ./bash.nix
    ./nixvim
    ./git.nix
    ./sway
    ./foot.nix
  ];

  home-manager.users."breanna".home.stateVersion = "25.11";
}
