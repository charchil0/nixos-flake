{ pkgs, ... }:
let
  toggle_hyprland_animation = pkgs.writeShellScriptBin "toggle_animation" (builtins.readFile ./scripts/animation.sh);

_zsh-completions_custom = pkgs.writeShellScriptBin "toggle_animation" (builtins.readFile ./scripts/animation.sh);

animation_file  
custom_brightnesscontrol.sh  = pkgs.writeShellScriptBin "toggle_animation" (builtins.readFile ./scripts/animation.sh);

cliphist_rofi.sh = pkgs.writeShellScriptBin "toggle_animation" (builtins.readFile ./scripts/animation.sh);

globalcontrol.sh = pkgs.writeShellScriptBin "toggle_animation" (builtins.readFile ./scripts/animation.sh);

rofilaunch.sh  = pkgs.writeShellScriptBin "toggle_animation" (builtins.readFile ./scripts/animation.sh);

rofiselect.sh  = pkgs.writeShellScriptBin "toggle_animation" (builtins.readFile ./scripts/animation.sh);

screenshot.sh  = pkgs.writeShellScriptBin "toggle_animation" (builtins.readFile ./scripts/animation.sh);

tmux.sh   = pkgs.writeShellScriptBin "toggle_animation" (builtins.readFile ./scripts/animation.sh);

touchpad.sh  = pkgs.writeShellScriptBin "toggle_animation" (builtins.readFile ./scripts/animation.sh);

touchpad_file 
uptime.sh = pkgs.writeShellScriptBin "toggle_animation" (builtins.readFile ./scripts/animation.sh); 
volumecontrol.sh  = = pkgs.writeShellScriptBin "toggle_animation" (builtins.readFile ./scripts/animation.sh);


in
{
  home.packages = with pkgs; [
    wall-change
    wallpaper-picker
    random-wallpaper

    runbg
    music
    lofi

    toggle_blur
    toggle_oppacity
    toggle_waybar
    toggle_float

    maxfetch

    compress
    extract

    show-keybinds

    vm-start

    ascii

    record

    screenshot

    rofi-power-menu
    power-menu
  ];
}
