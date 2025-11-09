# 🧭 **Scheda Didattica – Paradigmi di Sviluppo**

### 🎯 **Obiettivo**

Comprendere i principali **modelli architetturali** utilizzati nello sviluppo di applicazioni moderne e come questi organizzano il codice per renderlo più **chiaro, modulare e manutenibile**.

---

## 🧩 **1. Paradigma MVC – Model View Controller**

### 📘 **Definizione**

Il **pattern MVC (Model-View-Controller)** è un approccio architetturale che **divide un’applicazione in tre parti distinte**, ciascuna con un compito specifico.
Serve per **separare la logica dei dati**, la **logica di controllo** e la **presentazione**.

---

### ⚙️ **Struttura del pattern MVC**

| Componente                   | Descrizione                                                                                               | Esempio pratico                                           |
| ---------------------------- | --------------------------------------------------------------------------------------------------------- | --------------------------------------------------------- |
| **Model (Modello)**          | Contiene i **dati** e la **logica di accesso ai dati** (es. connessioni al database, regole di business). | Tabelle utenti, classi `User`, `Product`, DAO, entità JPA |
| **View (Vista)**             | Gestisce l’interfaccia grafica o l’output mostrato all’utente.                                            | Pagine HTML, interfacce GUI, file Blade/Thymeleaf         |
| **Controller (Controllore)** | Riceve le richieste dell’utente, elabora i dati usando il Model e aggiorna la View.                       | File PHP, Controller Java Spring, Controller Laravel      |

---

### 🔄 **Flusso logico di funzionamento**

1. L’utente interagisce con la **View** (es. clic su un bottone).
2. La **View** invia una richiesta al **Controller**.
3. Il **Controller** elabora la richiesta e comunica con il **Model** per ottenere o aggiornare i dati.
4. Il **Model** restituisce i dati al **Controller**, che li passa alla **View** per la visualizzazione.

---

### 💡 **Vantaggi dell’architettura MVC**

* ✅ Separazione chiara tra dati, logica e interfaccia.
* 🔄 Maggiore riusabilità del codice.
* 👥 Facile collaborazione tra sviluppatori (frontend ↔ backend).
* 🧩 Facilita test, manutenzione e aggiornamenti.

---

### 🧠 **Esempi di framework che usano MVC**

| Linguaggio     | Framework MVC         |
| -------------- | --------------------- |
| **Java**       | Spring MVC            |
| **PHP**        | Laravel, Symfony      |
| **Python**     | Django                |
| **JavaScript** | Express.js, AngularJS |
| **.NET**       | ASP.NET MVC           |

---

### 📊 **Rappresentazione schematica**

```
+----------+        +-------------+        +----------+
|   View   | <----> |  Controller | <----> |  Model   |
+----------+        +-------------+        +----------+
   ↑ Interfaccia       ↑ Logica di controllo   ↑ Dati e regole
```

---

## 🌐 **2. Paradigma SPA – Single Page Application**

### 📘 **Definizione**

Una **SPA (Single Page Application)** è un tipo di applicazione web che **carica una sola pagina HTML iniziale** e poi **aggiorna dinamicamente i contenuti** senza ricaricare l’intera pagina dal server.

---

### ⚙️ **Come funziona**

* Al primo accesso, il browser carica **una pagina principale (index.html)** e i file JavaScript associati.
* Ogni interazione dell’utente (clic, navigazione interna) aggiorna **solo una parte della pagina**, grazie a chiamate asincrone (AJAX o API REST).
* I dati vengono recuperati dal server in formato **JSON**, evitando ricaricamenti completi.

---

### 💡 **Vantaggi**

* 🚀 Esperienza utente più fluida e veloce.
* ⚡ Riduzione del traffico di rete (si scambiano solo dati, non pagine intere).
* 📱 Perfetta integrazione con interfacce reattive e API REST.
* 🔁 Facilità di aggiornamento in tempo reale.

---

### ⚠️ **Svantaggi**

* ❌ Maggiore complessità iniziale del codice.
* 🔒 Gestione più complessa della sicurezza e della navigazione (routing).
* 🧩 SEO (posizionamento sui motori di ricerca) più difficile da gestire.

---

### 🧠 **Framework e librerie SPA**

| Linguaggio / Stack  | Esempi                                     |
| ------------------- | ------------------------------------------ |
| **JavaScript**      | React, Angular, Vue.js, Svelte             |
| **Backend + API**   | Node.js, Spring Boot, Laravel con API REST |
| **Mobile (ibrido)** | Ionic, React Native                        |

---

### 🔄 **Schema di funzionamento SPA**

```
[ Utente ]
    ↓
[ index.html ]  <-- caricata una sola volta
    ↓
[ JavaScript ]  → richiede dati da → [ API / Server ]
    ↓
Aggiorna solo le parti necessarie della pagina
```

---

## 📘 **Confronto sintetico MVC vs SPA**

| Caratteristica       | MVC                                       | SPA                                                    |
| -------------------- | ----------------------------------------- | ------------------------------------------------------ |
| Struttura            | Suddivisione tra Model, View e Controller | Tutta l’app in un’unica pagina, con logica lato client |
| Aggiornamento pagina | Completo (server-side)                    | Parziale (client-side)                                 |
| Linguaggi tipici     | Java, PHP, Python                         | JavaScript, TypeScript                                 |
| Prestazioni          | Dipende dal server                        | Molto rapide lato utente                               |
| Esempi               | Spring MVC, Laravel, Django               | React, Angular, Vue.js                                 |

---

## 🧩 **Esercizi di riflessione**

1. Descrivi con parole tue cosa separa il pattern MVC.
2. Qual è la differenza principale tra un’applicazione MVC e una SPA?
3. Cita due esempi di framework per ciascun paradigma.
4. Spiega perché la SPA è più veloce di una web app tradizionale.

---

### 💬 **Conclusione**

> I **paradigmi di sviluppo** aiutano a organizzare il codice in modo ordinato e scalabile.
> **MVC** struttura la logica di un’app, mentre **SPA** ottimizza l’esperienza utente nelle applicazioni web moderne.

