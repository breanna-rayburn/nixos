{ ... }:

{
  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        completion.menu.draw.columns = [ [ "label" "label_description" ] ];
      };
    };
  };
}
