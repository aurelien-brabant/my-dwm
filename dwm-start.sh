#! /bin/bash
#
# Start the dynamic window manager and handles setup

DWM_PATH=/usr/local/bin/dwm

xset r rate 200 200 # fast typing

picom -b # compositor

dwm-setbar &

nitrogen --restore # restore previously set wallpaper using nitrogen

exec $DWM_PATH # exec dwm
