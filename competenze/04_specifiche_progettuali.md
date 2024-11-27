# **Specifiche di progetto: architettura e funzionalità dei siti web**

---

#### **Compito pratico (20 punti)**

**Esempio di svolgimento**:

1. **Creazione di uno schema dell'architettura del sito**:
   - **Sitemap**:
     - Pagina principale (Home).
     - Pagina "Chi siamo".
     - Pagina "Servizi" (con sottopagine per ogni servizio).
     - Pagina "Contatti".
     - Area riservata per gli utenti registrati (Login, Dashboard, Profilo).

   - **Schema di flusso (workflow)**:
     - Il visitatore accede alla homepage.
     - Può navigare tra le sezioni "Chi siamo", "Servizi", o "Contatti".
     - Gli utenti registrati possono accedere all'area riservata tramite login e visualizzare il loro profilo o gestire le loro impostazioni.

2. **Definizione delle funzionalità principali e modello MVC**:
   - **Modello MVC**:
     - **Model**:
       - Definizione delle entità principali (es. Utente, Servizio, Messaggio di contatto).
       - Gestione del database per la memorizzazione e il recupero dei dati.
     - **View**:
       - Interfacce utente per ogni pagina della sitemap.
       - Utilizzo di framework come Bootstrap per layout responsive.
     - **Controller**:
       - Gestione della logica di navigazione (es. autenticazione utente, invio di moduli).
       - Collegamento tra le richieste del client e il modello.

---

#### **Domande teoriche (10 punti)**

**Domanda 1: Spiegare i passaggi chiave per convertire un documento di specifiche in un'architettura funzionale.**

**Risposta**:

1. **Analisi delle specifiche**:
   - Identificare i requisiti funzionali (es. cosa deve fare il sito) e non funzionali (es. prestazioni, sicurezza).
   - Comprendere gli obiettivi del progetto e il pubblico di riferimento.

2. **Progettazione dell'architettura del sito**:
   - Creare una sitemap per rappresentare la struttura logica delle pagine.
   - Definire il flusso di navigazione tra le pagine.

3. **Definizione delle funzionalità**:
   - Identificare le funzionalità principali da implementare (es. login, registrazione, gestione dei dati).
   - Associare ogni funzionalità a componenti del modello MVC:
     - Modello: Entità e loro relazioni.
     - Controller: Logica applicativa e gestione delle richieste.
     - Vista: Interfaccia utente.

4. **Scelta delle tecnologie**:
   - Selezionare framework e strumenti appropriati (es. Laravel per backend, Bootstrap per frontend).

5. **Documentazione**:
   - Creare diagrammi e schemi (es. ER diagram per il database, diagrammi di flusso) per visualizzare l'architettura.

---

### **Quiz: Architettura e Funzionalità dei Siti Web**

1. **Qual è il primo passo nella progettazione di un sito web a partire dalle specifiche del progetto?**
   - A) Creare una sitemap
   - B) Analizzare i requisiti funzionali e non funzionali
   - C) Scrivere il codice HTML
   - D) Scegliere il framework di sviluppo

   **Risposta corretta**: B) Analizzare i requisiti funzionali e non funzionali

---

2. **Cosa rappresenta una sitemap in un progetto di sito web?**
   - A) Una lista dei contenuti da includere nelle pagine
   - B) Una struttura che mostra la navigazione tra le pagine del sito
   - C) Un elenco di parole chiave per l'ottimizzazione SEO
   - D) Un diagramma che descrive la logica di programmazione del sito

   **Risposta corretta**: B) Una struttura che mostra la navigazione tra le pagine del sito

---

3. **Qual è il ruolo del "Controller" nel modello MVC (Model-View-Controller)?**
   - A) Gestire la logica di presentazione dell'interfaccia utente
   - B) Gestire le richieste del client e coordinare il flusso di dati tra modello e vista
   - C) Gestire la comunicazione tra database e server
   - D) Definire la struttura e la logica del database

   **Risposta corretta**: B) Gestire le richieste del client e coordinare il flusso di dati tra modello e vista

---

4. **Nel modello MVC, dove vengono gestiti i dati relativi agli utenti e ai servizi?**
   - A) Controller
   - B) View
   - C) Model
   - D) Database

   **Risposta corretta**: C) Model

---

5. **Quale framework è spesso utilizzato per implementare la parte backend di un sito web, in particolare per gestire la logica applicativa e il database?**
   - A) Bootstrap
   - B) Angular
   - C) Laravel
   - D) React

   **Risposta corretta**: C) Laravel

---

6. **Cos'è un "workflow" in un progetto di sito web?**
   - A) Un diagramma che rappresenta il flusso di lavoro tra il server e il client
   - B) La sequenza di attività e interazioni degli utenti con il sito
   - C) Una lista delle tecnologie utilizzate nel progetto
   - D) Un diagramma che rappresenta la struttura dei file del sito

   **Risposta corretta**: B) La sequenza di attività e interazioni degli utenti con il sito

---

7. **Quale delle seguenti è una caratteristica di una "area riservata" in un sito web?**
   - A) È accessibile senza alcuna autenticazione
   - B) Contiene solo contenuti statici
   - C) Richiede login per accedere e visualizzare informazioni private o personalizzate
   - D) È una sezione visibile a tutti, senza restrizioni

   **Risposta corretta**: C) Richiede login per accedere e visualizzare informazioni private o personalizzate

---

8. **Quale tecnologia è spesso utilizzata per creare layout responsivi e garantire la compatibilità su dispositivi mobili?**
   - A) Laravel
   - B) JavaScript
   - C) Bootstrap
   - D) PHP

   **Risposta corretta**: C) Bootstrap

---

9. **In un sito web, cosa si intende per "funzionalità dinamiche"?**
   - A) Funzionalità che non richiedono interazione dell'utente
   - B) Funzionalità che si basano su contenuti fissi, senza modifiche
   - C) Funzionalità che vengono generate in tempo reale dal server, come la gestione utenti o contenuti personalizzati
   - D) Funzionalità che servono solo per la visualizzazione di dati statici

   **Risposta corretta**: C) Funzionalità che vengono generate in tempo reale dal server, come la gestione utenti o contenuti personalizzati

---

10. **Cos'è un diagramma ER (Entity-Relationship) in un progetto di sviluppo di un sito web?**
    - A) Un diagramma che mostra la relazione tra le pagine del sito
    - B) Un diagramma che descrive la struttura e le relazioni tra le entità nel database
    - C) Un diagramma che rappresenta la logica applicativa del sito
    - D) Un diagramma che descrive il flusso delle richieste tra client e server

    **Risposta corretta**: B) Un diagramma che descrive la struttura e le relazioni tra le entità nel database
