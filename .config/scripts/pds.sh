#!/bin/bash

PASS_FILE="$HOME/your/file/location"

# Show usernames in rofi
USERNAME=$(cut -d ':' -f 1 "$PASS_FILE" | rofi -dmenu -p "Select user")

if [[ -z "$USERNAME" ]]; then
    exit 0
fi

# Get the password for the selected username
PASSWORD=$(grep "^$USERNAME:" "$PASS_FILE" | cut -d ':' -f 2-)

# Copy password to clipboard (requires xclip or wl-copy)
echo -n "$PASSWORD" | xclip -selection clipboard

# Optional: you can also use xdotool to type password automatically
# Uncomment this if you want auto typing (ensure focus is on password input)
# sleep 0.5
# xdotool type --delay 100 "$PASSWORD"

#notify-send -t 500 "$USERNAME"
notify-send -t 200 "done"

