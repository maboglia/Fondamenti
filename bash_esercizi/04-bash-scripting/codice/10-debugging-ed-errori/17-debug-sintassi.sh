#!/usr/bin/env bash
# Eseguire: bash -n 17-debug-sintassi.sh
# Per vedere i comandi durante l'esecuzione: bash -x 17-debug-sintassi.sh
set -u
nome="${1:-studente}"
printf 'Ciao, %s!\n' "$nome"
