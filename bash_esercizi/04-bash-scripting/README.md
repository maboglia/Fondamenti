# Modulo 4 – Bash Scripting

Materiali didattici per il corso ITS System Cybersecurity.

La struttura separa le **dispense** (concetti, sintassi, esempi spiegati) dal **codice**
(script eseguibili, esercizi e mini-progetti). L'ordine numerico segue una progressione
dalle basi della shell all'automazione e agli scenari introduttivi di cybersecurity.

## Struttura

- `dispense/`: schede teoriche progressive in Markdown.
- `codice/`: esempi Bash, esercizi e mini-progetti organizzati per argomento.

## Ambiente

Gli esempi sono pensati per Bash su Linux. Su Windows è possibile usare WSL
(Windows Subsystem for Linux) oppure un ambiente Linux predisposto dal docente.
Verificare l'ambiente con `bash --version`.

## Esecuzione

```bash
chmod +x nome_script.sh
./nome_script.sh
```

In alternativa:

```bash
bash nome_script.sh
```

Eseguire gli script in una directory di laboratorio, usando file di prova.
Non lanciare script non verificati su directory personali o di sistema.

## Percorso consigliato

1. Ambiente e shell
2. Comandi fondamentali
3. Variabili e quoting
4. Input/output, redirezioni e pipeline
5. Condizioni e selezione
6. Cicli
7. Funzioni e argomenti
8. File e directory
9. Processi e permessi
10. Errori e debugging
11. Automazione sistemistica
12. Bash per la cybersecurity
13. Esercitazioni progressive
14. Progetto finale

## Convenzioni

- Nomi file numerati e descrittivi.
- Script dimostrativi autosufficienti quando possibile.
- Variabili e percorsi sempre quotati quando contengono valori testuali.
- Operazioni potenzialmente distruttive provate prima su dati temporanei.
