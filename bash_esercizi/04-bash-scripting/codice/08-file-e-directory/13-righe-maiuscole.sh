#!/usr/bin/env bash
file="${1:-testo-laboratorio.txt}"
if [[ ! -r "$file" ]]; then
    printf 'File non leggibile: %s\n' "$file" >&2
    exit 1
fi
while IFS= read -r riga || [[ -n "$riga" ]]; do
    if [[ "$riga" =~ ^[A-Z] ]]; then
        printf '%s\n' "$riga"
    fi
done < "$file"
