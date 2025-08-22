#!/bin/bash

# This script renames all .java files in the current directory by adding a prefix "esercizio_"
# Rename the file by adding a prefix "esercizio_" followed by the current number
# and the original filename
# Example: file.java -> esercizio_1_file.java
# Note: The original filename is preserved after the prefix
# This ensures that the numbering is sequential and unique for each file
# The prefix "esercizio_" is added to indicate that these are exercise files
# The script will handle files with spaces in their names correctly by using quotes
# The loop iterates through all .java files in the current directory
# The mv command is used to rename the files
# The script will output a message indicating that all .java files have been renamed
# The script is designed to be run in a directory containing .java files
# The script will not modify files that do not have the .java extension
# The script is useful for organizing exercise files in a consistent manner
# The numbering starts from 1 and increments for each file processed
# The script is simple and efficient for batch renaming files
# The script can be run in any bash-compatible environment
# The script does not require any additional dependencies or libraries
# The script is intended for educational purposes to demonstrate file renaming in bash

numero=0    
for f in *.java; do
    numero=$((numero + 1))
    echo "Rinominando $f in esercizio_${numero}_$f"
    #decommenta la riga seguente per eseguire il rinominamento
    # mv "$f" "esercizio_$numero_$f"
done
echo "Rinominati tutti i file .java"
