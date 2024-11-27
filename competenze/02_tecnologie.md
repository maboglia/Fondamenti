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

