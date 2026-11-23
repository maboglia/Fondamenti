# Variabili, stringhe e quoting

In Bash una variabile si assegna senza spazi attorno a `=`:

```bash
nome="Ada"
eta=25
echo "Nome: $nome"
```

Per leggere il valore si usa `$nome` oppure `${nome}`. Le parentesi graffe rendono
chiaro il confine del nome:

```bash
file="report"
echo "${file}.txt"
```

## Quoting

- `"..."`: espande variabili e sostituzioni, preservando gli spazi come parte del valore.
- `'...'`: mantiene letterale il contenuto.
- `\`: carattere di escape in contesti appropriati.

Quotare le espansioni è una buona abitudine:

```bash
cp -- "$sorgente" "$destinazione"
```

## Variabili d'ambiente

```bash
echo "$HOME"
echo "$PATH"
export AMBIENTE="laboratorio"
```

Bash non applica una tipizzazione rigida alle variabili. L'aritmetica intera si esegue
con `(( ... ))` o `$(( ... ))`.
