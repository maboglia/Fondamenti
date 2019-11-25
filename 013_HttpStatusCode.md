# HTTP Status Code

* 200 – OK – Tutto bene
* 201 – OK – E’ stata creata una nuova risorsa
* 204 – OK – La risorsa è stata cancellata con successo
* 304 – Not modified – I dati non sono cambiati. Il cliente può utilizzare i dati nella cache
* 400 – Bad Request – Richiesta non valida. L’errore esatto dovrebbe essere spiegato nel payload dell’ errore (di cui ne parleremo a breve). Per esempio. “Il JSON non è valido”
* 401 – Unauthorized – La richiesta richiede una autenticazione dell’utente
* 403 – Forbidden – Il server ha capito la richiesta, ma in base ai diritti del richiedente l’accesso non è consentito.
* 404 – Not Found – Non vi è alcuna risorsa dietro l’URI richiesto.
* 422 – Unprocessable Entity – deve essere usato se il server non può elaborare il enitity, ad esempio se un’immagine non può essere formattata o campi obbligatori sono mancanti nel payload.
* 500 – Internal Server Error – gli sviluppatori di API dovrebbero evitare questo errore. Se si verifica un errore globale dell’applicazione, lo stacktrace deve esere loggato e non inviato nella risposta all’utente.

## Classi di messaggi legati allo status-code


* 1xx - Messaggio informativo
Questi codici di stato sono indicativi di una risposta temporanea. Prima di una normale risposta, al client potrebbero essere inviate una o più risposte 1xx.

   * 100 - Continua.
   * 101 - Scambio protocolli in corso.


* 2xx - Esito positivo
Questa classe di codici di stato indica che la richiesta del client è stata accettata dal server.

   * 200 - OK la richiesta ha avuto esito positivo, operazione riuscita. Questo codice di stato indica che la richiesta è stata elaborata correttamente da IIS.
   * 201 - Creato.
   * 202 - Accettato.
   * 203 - Informazioni non autorevoli.
   * 204 - Nessun contenuto.
   * 205 - Reimposta contenuto.
   * 206 - Contenuto parziale. Questo codice indica che un file è stato scaricato parzialmente. È possibile attivare la ripresa dei download interrotti o suddividere un download in più flussi simultanei.
   * 207 - Multi-Status (webDay) o (WebDAV IIS). Questo codice precede un messaggio XML che può contenere più codici di risposta separati, a seconda del numero di richieste secondarie eseguite.


* 3xx - Reindirizzamento
Per completare la richiesta, dovrà essere intrapresa un'ulteriore azione da parte del browser client. Ad esempio, è possibile che il browser debba richiedere una pagina diversa sul server o ripetere la richiesta utilizzando un server proxy.

   * 301 - Spostato permanentemente. Questa richiesta e tutte le richieste future devono essere indirizzate all'URI specificato.
   * 302 - Trovato. Questo codice spesso è rappresentato come "Oggetto spostato" per l'autenticazione basata su form. La risorsa richiesta risiede temporaneamente in un URI diverso. Dal momento che il reindirizzamento potrebbe essere modificato in alcuni casi, il client dovrà continuare a utilizzare l'URI di richiesta per le richieste future. Questa risposta può essere inserita nella cache solo se indicato da un campo di intestazione Cache-Control o Expires.
   * 304 - Non modificato. Dal client viene inviata la richiesta per un documento che si trova già nella cache e che non è stato modificato da quando è stato memorizzato nella cache. Anziché scaricare il documento dal server, sul client verrà utilizzata la copia presente nella cache.
   * 307 - Reindirizzamento temporaneo.


