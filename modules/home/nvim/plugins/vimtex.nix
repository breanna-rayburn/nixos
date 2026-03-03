{ ... }:

{
  plugins = {
    vimtex = {
      enable = true;
      zathuraPackage = null;
      settings = {
        view_method = "zathura";
        compiler_method = "latexmk";
        quickfix_mode = 2;
        conceal = "abdmg";
      };
    };
  };
}
