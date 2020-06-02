# **REST**

**REST** (**REpresentational State Transfer**) è una tipologia di archittettura software per sistemi client-server, il cui principio fondamentale è la separazione dei compiti fra le componenti distribuite del sistema, in modo da semplificarne l’implementazione eliminando ogni interdipendenza tra le stesse.

L’approccio proposto prevede che il sistema venga progettato seguendo i seguenti principi:

* I dati e le funzionalità dell’applicazione devono essere rappresentate come risorse;
* Ogni risorsa deve essere **univocamente identificabile e indirizzabile**, solitamente tramite l’uso di URL;
* Le risorse devono essere accessibili attraverso un’interfaccia comune tra le varie componenti distribuite, che permetta di definire delle operazioni eseguibili.

*L’approccio **REST** è **puramente concettuale** e implementabile con qualsiasi tecnologia e protocollo ne permetta di soddisfare i requisiti.*

---

## REST e http

Un sistema che segue i principi dettati da **REST** viene comunemente definito **REST**ful.

![REST](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/REST.png)

* Solitamente REST viene associato al **protocollo HTTP**: preferibile poiché estremamente diffuso e già utilizzato per trasferire “ipertesti” collocati a determinati indirizzi,

* inoltre ogni sua richiesta può essere completamente indipendente dalle altre e può specificare una determinata operazione (o metodo) da eseguire, rispettando così i principi REST.

---

## metodi http

I metodi definiti dallo standard HTTP sono utilizzati per indicare al server come manipolare la risorsa:

* **GET**: richiede una risorsa o una funzionalità
* **POST**: invia al server una nuova risorsa, solitamente per aggiungerla a quelle esistenti e assegnarle un nuovo identificatore
* **PUT** e PATCH: specificano al server le modifiche da effettuare su una risorsa esistente.
* **PATCH** Modifica una parte della risorsa già esistente. 
* **DELETE**: richiede la cancellazione di una risorsa.
* **TRACE** Restituisce la richiesta così come il server la riceve, al fine di individuare cambiamenti nelle informazioni durante il percorso svolto.
* **OPTIONS** Mostra una lista dei metodi supportati dal server. 
* **CONNECT** Invia la richiesta tramite un canale SSL per creare un collegamento con un server proxy. 
* **HEAD** Richiede solo l’header della relativa risorsa, per verificarne ad esempio la validità. 

---

## restful api 10 best practices

1. Usare Nomi e non Verbi
2. Usare i Nomi al plurale
3. GET e parametri di query non dovrebbero alterare lo stato
4. Usa le sub-resources per descrivere le relazioni
5. Usa gli header HTTP per definire i formati di serializzazione dei dati
6. Use HATEOAS - Hypermedia as the Engine of Application State
7. Implementa operazioni di filtraggio, ordinamento, selezione di specifici campi e paginazione per le collection
8. Versiona la tua API
9. Gestisci gli errori usando i codici di stato HTTP
10. Consenti l’override dei metodi HTTP

[restful-api-10-best-practices](http://losviluppatore.it/restful-api-10-best-practices/)