* 4xx - Errore del client
Si verifica un errore causato apparentemente dal client. Ad esempio, è possibile il client abbia inviato una richiesta per una pagina inesistente oppure che non vengano fornite informazioni di autenticazione valide.

   * 400 - Richiesta non valida.
   * 401 - Accesso negato. In IIS vengono definiti molti errori diversi con il codice 401, per indicare una causa più specifica dell'errore. Questi codici di errore specifici vengono visualizzati nel browser ma non nel registro errori di IIS.
    401.* 1 - Accesso non riuscito. Il tentativo di accesso ha esito negativo a causa di un nome utente o di una password non valida oppure per un problema con la configurazione di sistema.
    401.* 2 - Accesso non riuscito a causa della configurazione del server. Il tentativo di accesso ha esito negativo a causa di un nome utente o di una password non valida oppure per un problema con la configurazione di sistema.
    401.* 3 - Accesso negato dall'ACL sulla risorsa. Indica un problema a livello di autorizzazioni NTFS. Questo errore si può verificare anche se le autorizzazioni per il file a cui si sta tentando di accedere sono corrette. Ad esempio, è possibile che l'errore venga visualizzato se all'account IUSR non è consentito accedere alla directory.
    401.* 4 - Autorizzazione non riuscita a causa del filtro.
    401.* 5 - Autorizzazione non riuscita a causa dell'applicazione ISAPI/CGI.
    401.* 7 - Accesso negato dal criterio di autorizzazione dell'URL sul server Web. Questo codice di errore è specifico di IIS 6.0.
   * 403 - Operazione non consentita. È possibile che si riceva questo codice di stato 403 generico se il sito Web non dispone di un insieme di documenti predefinito e non è impostato per consentire l'esplorazione delle directory. In IIS vengono definiti molti errori diversi con il codice 403, per indicare una causa più specifica dell'errore.
    403.* 1 - Accesso in esecuzione non consentito. Di seguito sono riportate due cause comuni di questo messaggio di errore: Non si dispone di un livello di autorizzazioni di esecuzione sufficiente. Ad esempio, è possibile che questo messaggio di errore venga visualizzato se si tenta di accedere a una pagina ASP in una directory per la quale le autorizzazioni sono impostate su Nessuna oppure se si tenta di eseguire uno script CGI in una directory con autorizzazioni Solo script. Per modificare le autorizzazioni di esecuzione, fare clic con il pulsante destro del mouse sulla directory in Microsoft Management Console (MMC), scegliere Proprietà, fare clic sulla scheda Directory e assicurarsi che l'impostazione Autorizzazioni di esecuzione sia adatta al contenuto a cui si sta tentando di accedere. Il mapping dello script per il tipo di file che si sta tentando di eseguire non è impostato per il riconoscimento del verbo utilizzato, ad esempio GET o POST. Per effettuare questa verifica, fare clic con il pulsante destro del mouse sulla directory in MMC, scegliere Proprietà, fare clic sulla scheda Directory, scegliere Configurazione, quindi verificare che il mapping dello script per il tipo di file desiderato sia impostato in modo da consentire il riconoscimento del verbo utilizzato.
    403.* 2 - Accesso in lettura non consentito. Verificare che in IIS sia stato impostato l'accesso in lettura alla directory. Inoltre, se si utilizza un documento predefinito, assicurarsi che esista.
    403.* 3 - Accesso in scrittura non consentito. Verificare che le autorizzazioni di IIS e le autorizzazioni NTFS siano impostate per consentire l'accesso in scrittura alla directory.
    403.* 4 - Necessario SSL. Deselezionare la casella di controllo Richiedi un canale protetto o utilizzare HTTPS anziché HTTP per accedere alla pagina.
    403.* 5 - Necessario SSL 128. Deselezionare la casella di controllo Richiedi crittografia a 128 bit o utilizzare un browser con il supporto per la crittografia a 128 bit per visualizzare la pagina.
    403.* 6 - Indirizzo IP rifiutato. Il server è stato configurato per negare l'accesso all'indirizzo IP corrente.
    403.* 7 - Necessario certificato client. Il server è stato configurato per la richiesta di un certificato per l'autenticazione del client, ma nel client non è installato un certificato valido
    403.* 8 - Accesso al sito negato. È stata impostata una limitazione sul nome di dominio relativo al dominio utilizzato per accedere al server.
    403.* 9 - Troppi utenti. Il numero degli utenti connessi al server supera il limite di connessione impostato. NOTA: In Microsoft Windows 2000 Professional e Microsoft Windows XP Professional viene automaticamente imposto un limite di 10 connessioni per IIS. Questo limite non è modificabile.
    403.* 10 - Configurazione non valida.
    403.* 11 - Modifica password.
    403.* 12 - Accesso negato al programma di mapping. La pagina alla quale si desidera accedere richiede un certificato client. Tuttavia, all'ID utente cui è mappato il certificato client è stato negato l'accesso al file.
    403.* 13 - Certificato client revocato.
    403.* 14 - Impossibile visualizzare il contenuto della directory.
    403.* 15 - Superato il numero di licenze di accesso client.
    403.* 16 - Certificato client non attendibile o non valido.
    403.* 17 - Certificato client scaduto o non ancora valido.
    403.* 18 - Impossibile eseguire l'URL richiesto nel pool di applicazioni corrente. Questo codice di errore è specifico di IIS 6.0.
    403.* 19 - Impossibile eseguire le richieste CGI per il client in questo pool di applicazioni. Questo codice di errore è specifico di IIS 6.0.
    403.* 20 - Accesso a Passport non riuscito. Questo codice di errore è specifico di IIS 6.0.
   * 404 - Oggetto non trovato. Questo errore si può verificare se il file a cui si sta tentando di accedere è stato spostato o eliminato. È inoltre possibile che si verifichi se si tenta di accedere a un file per il quale è stata impostata una limitazione sull'estensione del nome file dopo l'installazione dello strumento URLScan. Dopo aver installato lo strumento URLScan, nei file di log w3svc verrà visualizzato "Respinta da URLScan". In questo caso, in corrispondenza della voce di registro relativa a tale richiesta sarà indicato "Respinta da URLScan".
    404.* 0 - (* Nessuno) - File o directory non trovata.
    404.* 1 - Sito Web non accessibile sulla porta richiesta. Questo errore indica che il sito Web al quale si tenta di accedere ha un indirizzo IP che non accetta richieste per la porta sulla quale è arrivata questa richiesta.
    404.* 2 - Richiesta non consentita dal criterio di blocco dell'estensione servizio Web. In IIS 6.0, ciò indica che la richiesta è stata vietata nell'elenco Estensioni servizio Web. 404.* 3 - Richiesta non consentita dal criterio di mapping MIME. Questo problema si verifica in presenza delle seguenti condizioni: Il mapping del gestore per l'estensione nome file richiesta non è configurato. Il tipo MIME appropriato non è configurato per il sito Web o per l'applicazione. * 405 - Metodo non consentito. Questo errore può verificarsi quando un client invia una richiesta HTTP al server sul quale è in esecuzione IIS e la richiesta contiene un verbo HTTP non riconosciuto dal server. Per risolvere il problema, assicurarsi che la richiesta del client utilizzi un verbo HTTP compatibile con l'rfc HTTP. Per informazioni sull'rfc HTTP, vedere la sezione "Riferimenti".
    404.* 3 - Richiesta non consentita dal criterio del mapping MIME.
   * 405 - Il verbo HTTP utilizzato per l'accesso a questa pagina non è consentito (metodo non consentito.)
   * 406 - Il tipo MIME della pagina richiesta non è accettato dal browser client.
   * 407 - Necessaria autenticazione proxy.
   * 412 - Condizione preliminare non riuscita.
   * 413 - Entità richiesta troppo grande.
   * 414 - URI richiesto troppo lungo.
   * 415 - Tipo di supporto non supportato.
   * 416 - Impossibile attenersi all'intervallo richiesto.
   * 417 - Esecuzione non riuscita.
   * 423 - Errore file bloccato.


