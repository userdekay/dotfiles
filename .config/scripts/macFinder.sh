#!/bin/bash

focused_window=$(xprop -root _NET_ACTIVE_WINDOW | awk -F" " '{ print $5 }')

if [ -n "$focused_window" ] && [ "$focused_window" != "0x0" ]; then
  wm_class=$(xprop -id "$focused_window" WM_CLASS | cut -d '"' -f4)
  # Capitalize the first letter
  capitalized=$(echo "$wm_class" | awk '{ print toupper(substr($0,1,1)) substr($0,2) }')
  echo "$capitalized"
else
  echo "Finder"
fi

