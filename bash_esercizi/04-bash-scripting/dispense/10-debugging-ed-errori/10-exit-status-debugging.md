# Exit status, gestione errori e debugging

Per convenzione, un comando restituisce `0` in caso di successo e un valore diverso
da zero in caso di errore.

```bash
cp sorgente.txt copia.txt
esito=$?
if (( esito == 0 )); then
    echo "Copia riuscita"
else
    echo "Copia fallita: codice $esito" >&2
fi
```

È preferibile verificare direttamente il comando con `if` quando possibile.

## Opzioni utili

- `set -u`: segnala l'uso di variabili non inizializzate;
- `set -o pipefail`: fa fallire una pipeline se fallisce un suo comando;
- `set -x`: mostra i comandi eseguiti, utile nel debugging;
- `bash -n script.sh`: controlla la sintassi senza eseguire lo script.

`set -e` può interrompere uno script in situazioni non intuitive: non sostituisce
la gestione esplicita degli errori. Comprenderne le eccezioni prima di usarlo.

Scrivere messaggi diagnostici su stderr con `printf ... >&2` e usare `exit 1`
per segnalare un errore dello script.
