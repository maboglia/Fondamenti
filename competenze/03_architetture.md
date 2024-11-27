# **1. Descrivere l'architettura di un server web (es. Apache, Nginx):**

Un **server web** è un software che gestisce le richieste HTTP/HTTPS ricevute dai client (ad esempio browser) e fornisce le risposte, come pagine web o file.

#### **Architettura generale**

1. **Listener delle richieste**:
   - Il server web rimane in ascolto su una o più porte (di solito la porta 80 per HTTP e 443 per HTTPS).
2. **Gestione delle richieste**:
   - Interpreta le richieste inviate dal client e identifica il contenuto richiesto (file statico o risorsa dinamica).
3. **Gestione statica e dinamica**:
   - **Contenuti statici**: Fornisce file come HTML, immagini, CSS, JavaScript direttamente dal file system.
   - **Contenuti dinamici**: Collabora con linguaggi di scripting (es. PHP, Python) o applicazioni lato server per generare risposte personalizzate.
4. **Moduli e plugin**:
   - Apache e Nginx utilizzano moduli per estendere le funzionalità (es. mod_rewrite per URL, SSL per connessioni sicure).
5. **Caching e bilanciamento del carico**:
   - Nginx eccelle come proxy inverso e gestore del bilanciamento del carico per ottimizzare le prestazioni.

#### **Differenze tra Apache e Nginx**

- **Apache**:
  - Architettura basata su processi (ogni richiesta è gestita da un thread o processo).
  - Estensibile tramite moduli (es. mod_php, mod_ssl).
- **Nginx**:
  - Architettura asincrona e basata su eventi, altamente efficiente con molte richieste concorrenti.
  - Ottimizzato per il reverse proxy e il caching.

---

### **2. Spiegare il concetto di richieste GET e POST e come il server le elabora:**

Le richieste **GET** e **POST** sono i metodi HTTP più comuni utilizzati dai client per interagire con il server.

- **GET**:
  - Utilizzata per richiedere dati al server.
  - I parametri vengono inviati nell'URL (es. `http://example.com/page?param1=value1&param2=value2`).
  - È **idempotente** (ripetere la stessa richiesta non cambia lo stato del server).
  - Esempi: Caricamento di una pagina web, ricerca su Google.

- **POST**:
  - Utilizzata per inviare dati al server per l'elaborazione.
  - I dati vengono inclusi nel corpo della richiesta HTTP, non nell'URL.
  - Non è idempotente (ogni richiesta potrebbe alterare lo stato del server).
  - Esempi: Inviare un modulo di contatto, effettuare il login.

**Elaborazione da parte del server**:

1. Il server interpreta il metodo HTTP della richiesta.
2. Nel caso di **GET**, il server utilizza i parametri nell'URL per restituire il contenuto richiesto.
3. Nel caso di **POST**, il server elabora i dati del corpo della richiesta per generare una risposta (es. inserimento dati nel database).

---

### **3. Analizzare il ciclo di vita di una richiesta HTTP:**

Il ciclo di vita di una richiesta HTTP può essere suddiviso nei seguenti passaggi:

1. **Invio della richiesta dal client**:
   - Un client (ad esempio un browser) invia una richiesta HTTP (GET, POST, ecc.) a un server specificato da un URL.
   - La richiesta include informazioni come metodo HTTP, intestazioni (headers) e, in alcuni casi, un corpo (body).

2. **Risoluzione DNS**:
   - L'URL fornito dal client viene tradotto in un indirizzo IP dal sistema DNS, che identifica il server di destinazione.

3. **Connessione TCP/IP**:
   - Il client stabilisce una connessione al server utilizzando il protocollo TCP/IP.
   - Se la comunicazione è sicura, viene negoziato un certificato SSL/TLS.

4. **Gestione della richiesta dal server**:
   - Il server riceve la richiesta e la analizza.
   - Se il contenuto richiesto è:
     - **Statico**, viene restituito direttamente (es. un file HTML o immagine).
     - **Dinamico**, il server collabora con un'applicazione lato server (es. PHP) per generare la risposta.

5. **Invio della risposta**:
   - Il server invia una risposta HTTP contenente un codice di stato (es. 200 OK, 404 Not Found) e i dati richiesti (es. HTML, JSON, ecc.).

6. **Rendering lato client**:
   - Il client elabora la risposta ricevuta e la mostra all'utente, ad esempio visualizzando una pagina web nel browser.

