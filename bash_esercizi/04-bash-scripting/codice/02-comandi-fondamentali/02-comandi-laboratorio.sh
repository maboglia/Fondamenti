#!/usr/bin/env bash
# Comandi fondamentali in una directory di prova
mkdir -p laboratorio_bash
cd laboratorio_bash || exit 1
printf 'Directory corrente: '
pwd
touch appunti.txt
printf 'Prima riga\n' > appunti.txt
printf 'Seconda riga\n' >> appunti.txt
ls -l
cat appunti.txt
