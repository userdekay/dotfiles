#!/usr/bin/env bash

# Wallpaper folder (change this to your actual folder)
FOLDER=~/Pictures/tiles

# Open nsxiv and get the selected wallpaper
CHOICE=$(nsxiv -otb "$FOLDER")

# If a valid wallpaper was selected
if [ -n "$CHOICE" ]; then
    # Set the wallpaper using feh
    feh --bg-tile "$CHOICE"
else
    echo "No wallpaper selected"
fi

