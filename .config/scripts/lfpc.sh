#!/bin/bash

# List of file managers
options="pcmanfm\nlf"

# Show options with rofi
choice=$(echo -e "$options" | rofi -dmenu -p "Open /tmp with:")

# Check the user's choice and launch the appropriate file manager
case "$choice" in
    "pcmanfm")
        pcmanfm /tmp &
        ;;
    "lf")
        kitty -e lfub /tmp &
        ;;
    *)
        echo "No valid choice made." >&2
        exit 1
        ;;
esac

