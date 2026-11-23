# Gestione di file e directory

Comandi fondamentali: `mkdir`, `touch`, `cp`, `mv`, `rm`, `find`, `grep`, `sort`,
`uniq`, `cut`, `awk` e `sed`.

Esempi:

```bash
find . -type f -name '*.log'
grep -n 'ERROR' applicazione.log
sort utenti.txt | uniq
```

## Ciclo sicuro sui nomi file

```bash
for file in ./*.txt; do
    [[ -e "$file" ]] || continue
    printf 'File: %s\n' "$file"
done
```

Le virgolette proteggono i nomi che contengono spazi. Evitare di elaborare l'output
di `ls` con cicli: usare glob o `find` con modalità adatte al caso.

Prima di rinominare o cancellare file in blocco, fare una prova che mostri le
operazioni previste senza eseguirle.
