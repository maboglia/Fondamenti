#!/bin/bash
file_origine="file.txt"
file_destinazione="backup_file.txt"
if [ ! -f "$file_origine" ]; then
    echo "Errore: $file_origine non esiste"
    exit 1
fi
cp "$file_origine" "$file_destinazione"
echo "Copia completata"
