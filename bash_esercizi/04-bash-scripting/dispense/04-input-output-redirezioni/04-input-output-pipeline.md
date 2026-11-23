# Input, output, redirezioni e pipeline

I tre flussi standard sono:
- **stdin (0)**: ingresso standard;
- **stdout (1)**: uscita standard;
- **stderr (2)**: uscita degli errori.

## Redirezioni

```bash
echo "prima riga" > output.txt     # crea/sovrascrive
echo "seconda riga" >> output.txt  # aggiunge
ls directory_inesistente 2> errori.txt
comando > tutto.txt 2>&1
```

## Pipeline

Il simbolo `|` collega lo stdout di un comando allo stdin del successivo:

```bash
grep "ERROR" applicazione.log | wc -l
```

La pipeline permette di costruire elaborazioni componendo strumenti piccoli.
Per leggere file riga per riga in modo robusto:

```bash
while IFS= read -r riga; do
    printf '%s\n' "$riga"
done < input.txt
```
