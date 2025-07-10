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
        # Get the file type
        file_type=$(file -b "$file")
        echo "$file - [$file_type]"
        valid_files=true
    else
        echo "> Warning: '$file' does not exist."
    fi
done

# If no valid files were found, exit
if ! $valid_files; then
    echo "No valid files to delete. Exiting."
    exit 1
fi	


# Ask for confirmation
read -p "Do you want to delete these files? (y/n): " confirm

# If the user confirms, delete the files
if [[ "$confirm" == "yes" || "$confirm" == "y" ]]; then
    rm "$@"
    echo "----------------------------------------"
    echo "Done"
    echo "----------------------------------------"
else
    	echo "----------------------------------------"
	echo "Not deleted"
    	echo "----------------------------------------"
fi

