#!/usr/bin/env bash
read -r -p "Inserisci un numero intero: " numero
if [[ ! "$numero" =~ ^-?[0-9]+$ ]]; then
    printf 'Errore: inserire un numero intero.\n' >&2
    exit 1
fi
if (( numero % 2 == 0 )); then
    printf '%s è pari\n' "$numero"
else
    printf '%s è dispari\n' "$numero"
fi
