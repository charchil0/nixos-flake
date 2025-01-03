#!/bin/sh

FILE=$HOME/.local/share/bin/touchpad_file
STATE=$(cat $FILE)
if [[ $STATE -ne 1 ]]; then
    hyprctl keyword "device[dell0c3c:01-06cb:ce26-touchpad]:enabled" true
    echo 1 > $FILE
    notify-send -a "t1" -t 700 "Touchpad Enabled"
else
    hyprctl keyword "device[dell0c3c:01-06cb:ce26-touchpad]:enabled" false
    notify-send -a "t1" -t 700 "Touchpad Disabled"
    echo 0 > $FILE
fi
