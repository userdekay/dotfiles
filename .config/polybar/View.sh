#!/bin/bash

# Define menu options
options=(
    "I"
    "II"
    "III"
    "IV"
    "V"
    "VI"
    "VII"
    "VIII"
    "IX"
)

# Show menu in rofi and get the selected option
#chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "View" -font "San Francisco Text 14"  -xoffset -670 -yoffset -515   -width 1 -hide-scrollbar)
chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p " " -font "San Francisco Text 14"  -xoffset -670 -yoffset -555   -width 1 -hide-scrollbar)
#chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "View" -font "San Francisco Text 14"  -xoffset -670 -yoffset -555   -width 1 -hide-scrollbar)

# Execute the command based on the choice
case "$chosen" in
    "I")
        feh --bg-scale "/home/your/wallpaper/location"
        ;;
    "II")
        feh --bg-scale "/home/your/wallpaper/location" 
        ;;
    "III")
        feh --bg-scale "/home/your/wallpaper/location" 
        ;;
    "IV")
        feh --bg-scale "/home/your/wallpaper/location" 
        ;;
    "V")
        feh --bg-scale "/home/your/wallpaper/location" 
        ;;
    "VI")
        feh --bg-fill "/home/your/wallpaper/location" 
        ;;
    "VII")
        feh --bg-scale "/home/your/wallpaper/location"
        ;;
    "VIII")
        feh --bg-scale "/home/your/wallpaper/location"
        ;;
    "IX")
        feh --bg-tile "/home/your/wallpaper/location"
        ;;
    *)
        # If cancelled or no match, do nothing
        ;;
esac

