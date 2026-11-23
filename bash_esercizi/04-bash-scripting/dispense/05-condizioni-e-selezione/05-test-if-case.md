# Condizioni: test, if e case

## if

```bash
if [[ -f "$file" ]]; then
    echo "File presente"
elif [[ -d "$file" ]]; then
    echo "È una directory"
else
    echo "Percorso non trovato"
fi
```

## Test frequenti

- `-e percorso`: esiste;
- `-f percorso`: è un file regolare;
- `-d percorso`: è una directory;
- `-r`, `-w`, `-x`: leggibile, scrivibile, eseguibile;
- `-z stringa`: stringa vuota;
- `-n stringa`: stringa non vuota.

Per confronti tra stringhe usare `==` e `!=` dentro `[[ ... ]]`.
Per confronti numerici si possono usare `-eq`, `-ne`, `-lt`, `-le`, `-gt`, `-ge`
con `[ ... ]`, oppure gli operatori aritmetici dentro `(( ... ))`.

## Operatori logici

`&&` significa AND, `||` significa OR, `!` nega una condizione.

## case

È utile quando una variabile può assumere più valori distinti, ad esempio una scelta
di menu. Usare virgolette sulle espansioni quando appropriate.
