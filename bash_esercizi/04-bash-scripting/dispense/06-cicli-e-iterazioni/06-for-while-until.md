# Cicli e iterazioni

## for

```bash
for numero in 1 2 3 4 5; do
    printf '%s\n' "$numero"
done
```

Per iterare sui file:

```bash
for file in ./*.txt; do
    [[ -e "$file" ]] || continue
    printf 'Trovato: %s\n' "$file"
done
```

## while

```bash
contatore=1
while (( contatore <= 5 )); do
    echo "$contatore"
    ((contatore += 1))
done
```

## until

Ripete finché la condizione diventa vera:

```bash
tentativi=0
until (( tentativi == 3 )); do
    ((tentativi += 1))
done
```

`break` interrompe il ciclo; `continue` passa all'iterazione successiva.
Evitare cicli senza condizione di uscita verificabile.
