{ ... }:

{
  globals.mapleader = " ";

  keymaps = [
    {
      mode = "n";
      action = "<cmd>set wrap!<CR>";
      key = "<leader>w";
    }
  ];
}
