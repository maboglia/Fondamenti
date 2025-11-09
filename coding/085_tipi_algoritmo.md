# 🤖 **Scheda Didattica – Tipi di Algoritmi**

### 📘 **Definizione**

Un **algoritmo** è una **sequenza finita di istruzioni logiche e ordinate** che permettono di risolvere un problema o di svolgere un compito specifico.
Ogni algoritmo deve essere:

* **Finito** (ha un termine),
* **Non ambiguo** (chiaro in ogni passo),
* **Corretto** (porta al risultato previsto),
* **Generale** (valido per casi simili).

---

### 🧩 **Classificazione dei tipi di algoritmi**

| Tipo di algoritmo              | Descrizione                                                                              | Esempio                                       |
| ------------------------------ | ---------------------------------------------------------------------------------------- | --------------------------------------------- |
| **Sequenziale**                | Le istruzioni sono eseguite una dopo l’altra, in ordine logico.                          | Calcolo della somma di due numeri.            |
| **Condizionale (o selettivo)** | L’esecuzione dipende da una condizione logica.                                           | Controllare se un numero è pari o dispari.    |
| **Iterativo (o ciclico)**      | Le istruzioni vengono ripetute finché una condizione è vera.                             | Calcolare la somma dei primi 100 numeri.      |
| **Ricorsivo**                  | L’algoritmo richiama sé stesso con dati ridotti fino a una condizione di uscita.         | Calcolo del fattoriale di un numero.          |
| **Greedy (avido)**             | Sceglie la soluzione “migliore” in ogni passo, senza tornare indietro.                   | Algoritmo per il resto minimo con monete.     |
| **Divide et impera**           | Divide il problema in sottoproblemi più piccoli, li risolve e combina i risultati.       | Merge Sort, Quick Sort.                       |
| **Backtracking**               | Esplora tutte le possibilità tornando indietro quando un percorso non porta a soluzione. | Risoluzione del Sudoku o del labirinto.       |
| **Ricerca e ordinamento**      | Algoritmi che trovano o ordinano dati in una struttura.                                  | Binary Search, Bubble Sort, Quick Sort.       |
| **Ottimizzazione**             | Mira a trovare la soluzione migliore (minimo costo, massimo risultato).                  | Dijkstra, Algoritmo del Commesso Viaggiatore. |

---

### 🔍 **Algoritmi comuni e loro descrizione**

| Nome                | Tipo                  | Descrizione sintetica                                                                  |
| ------------------- | --------------------- | -------------------------------------------------------------------------------------- |
| **Bubble Sort**     | Ordinamento iterativo | Confronta coppie di elementi adiacenti e li scambia finché la lista è ordinata.        |
| **Selection Sort**  | Ordinamento iterativo | Seleziona il minimo elemento e lo mette nella posizione corretta.                      |
| **Insertion Sort**  | Ordinamento iterativo | Inserisce ogni elemento nella posizione giusta in una lista già parzialmente ordinata. |
| **Quick Sort**      | Divide et impera      | Sceglie un pivot e divide la lista in due sotto-liste da ordinare ricorsivamente.      |
| **Merge Sort**      | Divide et impera      | Divide la lista in parti più piccole, le ordina e le unisce.                           |
| **Binary Search**   | Ricerca               | Ricerca un elemento dimezzando la lista a ogni passo (solo su liste ordinate).         |
| **Linear Search**   | Ricerca               | Scorre tutti gli elementi fino a trovare quello cercato.                               |
| **Dijkstra**        | Ottimizzazione        | Trova il percorso più breve in un grafo pesato.                                        |
| **Euclideo (GCD)**  | Matematico ricorsivo  | Calcola il massimo comune divisore di due numeri.                                      |
| **Fattoriale (n!)** | Ricorsivo             | Calcola il prodotto di tutti i numeri da 1 a n.                                        |

---

### 🧮 **Esempio di algoritmo (in pseudocodice)**

**Problema:** Trovare il numero massimo tra due numeri.

```
leggi a
leggi b
se a > b allora
    stampa a
altrimenti
    stampa b
fine se
```

➡️ Tipo: **condizionale**.

---

### ⚙️ **Caratteristiche di un buon algoritmo**

1. **Correttezza** – fornisce il risultato giusto.
2. **Efficienza** – richiede meno tempo e risorse.
3. **Chiarezza** – è leggibile e comprensibile.
4. **Generalità** – si adatta a casi simili.
5. **Modularità** – può essere scomposto in parti riutilizzabili.

---

### 🧠 **Esercizi di applicazione**

1. Scrivi un algoritmo per trovare il valore minimo in un array.
2. Descrivi passo per passo l’algoritmo per ordinare tre numeri in ordine crescente.
3. Rappresenta con un diagramma di flusso un algoritmo di calcolo del fattoriale.
4. Spiega la differenza tra algoritmo iterativo e ricorsivo.

---

### 💬 **In sintesi**

> Un **algoritmo** è la mente logica del programma:
> la sua **chiarezza, correttezza ed efficienza** determinano la qualità del software.

