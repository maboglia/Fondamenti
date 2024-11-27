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