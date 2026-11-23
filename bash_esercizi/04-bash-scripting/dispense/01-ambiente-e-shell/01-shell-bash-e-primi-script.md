# Shell, Bash e primi script

## Shell e terminale

Il terminale è l'interfaccia; la shell interpreta i comandi digitati. Bash è una shell
che offre comandi interattivi e un linguaggio per automatizzare attività.

Verifica la versione:

```bash
bash --version
```

## Primo script

```bash
#!/usr/bin/env bash
# Stampa un messaggio
echo "Ciao, Bash!"
```

La prima riga è la **shebang**. `#!/usr/bin/env bash` individua Bash tramite
l'ambiente `PATH`.

## Permessi ed esecuzione

```bash
chmod +x primo_script.sh
./primo_script.sh
```

È anche possibile avviare lo script esplicitando l'interprete:

```bash
bash primo_script.sh
```

## Directory di lavoro

`pwd` mostra la directory corrente. I percorsi relativi sono interpretati rispetto
alla directory corrente; quelli assoluti partono dalla radice `/`.
