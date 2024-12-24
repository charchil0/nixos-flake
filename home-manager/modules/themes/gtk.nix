{ pkgs, config, ... }:
{

  gtk = {
    enable = true;
    font = {
      name = "Maple Mono NF Regular";
      size = 12;
    };
    # theme = {
    #   name = "Gruvbox-Green-Dark";
    #   package = pkgs.gruvbox-gtk-theme.override {
    #     colorVariants = [ "dark" ];
    #     themeVariants = [ "green" ];
    #     tweakVariants = [ "outline" ];
    #   };
    theme = {
      name = "Gruvbox-Green-Dark";
      package = pkgs.gruvbox-gtk-theme.override {
        colorVariants = [ "dark" ];
        themeVariants = [ "green" ];
        tweakVariants = [ "outline" ];
      };

    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme.override { color = "black"; };
    #   name = "gruvbox-dark-green";
    #   package = pkgs.
    # gruvbox-dark-icons-gtk;
    };
    cursorTheme = {
      name = "Bibata-Original-Ice";
      package = pkgs.bibata-cursors;
      size = 23;
    };
  };

  home.pointerCursor = {
    name = "Bibata-Original-Ice";
    package = pkgs.bibata-cursors;
    size = 23;
  };


  qt = {
    enable = true;
    platformTheme.name = "qtct";
    style = {
      name = "kvantum";
      package = pkgs.gruvbox-kvantum;
    };
  };


}