---

Ecco il quiz a risposta multipla basato sugli argomenti che hai fornito:

---

### **Quiz: Architettura e Funzionalità del Server Web**

1. **Qual è la funzione principale di un server web?**
   - A) Eseguire script lato client
   - B) Gestire le richieste HTTP/HTTPS e fornire risposte
   - C) Creare contenuti dinamici
   - D) Gestire solo contenuti statici

   **Risposta corretta**: B) Gestire le richieste HTTP/HTTPS e fornire risposte

---

2. **Cosa fa un "listener" di un server web?**
   - A) Risolve gli indirizzi DNS
   - B) Rimane in ascolto su una porta specifica per ricevere richieste dai client
   - C) Genera contenuti dinamici dal database
   - D) Cripta le comunicazioni tra il client e il server

   **Risposta corretta**: B) Rimane in ascolto su una porta specifica per ricevere richieste dai client

---

3. **Qual è la differenza principale tra Apache e Nginx?**
   - A) Apache è ottimizzato per il reverse proxy, mentre Nginx è migliore per il bilanciamento del carico
   - B) Apache utilizza un'architettura basata su eventi, mentre Nginx è basato su processi
   - C) Apache gestisce meglio il caching, mentre Nginx è più efficiente nel gestire molteplici richieste concorrenti
   - D) Apache è più adatto per contenuti statici, mentre Nginx è migliore per contenuti dinamici

   **Risposta corretta**: C) Apache gestisce meglio il caching, mentre Nginx è più efficiente nel gestire molteplici richieste concorrenti

---

4. **Come vengono gestiti i contenuti dinamici in un server web?**
   - A) Vengono forniti direttamente dal file system senza alcuna elaborazione
   - B) Vengono generati in tempo reale dal server utilizzando linguaggi di scripting lato server
   - C) Vengono elaborati tramite cache per ridurre il carico del server
   - D) Vengono gestiti solo tramite database relazionali

   **Risposta corretta**: B) Vengono generati in tempo reale dal server utilizzando linguaggi di scripting lato server

---

5. **In che cosa differiscono le richieste HTTP GET e POST?**
   - A) Le richieste GET inviano dati nel corpo della richiesta, mentre POST li invia nell'URL
   - B) Le richieste POST sono idempotenti, mentre GET non lo è
   - C) Le richieste GET sono utilizzate per inviare dati al server, mentre POST per richiedere informazioni
   - D) Le richieste GET inviano dati nell'URL, mentre POST nel corpo della richiesta

   **Risposta corretta**: D) Le richieste GET inviano dati nell'URL, mentre POST nel corpo della richiesta

---

6. **Qual è la principale caratteristica della richiesta HTTP GET?**
   - A) I dati vengono inviati nel corpo della richiesta
   - B) È idempotente, quindi non cambia lo stato del server
   - C) Viene utilizzata per inviare informazioni sensibili
   - D) Non è supportata dai browser moderni

   **Risposta corretta**: B) È idempotente, quindi non cambia lo stato del server

---

7. **Cosa accade durante la fase di "Risoluzione DNS" di una richiesta HTTP?**
   - A) Il client stabilisce una connessione TCP/IP con il server
   - B) L'URL fornito viene tradotto in un indirizzo IP per localizzare il server di destinazione
   - C) Il server restituisce una risposta con il codice di stato HTTP
   - D) Il server invia un certificato SSL/TLS per la crittografia dei dati

   **Risposta corretta**: B) L'URL fornito viene tradotto in un indirizzo IP per localizzare il server di destinazione

---

8. **Qual è il risultato di una richiesta HTTP 404?**
   - A) La richiesta è stata elaborata con successo
   - B) Il server non ha trovato la risorsa richiesta
   - C) Il server ha ricevuto la richiesta, ma non può processarla
   - D) Il client non ha i permessi per visualizzare la risorsa richiesta

   **Risposta corretta**: B) Il server non ha trovato la risorsa richiesta

---

9. **In quale fase del ciclo di vita di una richiesta HTTP il server invia i dati richiesti al client?**
   - A) Durante la risoluzione DNS
   - B) Durante la gestione della richiesta
   - C) Durante l'invio della risposta
   - D) Durante la connessione TCP/IP

   **Risposta corretta**: C) Durante l'invio della risposta

