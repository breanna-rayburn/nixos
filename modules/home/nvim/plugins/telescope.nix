{ ... }:

{
  plugins = {
    #devicons auto-enable when telescope enable?
    web-devicons.enable = false;
    telescope = {
      enable = true;
      #adds ripgrep dependency
      extensions.live-grep-args.enable = true;
    };  
  };

  keymaps = [
    {
      mode = "n";
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>f";
    }
    {
      mode = "n";
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>lg";
    }
    {
      mode = "n";
      action = "<cmd>Telescope grep_string<CR>";
      key = "<leader>ls";
    } 
  ];
}
