#!/usr/bin/env bash

# Check if a file name is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <latex-file>"
    exit 1
fi

# Path to the LaTeX file
file="$1"

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File not found: $file"
    exit 1
fi

# Extract and print citation keys
citations=$(grep -o '\\cite{[^}]*}' "$file" | sed 's/\\cite{//g' | sed 's/}//g' | tr ',' '\n' | sort | uniq | tr '\n' ' ')

pubs export $citations
