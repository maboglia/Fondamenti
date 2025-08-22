#!/bin/bash

# This script creates a backup of all .txt files in the current directory
# The backup files are copied into a directory named "backup" with the current date
# The date format used is YYYYMMDD to ensure proper sorting of backup directories
# The script creates the backup directory if it does not already exist
# The cp command is used to copy the .txt files into the backup directory
# The script will output a message indicating that the backup has been completed
# The script is designed to be run in a directory containing .txt files
# The script will not modify the original .txt files
# The script is useful for creating regular backups of text files
# The script can be run in any bash-compatible environment
# The script does not require any additional dependencies or libraries
# The script is intended for educational purposes to demonstrate file backup in bash
data=$(date +%Y%m%d)
mkdir -p backup
cp *.txt backup/backup_$data/
echo "Backup completato nella cartella backup/backup_$data/"
