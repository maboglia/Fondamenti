#!/bin/bash
for f in *.jpg; do
    mv "$f" "foto_$f"
done
echo "Rinominati tutti i file .jpg"
