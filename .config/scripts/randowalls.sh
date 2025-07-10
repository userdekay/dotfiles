#!/bin/bash

# Set the folder where your images are located
IMAGE_FOLDER="$HOME/Pictures/walls"

# Find all image files in the folder (supports various formats)
RANDOM_IMAGE=$(find "$IMAGE_FOLDER" -type f \( -iname \*.jpg -o -iname \*.jpeg -o -iname \*.png -o -iname \*.gif -o -iname \*.bmp \) | shuf -n 1)

# Check if a random image was found
if [ -n "$RANDOM_IMAGE" ]; then
    # Set the wallpaper using feh
    feh --bg-fill "$RANDOM_IMAGE"
else
    echo "No image found in the specified folder."
fi

