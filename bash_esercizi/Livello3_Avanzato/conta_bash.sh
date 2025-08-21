#!/bin/bash
grep "Bash" file.txt | wc -l > conteggio.txt
echo "Il numero di righe con 'Bash' è salvato in conteggio.txt"
