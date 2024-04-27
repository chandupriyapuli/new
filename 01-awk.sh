#!/bin/bash

# Check if input file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

# Check if the input file exists
if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found."
    exit 1
fi

# AWK command to transpose data
awk '{
    for (i=1; i<=NF; i++) {
        if (NR==1) {
            matrix[i] = $i
        } else {
            matrix[i] = matrix[i] " " $i
        }
    }
}
END {
    for (i=1; i<=NF; i++) {
        print matrix[i]
    }
}' "$1"
