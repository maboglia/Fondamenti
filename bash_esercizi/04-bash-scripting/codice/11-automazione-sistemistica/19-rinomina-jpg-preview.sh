#!/usr/bin/env bash
# Anteprima: mostra i nomi che verrebbero assegnati; non modifica i file.
numero=1
shopt -s nullglob
for file in ./*.jpg ./*.JPG; do
    nuovo="./foto_${numero}_${file##*/}"
    printf 'Rinomina prevista: %s -> %s\n' "$file" "$nuovo"
    ((numero += 1))
done
if (( numero == 1 )); then
    echo "Nessun file JPG trovato."
fi
