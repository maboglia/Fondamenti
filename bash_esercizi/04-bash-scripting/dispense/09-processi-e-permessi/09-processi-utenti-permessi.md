# Processi, utenti e permessi

## Permessi

`ls -l` mostra i permessi per proprietario, gruppo e altri. `chmod` modifica i
permessi; `chown` cambia proprietario e gruppo (richiede autorizzazioni adeguate).

```bash
ls -l script.sh
chmod u+x script.sh
```

## Processi

- `ps`: elenca processi;
- `pgrep`: ricerca processi per nome;
- `top`: osservazione interattiva;
- `jobs`: job della shell corrente;
- `kill`: invia un segnale a un processo identificato da PID.

Non terminare processi di sistema senza averne compreso funzione e impatto.
Il segnale predefinito di `kill` è normalmente SIGTERM; SIGKILL (`-9`) non consente
al processo di terminare ordinatamente.
