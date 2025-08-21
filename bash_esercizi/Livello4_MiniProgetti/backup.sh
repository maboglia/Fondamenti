#!/bin/bash
data=$(date +%Y%m%d)
mkdir -p backup
cp *.txt backup/backup_$data/
echo "Backup completato nella cartella backup/backup_$data/"
