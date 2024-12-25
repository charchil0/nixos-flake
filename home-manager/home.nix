{ config, pkgs, system, inputs, ... }:

{
  home.username = "viola";
  home.homeDirectory = "/home/viola";
  imports = [
    ./modules/spicetify.nix
    ./modules/zsh.nix
    ./modules/themes/gtk.nix
    ./modules/browser.nix
    ./modules/fonts.nix
    ./modules/waybar.nix
    ./modules/kitty.nix
    ./modules/dunst.nix
    ./modules/btop.nix
    ./modules/fastfetch.nix
    ./modules/tmux.nix
    ./modules/hyprland/default.nix
    ./modules/rofi.nix
  ];
  home.stateVersion = "24.11";
  home.packages = with pkgs;[
    inputs.zen-browser.packages."${system}"
    maple-mono
    maple-mono-NF
    gruvbox-kvantum
  ];

  home.file = { };

  programs.home-manager.enable = true;
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
