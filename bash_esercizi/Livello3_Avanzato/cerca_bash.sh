#!/bin/bash
# This script creates a file named file.txt with some lines of text
# and then uses grep to search for lines containing the word "Bash"
# The -e option in echo allows for interpretation of backslash escapes
# The created file contains a mix of lines, some starting with uppercase letters
# and some with lowercase letters, to demonstrate the grep functionality
# The grep command searches for the string "Bash" and prints matching lines
# Make sure to run this script in a directory where you have write permissions
echo -e "Bash è divertente
Linux è potente
Impariamo Bash
Script Bash" > file.txt
grep "Bash" file.txt
