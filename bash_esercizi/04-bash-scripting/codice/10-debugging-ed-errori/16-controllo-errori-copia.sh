#!/usr/bin/env bash
# Esempio di verifica esplicita degli errori
sorgente="${1:-origine.txt}"
destinazione="${2:-copia.txt}"
if [[ ! -f "$sorgente" ]]; then
    printf 'Errore: il file %s non esiste.\n' "$sorgente" >&2
    exit 1
fi
if cp -- "$sorgente" "$destinazione"; then
    printf 'Copia completata: %s\n' "$destinazione"
else
    printf 'Errore durante la copia.\n' >&2
    exit 1
fi
