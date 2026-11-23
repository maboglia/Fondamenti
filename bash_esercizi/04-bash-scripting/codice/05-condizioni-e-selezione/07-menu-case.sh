#!/usr/bin/env bash
read -r -p "Inserisci un giorno: " giorno
case "$giorno" in
    Sabato|sabato|Domenica|domenica) echo "Weekend" ;;
    Lunedi|Lunedì|lunedi|lunedì|Martedi|Martedì|martedi|martedì|Mercoledi|Mercoledì|mercoledi|mercoledì|Giovedi|Giovedì|giovedi|giovedì|Venerdi|Venerdì|venerdi|venerdì) echo "Giorno lavorativo" ;;
    *) echo "Valore non riconosciuto" ;;
esac
