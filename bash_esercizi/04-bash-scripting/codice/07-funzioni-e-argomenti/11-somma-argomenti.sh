#!/usr/bin/env bash
if (( $# != 2 )); then
    printf 'Uso: %s numero1 numero2\n' "$0" >&2
    exit 2
fi
if [[ ! "$1" =~ ^-?[0-9]+$ || ! "$2" =~ ^-?[0-9]+$ ]]; then
    printf 'Errore: entrambi gli argomenti devono essere interi.\n' >&2
    exit 2
fi
somma=$(( $1 + $2 ))
printf 'La somma è %s\n' "$somma"
