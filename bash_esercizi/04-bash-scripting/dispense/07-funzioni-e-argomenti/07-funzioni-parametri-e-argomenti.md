# Funzioni, parametri e argomenti

Le funzioni raggruppano istruzioni riutilizzabili:

```bash
saluta() {
    local nome="$1"
    printf 'Ciao, %s!\n' "$nome"
}
saluta "Ada"
```

`local` limita la variabile al contesto della funzione. Gli argomenti dello script
sono accessibili tramite:
- `$0`: nome/percorso dello script;
- `$1`, `$2`, ...: argomenti posizionali;
- `$#`: numero degli argomenti;
- `"$@"`: tutti gli argomenti, preservando i confini;
- `$?`: exit status dell'ultimo comando.

Usare `"$@"` quando si inoltrtrano argomenti a un altro comando. Una funzione può
restituire un codice di esito con `return`; per produrre dati testuali può usare stdout.
