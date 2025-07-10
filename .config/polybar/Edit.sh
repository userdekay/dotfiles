#!/bin/bash

# Define menu options
options=(
    "randowalls"
    "walls"
    "tiles"
    "notes"
    "capswap"
    "awake"
    "dunst"
    "azan"
)

# Show menu in rofi and get the selected option
#chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "Edit" -font "San Francisco Text 14"  -xoffset -735 -yoffset -515   -width 1 -hide-scrollbar)
chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p " " -font "San Francisco Text 14"  -xoffset -735 -yoffset -555   -width 1 -hide-scrollbar)
#chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "Edit" -font "San Francisco Text 14"  -xoffset -735 -yoffset -555   -width 1 -hide-scrollbar)

# Execute the command based on the choice
case "$chosen" in
    "walls")
        ~/.config/scripts/wallpaper.sh &
        ;;
    "tiles")
        ~/.config/scripts/wallpaperTiled.sh &
        ;;
    "randowalls")
        ~/.config/scripts/randowalls.sh &
        ;;  
    "notes")
        ~/.config/scripts/uxnnote.sh &
        ;;
    "capswap")
        setxkbmap -option caps:swapescape &
        ;;
    "awake")
        ~/.config/scripts/awake.sh &
        ;;
    "dunst")
        dunsctl set-paused true & 
        ;;
    "azan")
        go-pray daemon &
        ;;
    *)
        # If cancelled or no match, do nothing
        ;;
esac

