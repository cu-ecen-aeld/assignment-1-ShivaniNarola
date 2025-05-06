#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Error: Missing parameters"
  exit 1
fi

writefile=$1
writestr=$2

mkdir -p "$(dirname "$writefile")"
echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
  echo "Error: Could not write to $writefile"
  exit 1
fi
