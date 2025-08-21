#!/bin/bash
read -p "Inserisci un numero: " numero
if (( numero % 2 == 0 )); then
    echo "Il numero $numero è pari"
else
    echo "Il numero $numero è dispari"
fi
