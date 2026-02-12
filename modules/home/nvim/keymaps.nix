{ ... }:

{
  globals.mapleader = " ";

  keymaps = [
    {
      key = "<leader>f";
      action = "find_files";
      mode = "n";
    }
  ];
}
