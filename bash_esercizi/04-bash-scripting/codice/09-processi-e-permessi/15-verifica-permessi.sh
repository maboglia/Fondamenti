#!/usr/bin/env bash
percorso="${1:-.}"
if [[ ! -e "$percorso" ]]; then
    printf 'Percorso inesistente: %s\n' "$percorso" >&2
    exit 1
fi
printf 'Percorso: %s\n' "$percorso"
[[ -r "$percorso" ]] && echo "Lettura: sì" || echo "Lettura: no"
[[ -w "$percorso" ]] && echo "Scrittura: sì" || echo "Scrittura: no"
[[ -x "$percorso" ]] && echo "Esecuzione/attraversamento: sì" || echo "Esecuzione/attraversamento: no"
