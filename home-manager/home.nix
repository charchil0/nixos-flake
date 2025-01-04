{ pkgs, system, inputs, ... }:

{
  home.username = "viola";
  home.homeDirectory = "/home/viola";
  imports = [
    ./modules/shell/default.nix
    ./modules/spicetify.nix
    ./modules/themes/gtk.nix
    ./modules/browser.nix
    ./modules/fonts.nix
    ./modules/waybar.nix
    ./modules/dunst.nix
    ./modules/btop.nix
    ./modules/fastfetch.nix
    ./modules/tmux.nix
    ./modules/hyprland/default.nix
    ./modules/rofi.nix
    ./modules/terminals/default.nix
    #./modules/yazi.nix
  ];
  home.stateVersion = "24.05";
  home.packages = with pkgs;[
    inputs.zen-browser.packages."${system}".default
    inputs.ghostty.packages.x86_64-linux.default

    maple-mono
    maple-mono-NF
    gruvbox-kvantum
  ];

  home.file = { };

  programs.neovim = {
    defaultEditor = true;
    enable = true;
  };


  programs.git = {
    enable = true;
    userName = "violea";
    userEmail = "violea@proton.me";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  fonts.fontconfig.enable = true;

}
