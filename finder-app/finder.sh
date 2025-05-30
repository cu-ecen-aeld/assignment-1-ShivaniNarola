#!/bin/bash

# Check if both arguments provided
if [ $# -ne 2 ]; then
    echo "Error: Missing arguments."
    echo "Usage: $0 <directory> <search_string>"
    exit 1
fi

filesdir=$1
searchstr=$2

# Check if filesdir is a directory
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory."
    exit 1
fi

# Count number of files recursively
num_files=$(find "$filesdir" -type f | wc -l)

# Count number of matching lines recursively
num_matching_lines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"


