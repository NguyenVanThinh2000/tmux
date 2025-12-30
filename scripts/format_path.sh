#!/bin/bash
# Format current path with fixed width for tmux

path="$1"
max_width=20  # Maximum characters to show

# Get basename of path
basename=$(basename "$path")

# If longer than max_width, truncate and add ...
if [ ${#basename} -gt $max_width ]; then
    echo "${basename:0:$((max_width-3))}..."
else
    # Pad with spaces to fixed width
    printf "%-${max_width}s" "$basename"
fi
