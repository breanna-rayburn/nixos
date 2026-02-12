{ ... }:

{
  globals.mapleader = " ";

  keymaps = [
    {
      mode = "n";
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>f";
    }
  ];
}
