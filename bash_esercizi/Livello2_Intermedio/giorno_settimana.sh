#!/bin/bash
read -p "Inserisci un giorno della settimana: " giorno
case $giorno in
    Sabato|Domenica) echo "Weekend";;
    *) echo "Giorno lavorativo";;
esac