* 5xx - Errore del server
Il server non è in grado di completare la richiesta a causa di un errore.

   * 500 - Errore interno del server. Questo messaggio di errore vene visualizzato per molti errori lato server. Nei registri del Visualizzatore eventi possono essere presenti ulteriori informazioni sulle cause di questo errore. È inoltre possibile disattivare i messaggi di errore HTTP brevi per visualizzare una descrizione più dettagliata dell'errore.
    500.* 12 - Riavvio dell'applicazione in corso sul server Web.
    500.* 13 - Server Web troppo impegnato.
    500.* 15 - Richieste dirette per Global.asa non consentite.
    500.* 16 - Credenziali di autorizzazione UNC non corrette. Questo codice di errore è specifico di IIS 6.0.
    500.* 18 - Impossibile aprire l'archivio autorizzazioni URL. Questo codice di errore è specifico di IIS 6.0.
    500.* 19 - I dati per il file sono configurati in modo non corretto nella metabase.
    500.* 100 - Errore ASP interno.
   * 501 - La configurazione specificata dai valori intestazione non è implementata.
   * 502 - Il server Web con funzioni di gateway o di proxy ha ricevuto una risposta non valida.
    502.* 1 - Timeout dell'applicazione CGI.
    500-100.* ASP - Errore ASP. Questo messaggio di errore viene visualizzato quando si tenta di caricare una pagina ASP nel cui codice sono presenti errori. Per informazioni più dettagliate sull'errore, disattivare i messaggi di errore HTTP brevi. Per impostazione predefinita, questo errore è attivato solo per il sito Web predefinito.
    500.* 12 - Riavvio dell'applicazione in corso. Indica che si è tentato di caricare una pagina ASP durante il riavvio dell'applicazione da parte di IIS. Il messaggio non dovrebbe essere più visualizzato quando si aggiorna la pagina. Se si aggiorna la pagina e il messaggio continua a essere visualizzato, la causa potrebbe essere l'esecuzione della scansione del file Global.asa da parte del software antivirus.
    500.* 19 - Questo errore viene visualizzato quando la metabase XML contiene informazioni di configurazione non valide per il tipo di contenuto al quale si tenta di accedere. Per risolvere il problema, rimuovere o correggere la configurazione non valida. Questo problema indica in genere un problema nella chiave della metabase ScriptMap.
   * 502 - Gateway non valido. Questo messaggio di errore viene visualizzato quando si tenta di eseguire uno script CGI che non restituisce un set valido di intestazioni HTTP. Per risolvere il problema, è necessario eseguire il debug dell'applicazione CGI per stabilire il motivo per il quale sono state passate informazioni HTTP non valide a IIS.
    502.* 2 - Errore nell'applicazione CGI.
   * 503 - Servizio non disponibile. A partire da IIS 6, il componente HTTP.sys in modalità kernel produce uno stato HTTP 503.
   * 504 - Timeout del gateway.
   * 505 - Versione HTTP non supportata.
