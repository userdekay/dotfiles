#!/bin/bash

# Define menu options
options=(
    "Glass"
    "MacOs"
    "Macintosh"
)

# Show menu in rofi and get the selected option
#chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "Go" -font "San Francisco Text 14"  -xoffset -605 -yoffset -515   -width 1 -hide-scrollbar)
chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p " " -font "San Francisco Text 14"  -xoffset -935 -yoffset -555   -width 1 -hide-scrollbar)

# Execute the command based on the choice
case "$chosen" in
    "MacOs")
        ~/.config/polybar/macos.sh &
        ;;
    "Glass")
        ~/.config/polybar/macGlass.sh &
        ;;
    "Macintosh")
        ~/.config/polybar/mac.sh &
        ;;
    *)
        # If cancelled or no match, do nothing
        ;;
esac

