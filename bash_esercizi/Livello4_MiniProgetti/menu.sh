#!/bin/bash
while true; do
    echo "Menu:"
    echo "1) Mostra file nella directory"
    echo "2) Cerca parola in un file"
    echo "3) Esci"
    read -p "Scelta: " scelta
    case $scelta in
        1) ls -l ;;
        2) read -p "Inserisci parola: " parola
           read -p "Inserisci file: " file
           grep "$parola" "$file" ;;
        3) echo "Uscita..."; exit 0 ;;
        *) echo "Scelta non valida" ;;
    esac
done
