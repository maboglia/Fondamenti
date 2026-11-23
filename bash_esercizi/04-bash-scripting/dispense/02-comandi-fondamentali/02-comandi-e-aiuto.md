# Comandi fondamentali e documentazione

Comandi da conoscere:

| Comando | Funzione |
|---|---|
| `pwd` | mostra la directory corrente |
| `ls -la` | elenca anche file nascosti e dettagli |
| `cd` | cambia directory |
| `mkdir -p` | crea directory, anche intermedie |
| `touch` | crea un file vuoto o aggiorna la data |
| `cp` | copia file o directory |
| `mv` | sposta o rinomina |
| `rm` | rimuove file |
| `cat` | visualizza o concatena file |
| `less` | consultazione interattiva |
| `head`, `tail` | inizio e fine di un file |
| `man` | manuale di un comando |
| `command -v` | individua un comando disponibile |

Consultazione:

```bash
man grep
grep --help
command -v bash
```

Prestare particolare attenzione a `rm`, `mv` e `cp`: verificare sempre percorso e
destinazione prima di eseguire operazioni su molti file.
