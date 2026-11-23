#!/usr/bin/env bash
# Progetto finale: report sintetico di un log didattico.
set -u
file="${1:-}"
if [[ -z "$file" ]]; then
    printf 'Uso: %s file-log\n' "$0" >&2
    exit 2
fi
if [[ ! -r "$file" ]]; then
    printf 'Errore: file non leggibile: %s\n' "$file" >&2
    exit 1
fi
report="report_$(date +%Y%m%d_%H%M%S).txt"
{
    printf 'Report generato: %s\n' "$(date '+%Y-%m-%d %H:%M:%S')"
    printf 'File analizzato: %s\n' "$file"
    for livello in INFO WARNING ERROR; do
        conteggio=$(grep -c -- "$livello" "$file" || true)
        printf '%-8s %s\n' "$livello" "$conteggio"
    done
} > "$report"
printf 'Report salvato in %s\n' "$report"
