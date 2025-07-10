#!/bin/bash

TASK_FILE="$HOME/.tasks.txt"
EDITOR="${EDITOR:-nano}"

# Add special options
OPTIONS=("add task" "edit tasks")

while true; do
    # Read tasks into array
    mapfile -t TASKS < "$TASK_FILE"

    # Compose menu list: tasks + options
    MENU_ITEMS=("${TASKS[@]}" "${OPTIONS[@]}")

    # Show rofi menu
    CHOICE=$(printf '%s\n' "${MENU_ITEMS[@]}" | rofi -xoffset 5 -yoffset -515 -dmenu -p "Tasks")

    # If empty or cancelled, exit
    [[ -z "$CHOICE" ]] && exit 0

    case "$CHOICE" in
        "add task")
            NEW_TASK=$(echo "" | rofi -dmenu -p "New task")
            if [[ -n "$NEW_TASK" ]]; then
                echo "$NEW_TASK" >> "$TASK_FILE"
                notify-send "Task added" "$NEW_TASK"
            fi
            ;;
        "edit tasks")
            $EDITOR "$TASK_FILE"
            ;;
        *)
            # Mark task as done by removing it from the file
            grep -Fvx "$CHOICE" "$TASK_FILE" > "${TASK_FILE}.tmp" && mv "${TASK_FILE}.tmp" "$TASK_FILE"
            notify-send "Task done" "$CHOICE"
            ;;
    esac
done

