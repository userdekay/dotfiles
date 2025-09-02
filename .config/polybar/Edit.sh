#!/bin/bash

# Define menu options
options=(
    "randoWalls"
    "randoTiles"
    "walls"
    "tiles"
    "all black"
    "pomo"
    "dunst"
    "azan"
    "capswap"
    "awake"
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
    "randoWalls")
        ~/.config/scripts/randowalls.sh &
        ;;  
    "randoTiles")
        ~/.config/scripts/randowallsTiles.sh &
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
    "pomo")
        ~/.config/scripts/pomo.sh &
        ;;
    "all black")
        feh --bg-tile ~/Pictures/tiles/blacktile.png &
        ;;
    *)
        # If cancelled or no match, do nothing
        ;;
esac


