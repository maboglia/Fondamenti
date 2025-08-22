#!/bin/bash
# This script reads a file named file.txt and prints only the lines that start with an uppercase letter
# It uses a while loop to read the file line by line
# The IFS= read -r construct is used to handle lines with leading/trailing whitespace
# The regex ^[A-Z] is used to check if a line starts with an uppercase letter
# If a line matches the condition, it is printed to the standard output
# The script assumes that file.txt is in the same directory as the script
# Make sure to create a file named file.txt with some content before running the script
while IFS= read -r riga; do
    if [[ $riga =~ ^[A-Z] ]]; then
        echo "$riga"
    fi
done < file.txt
