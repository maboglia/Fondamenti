# 💻 **Esercitazione Pratica – Funzioni Base: Contatore e Navigazione tra Frasi**

### 🎯 **Obiettivo**

Imparare a usare:

* **variabili**,
* **array/liste**,
* **funzioni** e **controlli logici**,
  per scorrere elementi in una sequenza (avanti e indietro) in modo circolare.

---

### 🧩 **Consegna**

Realizza un programma che:

1. Crei una **lista (array)** di frasi.
2. Usi un **contatore** per indicare quale frase è attualmente mostrata.
3. Implementi due funzioni:

   * `next()` → mostra la frase successiva, tornando alla prima se si supera l’ultima.
   * `prev()` → mostra la frase precedente, tornando all’ultima se si è all’inizio.
4. Visualizzi la frase corrente ogni volta che viene chiamata una delle due funzioni.

---

## 🔹 **Parte 1 – Pseudocodice**

```
INIZIO
  Dichiara array FRASI ← ["Ciao mondo", "Imparo la logica", "Programmare è divertente", "Fine dell’elenco"]
  Dichiara CONTATORE ← 0

  FUNZIONE mostraFrase()
      Stampa FRASI[CONTATORE]
  FINE FUNZIONE

  FUNZIONE next()
      CONTATORE ← CONTATORE + 1
      SE CONTATORE >= lunghezza(FRASI) ALLORA
          CONTATORE ← 0
      FINE SE
      mostraFrase()
  FINE FUNZIONE

  FUNZIONE prev()
      CONTATORE ← CONTATORE - 1
      SE CONTATORE < 0 ALLORA
          CONTATORE ← lunghezza(FRASI) - 1
      FINE SE
      mostraFrase()
  FINE FUNZIONE

  // ESECUZIONE DI TEST
  mostraFrase()
  next()
  next()
  prev()
FINE
```

---

## 🐍 **Parte 2 – Implementazione in Python**

```python
# Lista di frasi
frasi = ["Ciao mondo", "Imparo la logica", "Programmare è divertente", "Fine dell’elenco"]
counter = 0

def mostra_frase():
    print(frasi[counter])

def next():
    global counter
    counter += 1
    if counter >= len(frasi):
        counter = 0
    mostra_frase()

def prev():
    global counter
    counter -= 1
    if counter < 0:
        counter = len(frasi) - 1
    mostra_frase()

# Esecuzione di esempio
mostra_frase()  # Mostra la prima
next()          # Passa alla successiva
next()          # Passa alla successiva
prev()          # Torna indietro
```

📘 *Nota didattica:*
Questo esercizio mostra l’uso delle **variabili globali**, del **controllo dei limiti di array** e del **riutilizzo del codice tramite funzioni**.

---

## 🌐 **Parte 3 – Implementazione in JavaScript**

```javascript
// Array di frasi
const frasi = ["Ciao mondo", "Imparo la logica", "Programmare è divertente", "Fine dell’elenco"];
let counter = 0;

function mostraFrase() {
  console.log(frasi[counter]);
}

function next() {
  counter++;
  if (counter >= frasi.length) {
    counter = 0;
  }
  mostraFrase();
}

function prev() {
  counter--;
  if (counter < 0) {
    counter = frasi.length - 1;
  }
  mostraFrase();
}

// Esecuzione di esempio
mostraFrase(); // Mostra la prima
next();        // Passa alla successiva
next();        // Passa alla successiva
prev();        // Torna indietro
```

📗 *Nota didattica:*
In JavaScript, la logica è la stessa: cambiano solo la sintassi e la gestione delle variabili (`let`, `const`).

---

## 🎓 **Obiettivi didattici**

* Comprendere il concetto di **indice** e **limiti di array**.
* Utilizzare **funzioni** per organizzare il codice.
* Applicare la **logica condizionale** e i **cicli di controllo**.
* Capire la differenza tra **struttura sequenziale** e **modulare**.

---

## 🧠 **Estensioni proposte**

* Aggiungere una funzione `random()` per mostrare una frase casuale.
* Visualizzare il numero della frase corrente (`Frase 2 di 4`).
* Simulare l’interazione con pulsanti “Next” e “Prev” in un’interfaccia web.

