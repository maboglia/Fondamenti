# 🐚 Mini Corso di Programmazione Bash

---

## 1️⃣ Introduzione

**Bash** (Bourne Again SHell) è la shell più diffusa nei sistemi Linux/Unix.
Permette di:

* eseguire comandi
* automatizzare operazioni
* scrivere **script** per gestire file, processi e sistemi.

Per creare uno script:

1. Apri un file con estensione `.sh` (es: `script.sh`)
2. Inserisci la **shebang** all’inizio:

   ```bash
   #!/bin/bash
   ```

3. Rendi lo script eseguibile:

   ```bash
   chmod +x script.sh
   ```

4. Esegui:

   ```bash
   ./script.sh
   ```

---

## 2️⃣ Variabili

In Bash non serve dichiararle, basta assegnare un valore.

```bash
nome="Mauro"
eta=25

echo "Ciao, mi chiamo $nome e ho $eta anni."
```

⚠️ **Nota**: non ci devono essere spazi intorno a `=`.

---

## 3️⃣ Input da tastiera

Leggere valori con `read`:

```bash
#!/bin/bash
echo "Come ti chiami?"
read nome
echo "Piacere di conoscerti, $nome!"
```

---

## 4️⃣ Condizioni `if`

```bash
#!/bin/bash
echo "Inserisci un numero:"
read n

if [ $n -gt 10 ]; then
    echo "Il numero è maggiore di 10"
elif [ $n -eq 10 ]; then
    echo "Il numero è uguale a 10"
else
    echo "Il numero è minore di 10"
fi
```

Operatori comuni:

* `-eq` uguale
* `-ne` diverso
* `-gt` maggiore
* `-lt` minore
* `-ge` ≥
* `-le` ≤

---

## 5️⃣ Cicli

### `for`

```bash
for i in 1 2 3 4 5; do
  echo "Numero: $i"
done
```

### `while`

```bash
n=1
while [ $n -le 5 ]; do
  echo "Iterazione $n"
  ((n++))
done
```

---

## 6️⃣ Funzioni

```bash
saluta() {
  echo "Ciao $1!"
}

saluta "Mauro"
saluta "Luca"
```

---

## 7️⃣ Gestione dei file

### Creare e scrivere

```bash
echo "Testo di esempio" > file.txt   # sovrascrive
echo "Altra riga" >> file.txt        # aggiunge
```

### Leggere riga per riga

```bash
while read linea; do
  echo "Contenuto: $linea"
done < file.txt
```

---

## 8️⃣ Argomenti da riga di comando

```bash
#!/bin/bash
echo "Primo argomento: $1"
echo "Secondo argomento: $2"
echo "Tutti gli argomenti: $@"
```

Eseguendo:

```bash
./script.sh ciao mondo
```

uscirà:

```
Primo argomento: ciao
Secondo argomento: mondo
Tutti gli argomenti: ciao mondo
```

---

## 9️⃣ Script utile: rinomina file

```bash
#!/bin/bash
i=1
for file in *.jpg; do
  mv "$file" "immagine_$i.jpg"
  ((i++))
done
```

👉 Rinomina tutte le immagini `.jpg` numerandole.

---

## 🔟 Buone pratiche

* Inizia sempre con `#!/bin/bash`
* Usa **commenti** con `#` per spiegare il codice
* Indenta cicli e condizioni per leggibilità
* Prova lo script passo passo per debug

---

# ✅ Conclusioni

Con Bash puoi:

* automatizzare attività ripetitive
* scrivere script di manutenzione
* creare utility personalizzate

È la base della **sistemistica Linux** e indispensabile per DevOps, Cloud e automazione.

---

## **serie di esercizi pratici progressivi su Bash**, dal livello base a quello avanzato, pensati per farti acquisire sicurezza con comandi, scripting, variabili, condizioni, cicli, funzioni e manipolazione di file

* **4 livelli**: Base, Intermedio, Avanzato e Progetti pratici.

---

## **Livello 1: Base**

**Obiettivo:** Conoscere i comandi principali e la sintassi di Bash.

1. **Stampare testo**

   * Comando: `echo`
   * Esercizio: Scrivi uno script che stampa “Ciao, \[tuo nome]!”.

2. **Creare e navigare tra directory**

   * Comando: `mkdir`, `cd`, `pwd`, `ls`
   * Esercizio: Crea una directory `prova_bash`, entra in essa e verifica il percorso assoluto.

