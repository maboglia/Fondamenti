#!/bin/bash
while IFS= read -r riga; do
    if [[ $riga =~ ^[A-Z] ]]; then
        echo "$riga"
    fi
done < file.txt
