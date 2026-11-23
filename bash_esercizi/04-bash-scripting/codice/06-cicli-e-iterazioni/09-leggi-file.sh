#!/usr/bin/env bash
file="${1:-nomi.txt}"
if [[ ! -r "$file" ]]; then
    printf 'File non leggibile o inesistente: %s\n' "$file" >&2
    exit 1
fi
while IFS= read -r riga || [[ -n "$riga" ]]; do
    printf 'Letto: %s\n' "$riga"
done < "$file"
