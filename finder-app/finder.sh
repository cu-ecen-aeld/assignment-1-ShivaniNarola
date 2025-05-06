#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Error: Missing parameters"
  exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
  echo "Error: Directory $filesdir does not exist"
  exit 1
fi

num_files=$(find "$filesdir" -type f | wc -l)
match_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $num_files and the number of matching lines are $match_lines"

