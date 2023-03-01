#!/bin/bash

# Define the directories to search
directories=(
    "/Users"
    "/Applications"
    "/Library"
    "/System"
    "/usr"
)

# Print the list of directories

echo "Directories to search:"
for (( i=0; i<${#directories[@]}; i++ )); do
    echo "$((i+1)). ${directories[$i]}"
done

# Prompt the user to select directories to search

echo "Enter the numbers of the directories to search (separated by spaces):"
read -r selection

# If no selection was made, default to searching all directories

if [[ -z "$selection" ]]; then
    search_directories=("${directories[@]}")
else

# Split the selection string into an array of numbers
    selection=($selection)

# Build an array of directories to search based on the selected numbers

search_directories=()
    for i in "${selection[@]}"; do
        if (( i >= 1 && i <= ${#directories[@]} )); then
            search_directories+=("${directories[$i-1]}")
        fi
    done
fi

    # Find all files in the selected directories, and compute their SHA-1 hashes
    find "${search_directories[@]}" -type f -print0 | xargs -0 shasum -a 1 | sort > /tmp/duplicates.txt

    # Extract the list of duplicate files based on their SHA-1 hashes
    cat /tmp/duplicates.txt | uniq -d | cut -f 1 -d ' ' | xargs -I{} grep {} /tmp/duplicates.txt > /tmp/duplicate_files.txt

    # Print the list of duplicate files
    echo "Duplicate files found:"
    cat /tmp/duplicate_files.txt

    # Clean up the temporary files
    rm /tmp/duplicates.txt /tmp/duplicate_files.txt
