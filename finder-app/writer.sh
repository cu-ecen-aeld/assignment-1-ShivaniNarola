#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Missing arguments."
    echo "Usage: $0 <file_path> <string_to_write>"
    exit 1
fi

writefile=$1
writestr=$2

# Create directory if needed
dirpath=$(dirname "$writefile")
mkdir -p "$dirpath"

# Write string to file (overwrite)
echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Error: Could not write to file $writefile"
    exit 1
fi