3. **Creare file e scrivere testo**

   * Comando: `touch`, `cat`, `echo >`, `>>`
   * Esercizio: Crea un file `lista.txt` e aggiungi tre righe di testo usando `echo`.

4. **Visualizzare contenuto di file**

   * Comando: `cat`, `less`, `head`, `tail`
   * Esercizio: Mostra le prime due righe di `lista.txt`.

5. **Permessi dei file**

   * Comando: `chmod`, `ls -l`
   * Esercizio: Rendi eseguibile lo script che stampa “Ciao”.

---

## **Livello 2: Intermedio**

**Obiettivo:** Imparare variabili, input, condizioni e cicli.

1. **Variabili**

   * Esercizio: Scrivi uno script che chiede il nome all’utente e lo saluta.

2. **Condizioni**

   * Comando: `if`, `elif`, `else`, `[ ]`
   * Esercizio: Chiedi all’utente un numero e stampa se è pari o dispari.

3. **Cicli**

   * Comando: `for`, `while`, `until`
   * Esercizio: Stampa tutti i numeri da 1 a 10 usando `for`.

4. **Gestione argomenti**

   * Variabili `$1`, `$2`, `$#`, `$@`
   * Esercizio: Scrivi uno script che prende due numeri come argomenti e stampa la somma.

5. **Case**

   * Comando: `case`
   * Esercizio: Chiedi all’utente un giorno della settimana e stampa “Weekend” o “Giorno lavorativo”.

---

## **Livello 3: Avanzato**

**Obiettivo:** Automatizzare compiti, manipolare file e usare funzioni.

1. **Funzioni**

   * Esercizio: Crea una funzione `saluta` che riceve un nome e stampa “Ciao, \[nome]!”.

2. **Manipolazione file**

   * Comando: `grep`, `awk`, `sed`, `cut`, `sort`, `uniq`
   * Esercizio: Crea un file con 10 righe di testo e stampa solo le righe che contengono la parola “Bash”.

3. **Redirezione e pipe**

   * Comando: `>`, `>>`, `|`
   * Esercizio: Contare quante righe contengono la parola “Bash” e salvare il risultato in `conteggio.txt`.

4. **Controllo errori**

   * Comando: `$?`, `exit`, `set -e`
   * Esercizio: Scrivi uno script che copia un file; se il file non esiste, stampa un messaggio di errore.

5. **Loop avanzati**

   * Esercizio: Leggi un file riga per riga e stampa solo le righe che iniziano con una lettera maiuscola.

---

## **Livello 4: Mini-progetti pratici**

**Obiettivo:** Applicare tutto in piccoli script utili.

1. **Backup automatico**

   * Scrivi uno script che copia tutti i file `.txt` da una directory a un backup con data odierna.

2. **Generatore di password**

   * Genera una password casuale di 12 caratteri usando `tr`, `head`, `date`, `shuf`.

3. **Contatore di log**

   * Leggi un file di log e stampa quante volte appare un certo livello di errore (INFO, WARNING, ERROR).

4. **Rinomina file in batch**

   * Rinomina tutti i file `.jpg` aggiungendo il prefisso `foto_`.

5. **Menu interattivo**

   * Crea uno script con un menu che permette di:

     1. Visualizzare elenco file
     2. Cercare una parola in un file
     3. Uscire

---

Perfetto! Ti preparo una **versione completa pronta all’uso**, con **script Bash già scritti per tutti gli esercizi**, divisi per livello, e con spiegazioni passo passo. Ogni script sarà eseguibile subito.

---

# **Livello 1: Base**

### 1. Stampare testo

```bash
#!/bin/bash
# Script: ciao.sh
echo "Ciao, Mario!"
```

### 2. Creare e navigare tra directory

```bash
#!/bin/bash
# Script: directory.sh
mkdir -p prova_bash
cd prova_bash
echo "Sei in $(pwd)"
```

### 3. Creare file e scrivere testo

```bash
#!/bin/bash
# Script: crea_file.sh
touch lista.txt
echo "Riga 1" > lista.txt
echo "Riga 2" >> lista.txt
echo "Riga 3" >> lista.txt
```

### 4. Visualizzare contenuto di file

```bash
#!/bin/bash
# Script: mostra_file.sh
head -n 2 lista.txt
```

