#!/bin/bash

TASK_FILE="$HOME/.tasks.txt"
INDEX_FILE="/tmp/polybar_tasks_index"

# Create the index file if it doesn't exist
if [ ! -f "$INDEX_FILE" ]; then
    echo 0 > "$INDEX_FILE"
fi

TASKS=()
mapfile -t TASKS < "$TASK_FILE"
TASK_COUNT=${#TASKS[@]}

# Read current index
INDEX=$(cat "$INDEX_FILE")

# Make sure index is valid
if (( INDEX >= TASK_COUNT )); then
    INDEX=0
fi

# Output the current task
echo "${TASKS[$INDEX]}"

# Update the index for the next call
NEXT_INDEX=$(( (INDEX + 1) % TASK_COUNT ))
echo "$NEXT_INDEX" > "$INDEX_FILE"

