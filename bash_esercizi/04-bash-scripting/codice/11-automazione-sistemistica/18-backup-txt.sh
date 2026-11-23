#!/usr/bin/env bash
# Backup dimostrativo: copia i .txt dalla directory corrente in una cartella datata
set -u
sorgente="${1:-.}"
dest_base="${2:-./backup}"
if [[ ! -d "$sorgente" ]]; then
    printf 'Directory sorgente non valida: %s\n' "$sorgente" >&2
    exit 1
fi
data=$(date +%Y%m%d_%H%M%S)
destinazione="$dest_base/backup_$data"
mkdir -p -- "$destinazione" || exit 1
trovati=0
for file in "$sorgente"/*.txt; do
    [[ -f "$file" ]] || continue
    cp -- "$file" "$destinazione/" || exit 1
    ((trovati += 1))
done
printf 'Backup completato: %s file in %s\n' "$trovati" "$destinazione"
