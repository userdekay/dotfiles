#!/bin/bash

# Define menu options
options=(
    "Librewolf"
    "Firefox"
)

# Show menu in rofi and get the selected option
#chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "Go" -font "San Francisco Text 14"  -xoffset -605 -yoffset -515   -width 1 -hide-scrollbar)
chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p " " -font "San Francisco Text 14"  -xoffset -605 -yoffset -555   -width 1 -hide-scrollbar)
#chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "Go" -font "San Francisco Text 14"  -xoffset -605 -yoffset -555   -width 1 -hide-scrollbar)

# Execute the command based on the choice
case "$chosen" in
    "Firefox")
        firefox --private-window &
        ;;
    "Librewolf")
        librewolf --private-window &
        ;;
    *)
        # If cancelled or no match, do nothing
        ;;
esac