### 5. Permessi dei file

```bash
#!/bin/bash
# Script: permessi.sh
chmod +x ciao.sh
ls -l ciao.sh
```

---

# **Livello 2: Intermedio**

### 1. Variabili e input

```bash
#!/bin/bash
# Script: saluto_input.sh
read -p "Inserisci il tuo nome: " nome
echo "Ciao, $nome!"
```

### 2. Condizioni (pari/dispari)

```bash
#!/bin/bash
# Script: pari_dispari.sh
read -p "Inserisci un numero: " numero
if (( numero % 2 == 0 )); then
    echo "Il numero $numero è pari"
else
    echo "Il numero $numero è dispari"
fi
```

### 3. Ciclo for

```bash
#!/bin/bash
# Script: stampa_numeri.sh
for i in {1..10}; do
    echo $i
done
```

### 4. Argomenti

```bash
#!/bin/bash
# Script: somma_argomenti.sh
if [ $# -lt 2 ]; then
    echo "Usa: $0 numero1 numero2"
    exit 1
fi
somma=$(( $1 + $2 ))
echo "La somma è $somma"
```

### 5. Case

```bash
#!/bin/bash
# Script: giorno_settimana.sh
read -p "Inserisci un giorno della settimana: " giorno
case $giorno in
    Sabato|Domenica) echo "Weekend";;
    *) echo "Giorno lavorativo";;
esac
```

---

# **Livello 3: Avanzato**

### 1. Funzioni

```bash
#!/bin/bash
# Script: funzione_saluto.sh
saluta() {
    echo "Ciao, $1!"
}
saluta "Luca"
```

### 2. Manipolazione file

```bash
#!/bin/bash
# Script: cerca_bash.sh
echo -e "Bash è divertente\nLinux è potente\nImpariamo Bash\nScript Bash" > file.txt
grep "Bash" file.txt
```

### 3. Redirezione e pipe

```bash
#!/bin/bash
# Script: conta_bash.sh
grep "Bash" file.txt | wc -l > conteggio.txt
echo "Il numero di righe con 'Bash' è salvato in conteggio.txt"
```

### 4. Controllo errori

```bash
#!/bin/bash
# Script: copia_file.sh
file_origine="file.txt"
file_destinazione="backup_file.txt"
if [ ! -f "$file_origine" ]; then
    echo "Errore: $file_origine non esiste"
    exit 1
fi
cp "$file_origine" "$file_destinazione"
echo "Copia completata"
```

### 5. Loop avanzato (lettura riga per riga)

```bash
#!/bin/bash
# Script: righe_maiuscole.sh
while IFS= read -r riga; do
    if [[ $riga =~ ^[A-Z] ]]; then
        echo "$riga"
    fi
done < file.txt
```

---

# **Livello 4: Mini-progetti pratici**

### 1. Backup automatico

```bash
#!/bin/bash
# Script: backup.sh
data=$(date +%Y%m%d)
mkdir -p backup
cp *.txt backup/backup_$data/
echo "Backup completato nella cartella backup/backup_$data/"
```

### 2. Generatore di password

```bash
#!/bin/bash
# Script: password.sh
password=$(date +%s%N | sha256sum | base64 | head -c 12)
echo "Password generata: $password"
```

### 3. Contatore di log

```bash
#!/bin/bash
# Script: log_conta.sh
read -p "Inserisci il livello di log (INFO/WARNING/ERROR): " livello
echo "Il numero di occorrenze di $livello è:"
grep -c "$livello" log.txt
```

### 4. Rinomina file in batch

```bash
#!/bin/bash
# Script: rinomina_jpg.sh
for f in *.jpg; do
    mv "$f" "foto_$f"
done
echo "Rinominati tutti i file .jpg"
```

### 5. Menu interattivo

```bash
#!/bin/bash
# Script: menu.sh
while true; do
    echo "Menu:"
    echo "1) Mostra file nella directory"
    echo "2) Cerca parola in un file"
    echo "3) Esci"
    read -p "Scelta: " scelta
    case $scelta in
        1) ls -l ;;
        2) read -p "Inserisci parola: " parola
           read -p "Inserisci file: " file
           grep "$parola" "$file" ;;
        3) echo "Uscita..."; exit 0 ;;
        *) echo "Scelta non valida" ;;
    esac
done
```

---

