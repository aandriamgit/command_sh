#!/bin/bash

# Wallpaper changer script
IMAGES_DIR="$HOME/Pictures/walli"  # Change this to your wallpaper directory
SLEEP_DURATION=4000

# Check if directory exists
if [ ! -d "$IMAGES_DIR" ]; then
    echo "Error: Wallpaper directory $IMAGES_DIR not found!"
    exit 1
fi

# Infinite loop to change wallpapers
while true; do
    # Get random image from directory
    RANDOM_IMAGE=$(find "$IMAGES_DIR" -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.gif' \) | shuf -n 1)
   
    if [ -n "$RANDOM_IMAGE" ]; then
        # Set the wallpaper using gsettings
        gsettings set org.gnome.desktop.background picture-uri-dark "file://$RANDOM_IMAGE"
    fi
   
    # Wait for specified duration
    sleep $SLEEP_DURATION
done
