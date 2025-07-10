#!/bin/bash

# Check if any arguments are provided
if [ "$#" -eq 0 ]; then
    echo "No files provided. Please specify the files to delete."
    exit 1
fi

# List the files to be deleted
echo "The following files will be deleted:"

for file in "$@"; do
    # Check if the file exists
    if [ -e "$file" ]; then
        echo "$file"
        valid_files=true
    else
        echo "Warning: '$file' does not exist."
    fi
done

# Ask for confirmation
read -p "Do you want to delete these files? (y/n): " confirm

# If the user confirms, delete the files
if [[ "$confirm" == "yes" || "$confirm" == "y" ]]; then
    rm "$@"
    echo "Deleted"
else
	echo "not"
fi

