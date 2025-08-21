#!/bin/bash
read -p "Inserisci il livello di log (INFO/WARNING/ERROR): " livello
echo "Il numero di occorrenze di $livello è:"
grep -c "$livello" log.txt
