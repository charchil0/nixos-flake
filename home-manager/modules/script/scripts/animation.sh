#!/bin/sh 


FILE=$HOME/.local/share/bin/animation_file
STATE=$(cat $FILE)
if [[ $STATE -ne 1 ]]; then
hyprctl keyword "animations:enabled" true
    echo 1 > $FILE
    notify-send -a "t1" -t 700 "animation enabled"
else
hyprctl keyword "animations:enabled" false
    notify-send -a "t1" -t 700 "animation disabled"
    echo 0 > $FILE
fi

