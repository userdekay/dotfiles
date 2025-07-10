#!/bin/bash

focused_window=$(xprop -root _NET_ACTIVE_WINDOW | awk -F" " '{ print $5 }')
if [ -n "$focused_window" ] && [ "$focused_window" != "0x0" ]; then
  wm_class=$(xprop -id "$focused_window" WM_CLASS | cut -d '"' -f4)
  echo "$wm_class"
else
  echo "Finder"
fi

