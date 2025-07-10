#!/bin/bash

# Define menu options
options=(
    "Documents"
    "Pictures"
    "Videos"
    "Downloads"
    "Music"
)

# Show menu in rofi and get the selected option
#chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "File" -font "San Francisco Text 14"  -xoffset -790 -yoffset -515   -width 1 -hide-scrollbar)
chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p " " -font "San Francisco Text 14"  -xoffset -790 -yoffset -555   -width 1 -hide-scrollbar)
#chosen=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "File" -font "San Francisco Text 14"  -xoffset -790 -yoffset -555   -width 1 -hide-scrollbar)

# Execute the command based on the choice
case "$chosen" in
    "Documents")
        cd Documents && pcmanfm &
        ;;
    "Pictures")
        cd Pictures && pcmanfm &
        ;;
    "Videos")
        cd Videos && pcmanfm &
        ;;
    "Downloads")
        cd Downloads && pcmanfm &
        ;;
    "Music")
        cd Music && pcmanfm &
        ;;
    *)
        # If cancelled or no match, do nothing
        ;;
esac

