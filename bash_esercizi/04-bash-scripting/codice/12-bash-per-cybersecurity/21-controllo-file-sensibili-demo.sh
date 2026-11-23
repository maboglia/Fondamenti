#!/usr/bin/env bash
# Controllo didattico dei permessi: segnala file leggibili da gruppo/altri.
# Eseguire esclusivamente su una directory di laboratorio autorizzata.
directory="${1:-.}"
if [[ ! -d "$directory" ]]; then
    printf 'Directory non valida: %s\n' "$directory" >&2
    exit 1
fi
find "$directory" -type f -perm /044 -print
