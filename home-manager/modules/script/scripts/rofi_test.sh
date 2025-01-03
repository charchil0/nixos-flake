#!/bin/sh

# Set the directory where wallpapers are stored
WALLPAPER_DIR=~/wallpapers

# Find all PNG and JPG images in the wallpaper directory
WALLPAPERS=$(find "$WALLPAPER_DIR" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \))

if [ -z "$WALLPAPERS" ]; then
    echo "No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

SELECTED=$(echo "$WALLPAPERS" | rofi -dmenu -p "Select Wallpaper:" -show-icons -config ~/.config/rofi/clipboard.rasi)

# If a wallpaper is selected, open it with Thunar
if [ -n "$SELECTED" ]; then
    swww img "$SELECTED"
    notify-send -a "t1" $SELECTED -t 2000
fi
