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

