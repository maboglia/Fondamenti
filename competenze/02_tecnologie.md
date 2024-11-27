# **1. Descrivere i principali protocolli di rete (es. HTTP, HTTPS, FTP):**

- **HTTP (HyperText Transfer Protocol)**:
  - Protocollo utilizzato per il trasferimento di dati sul web, come pagine HTML, immagini, video, ecc.
  - Funziona secondo un modello client-server: il client (ad esempio un browser) invia richieste al server, che risponde con i dati richiesti.
  - È **stateless**, cioè non conserva informazioni tra una richiesta e l'altra.

- **HTTPS (HTTP Secure)**:
  - Variante sicura di HTTP che utilizza la crittografia (ad esempio con SSL/TLS) per proteggere i dati trasmessi.
  - Garantisce confidenzialità, integrità e autenticazione, rendendo le comunicazioni sicure contro intercettazioni e attacchi man-in-the-middle.

- **FTP (File Transfer Protocol)**:
  - Protocollo per il trasferimento di file tra due dispositivi in rete.
  - Può essere utilizzato sia per il caricamento che per il download di file.
  - Meno sicuro rispetto ai protocolli moderni, ma ancora usato in alcuni contesti specifici.

---

### **2. Spiegare come funziona una connessione TCP/IP:**

- **TCP/IP (Transmission Control Protocol/Internet Protocol)** è il modello di riferimento per le reti moderne, composto da:
  - **TCP**: Gestisce la trasmissione dei dati suddividendoli in pacchetti, assicurandosi che arrivino a destinazione nell'ordine corretto e senza errori.
  - **IP**: Si occupa dell'instradamento dei pacchetti tra dispositivi attraverso la rete utilizzando indirizzi IP.

**Fasi principali di una connessione TCP/IP:**
1. **Handshake iniziale**: Il client e il server stabiliscono una connessione utilizzando un processo chiamato "Three-Way Handshake".
2. **Trasmissione dei dati**: I pacchetti vengono inviati e ricevuti attraverso la rete, con controlli di errore per garantire l'integrità dei dati.
3. **Chiusura della connessione**: Una volta completato il trasferimento, la connessione viene chiusa per liberare risorse.

---

### **3. Identificare differenze tra tecnologie client-side e server-side:**

- **Client-side**:
  - Riguarda le operazioni eseguite dal browser o dispositivo dell'utente.
  - Linguaggi e tecnologie utilizzati:
    - **HTML**: Struttura della pagina web.
    - **CSS**: Stile e design visivo.
    - **JavaScript**: Interattività e dinamismo (es. validazione dei form, animazioni, ecc.).
  - Esempi: Validazione del form prima di inviare i dati al server.

- **Server-side**:
  - Si riferisce alle operazioni eseguite sul server che ospita il sito o l'applicazione web.
  - Linguaggi e tecnologie utilizzati:
    - **PHP**, **Python**, **Java**, **Node.js**, ecc.
    - **Database** come MySQL, PostgreSQL, MongoDB per gestire dati dinamici.
  - Esempi: Autenticazione utenti, elaborazione di query sui database, generazione dinamica di contenuti.

**Principale differenza**: Il client-side opera sull'interfaccia utente, mentre il server-side si occupa della logica e gestione dei dati.

---

### **Quiz: Protocolli di rete e Tecnologie Web**

1. **Qual è la principale caratteristica di HTTP?**
   - A) È un protocollo sicuro che utilizza la crittografia
   - B) È un protocollo che non conserva informazioni tra una richiesta e l'altra
   - C) Funziona solo con il trasferimento di file
   - D) È utilizzato per la gestione delle connessioni FTP

   **Risposta corretta**: B) È un protocollo che non conserva informazioni tra una richiesta e l'altra

---

2. **Qual è la differenza principale tra HTTP e HTTPS?**
   - A) HTTPS non supporta la crittografia dei dati
   - B) HTTPS utilizza una connessione non sicura per la trasmissione dei dati
   - C) HTTPS garantisce la sicurezza tramite crittografia (SSL/TLS)
   - D) HTTP è utilizzato solo per il trasferimento di immagini, mentre HTTPS supporta solo pagine HTML

   **Risposta corretta**: C) HTTPS garantisce la sicurezza tramite crittografia (SSL/TLS)

---

3. **Che cos'è il protocollo FTP?**
   - A) Un protocollo utilizzato per navigare sul web in modo sicuro
   - B) Un protocollo per il trasferimento di file tra dispositivi
   - C) Un protocollo utilizzato per garantire la sicurezza dei dati
   - D) Un protocollo per la gestione delle connessioni client-server

   **Risposta corretta**: B) Un protocollo per il trasferimento di file tra dispositivi

---

4. **Come funziona una connessione TCP/IP?**
   - A) TCP si occupa della trasmissione dei dati, mentre IP gestisce l'instradamento
   - B) TCP si occupa solo dell'instradamento, mentre IP della trasmissione
   - C) TCP/IP è un protocollo per il trasferimento di immagini
   - D) TCP/IP non gestisce errori di trasmissione

   **Risposta corretta**: A) TCP si occupa della trasmissione dei dati, mentre IP gestisce l'instradamento

---

5. **Qual è la funzione principale di TCP nella connessione TCP/IP?**
   - A) Garantire che i pacchetti vengano inviati correttamente e nell'ordine giusto
   - B) Indirizzare i pacchetti di dati tra dispositivi
   - C) Gestire la crittografia dei dati
   - D) Fornire la protezione contro gli attacchi man-in-the-middle

   **Risposta corretta**: A) Garantire che i pacchetti vengano inviati correttamente e nell'ordine giusto

---

6. **Qual è la differenza principale tra tecnologie client-side e server-side?**
   - A) Il client-side gestisce la logica dei dati, mentre il server-side gestisce l'interfaccia utente
   - B) Il client-side esegue operazioni sul dispositivo dell'utente, mentre il server-side lavora sul server
   - C) Il client-side si occupa della gestione del database, mentre il server-side della navigazione web
   - D) Il client-side non utilizza linguaggi di programmazione, mentre il server-side sì

   **Risposta corretta**: B) Il client-side esegue operazioni sul dispositivo dell'utente, mentre il server-side lavora sul server

---

7. **Quali linguaggi vengono generalmente utilizzati nella programmazione client-side?**
   - A) PHP, Python, Java
   - B) HTML, CSS, JavaScript
   - C) SQL, MongoDB, PostgreSQL
   - D) Node.js, Java, Ruby

   **Risposta corretta**: B) HTML, CSS, JavaScript

---

8. **Quali linguaggi vengono generalmente utilizzati nella programmazione server-side?**
   - A) HTML, CSS, JavaScript
   - B) PHP, Python, Java, Node.js
   - C) MySQL, MongoDB, PostgreSQL
   - D) XML, JSON, AJAX

   **Risposta corretta**: B) PHP, Python, Java, Node.js

