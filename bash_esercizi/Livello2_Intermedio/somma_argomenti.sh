#!/bin/bash
if [ $# -lt 2 ]; then
    echo "Usa: $0 numero1 numero2"
    exit 1
fi
somma=$(( $1 + $2 ))
echo "La somma è $somma"
