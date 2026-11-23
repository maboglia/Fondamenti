#!/usr/bin/env bash
# Analisi su un log didattico; non modifica il file sorgente.
file="${1:-log-laboratorio.txt}"
if [[ ! -r "$file" ]]; then
    printf 'File non leggibile: %s\n' "$file" >&2
    exit 1
fi
printf 'Riepilogo per %s\n' "$file"
for livello in INFO WARNING ERROR; do
    conteggio=$(grep -c -- "$livello" "$file" || true)
    printf '%-8s %s\n' "$livello" "$conteggio"
done
