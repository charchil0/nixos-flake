{ config, lib, pkgs, ... }:
{

  environment.systemPackages = with pkgs; [

    #Browsers
    chromium
    qutebrowser
    brave
    librewolf
    home-manager
    lua
    lua-language-server
    #ffmpeg

    #System Tools
    unzip
    zip
    stow
    gnumake
    killall
    python3
    playerctl
    envsubst
    blueman
    lazygit

    #Developement Tools
    nodejs
    reaper

    #Rust
    rustup
    cargo

    #Password Manager
    keepassxc

    #Sound 
    pamixer
    pavucontrol

    #video
    #stremio

    #music
    spotify
    #oh-my-posh
    wl-clipboard
    networkmanagerapplet
    virt-manager




    #git packages
    gh
    git


    #hyprland packages
    hyprlock
    hyprpicker
    dunst
    rofi-wayland
    swww
    swappy
    cliphist
    libsForQt5.qt5ct
    qt6ct
    nwg-look
    slurp
    imagemagick
    libnotify
    gcc
    cmake
    clang
    stremio


    #Terminal commands and packages
    parallel
    jq
    eza
    lsd
    starship
    brightnessctl
    zoxide
    fzf
    fd
    tmux
    fastfetch

    #Editors
    vim
    vscode

    #File Manager
    xfce.thunar
    xfce.tumbler
        libsForQt5.qtstyleplugin-kvantum

        ffmpeg
        alejandra
        clang-tools
        dolphin
        grimblast

  motrix
  nix-ld-rs
  nixd
  rust-analyzer
  stylua
  vale
  vlc
  waybar
  yt-dlp
  zathura
  
  ];

}
