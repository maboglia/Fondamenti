### **Risposte per Ambienti e strumenti per la produzione di pagine web**

---

#### **Compito pratico (10 punti)**

**Esempio di svolgimento**:

1. **Creazione di una pagina web base**:
   - Utilizzo di **Visual Studio Code** come ambiente di sviluppo.
   - Creazione di file **index.html**, **style.css**, e **script.js**:
     - **HTML**:
       ```html
       <!DOCTYPE html>
       <html lang="en">
       <head>
           <meta charset="UTF-8">
           <meta name="viewport" content="width=device-width, initial-scale=1.0">
           <title>Pagina Base</title>
           <link rel="stylesheet" href="style.css">
       </head>
       <body>
           <header>
               <h1>Benvenuti nel mio sito!</h1>
           </header>
           <main>
               <p>Questa è una pagina base creata con HTML, CSS e JavaScript.</p>
               <button id="greetButton">Clicca qui</button>
           </main>
           <script src="script.js"></script>
       </body>
       </html>
       ```
     - **CSS (style.css)**:
       ```css
       body {
           font-family: Arial, sans-serif;
           text-align: center;
           margin: 0;
           padding: 0;
           background-color: #f0f0f0;
       }

       header {
           background-color: #4CAF50;
           color: white;
           padding: 1rem;
       }

       main {
           margin: 2rem;
       }

       button {
           padding: 0.5rem 1rem;
           background-color: #4CAF50;
           color: white;
           border: none;
           cursor: pointer;
       }

       button:hover {
           background-color: #45a049;
       }
       ```
     - **JavaScript (script.js)**:
       ```javascript
       document.getElementById("greetButton").addEventListener("click", function () {
           alert("Ciao! Grazie per aver visitato il sito.");
       });
       ```

2. **Utilizzo di GitHub**:
   - Inizializzazione di un repository locale:
     ```bash
     git init
     git add .
     git commit -m "Inizializzazione progetto web base"
     ```
   - Collegamento a un repository remoto e push su GitHub:
     ```bash
     git remote add origin https://github.com/username/repository-name.git
     git push -u origin main
     ```

---

#### **Domande teoriche (5 punti)**

**Domanda: Elencare i principali strumenti e ambienti utilizzati per lo sviluppo web e descriverne uno.**

**Risposta**:

1. **Principali strumenti e ambienti**:
   - **Visual Studio Code**: Un editor di codice leggero e altamente estensibile, con supporto per numerosi linguaggi e framework.
   - **IntelliJ IDEA**: Ideale per applicazioni Java ma supporta anche lo sviluppo web.
   - **Sublime Text**: Un editor di testo semplice ma potente per lo sviluppo front-end.
   - **Git e GitHub**: Per la gestione del controllo versione e la collaborazione su codice sorgente.
   - **Browser DevTools**: Strumenti di sviluppo integrati nei browser per il debug e l’ottimizzazione del codice.
   - **Postman**: Per testare e documentare API web.

2. **Descrizione di uno strumento: Visual Studio Code**:
   - **Caratteristiche principali**:
     - Supporta estensioni per HTML, CSS, JavaScript e molti altri linguaggi.
     - Include un terminale integrato per eseguire comandi senza lasciare l'IDE.
     - Strumenti di debug integrati per il testing di codice.
   - **Utilità nello sviluppo web**:
     - Permette la scrittura e il testing rapido del codice.
     - Integra strumenti come Prettier per la formattazione automatica e Live Server per visualizzare in tempo reale le modifiche al codice.

---

### **Quiz: Ambienti e Strumenti per la Produzione di Pagine Web**

1. **Qual è l'ambiente di sviluppo utilizzato nell'esempio di progetto per la creazione di una pagina web base?**
   - A) Sublime Text
   - B) Visual Studio Code
   - C) IntelliJ IDEA
   - D) Notepad++

   **Risposta corretta**: B) Visual Studio Code

---

2. **Quale file contiene la struttura di base di una pagina web, come titoli e paragrafi?**
   - A) style.css
   - B) script.js
   - C) index.html
   - D) config.json

   **Risposta corretta**: C) index.html

---

3. **Quale comando Git viene utilizzato per inizializzare un repository locale?**
   - A) git start
   - B) git init
   - C) git create
   - D) git clone

   **Risposta corretta**: B) git init

---

4. **In che file è definito il design e lo stile della pagina web (come i colori e il layout)?**
   - A) script.js
   - B) config.json
   - C) style.css
   - D) index.html

   **Risposta corretta**: C) style.css

---

5. **Quale strumento viene utilizzato per gestire il controllo versione e collaborare su progetti di codice sorgente?**
   - A) Visual Studio Code
   - B) Git e GitHub
   - C) Postman
   - D) Sublime Text

   **Risposta corretta**: B) Git e GitHub

---

6. **Qual è la funzione principale di Postman?**
   - A) Creare una struttura HTML
   - B) Testare e documentare API web
   - C) Scrivere codice JavaScript
   - D) Debuggare codice CSS

   **Risposta corretta**: B) Testare e documentare API web

---

7. **Quale comando Git viene utilizzato per collegare un repository locale a uno remoto su GitHub?**
   - A) git push
   - B) git pull
   - C) git remote add origin
   - D) git commit

   **Risposta corretta**: C) git remote add origin

---

8. **Quale estensione di Visual Studio Code è utile per vedere in tempo reale le modifiche al codice?**
   - A) GitLens
   - B) Live Server
   - C) Prettier
   - D) ESLint

   **Risposta corretta**: B) Live Server

---

9. **Quale file contiene il codice JavaScript per aggiungere interattività alla pagina web, come il comportamento di un pulsante?**
   - A) style.css
   - B) index.html
   - C) script.js
   - D) config.json

   **Risposta corretta**: C) script.js

---

10. **Quale delle seguenti affermazioni descrive correttamente Visual Studio Code?**
    - A) È un ambiente di sviluppo solo per applicazioni Java
    - B) È un editor di codice estensibile con supporto per molti linguaggi
    - C) È un compilatore per il linguaggio C++
    - D) È un software esclusivo per la scrittura di codice HTML

    **Risposta corretta**: B) È un editor di codice estensibile con supporto per molti linguaggi

