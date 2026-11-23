#!/usr/bin/env bash
printf '%s\n' "Processi dell'utente corrente:"
ps -u "$USER" -o pid,comm
printf '\n%s\n' "Informazioni sullo script:"
printf 'PID: %s\n' "$$"
printf 'PPID: %s\n' "$PPID"
