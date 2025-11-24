# 📘 **Scheda Informativa – Cloud Database**

## 🔹 **Cosa sono i Cloud Database**

Un **Cloud Database** è un database ospitato e gestito su un’infrastruttura cloud (AWS, Azure, Google Cloud, ecc.) anziché su server fisici locali dell’organizzazione.
Può essere:

* **IaaS** → il database gira su macchine virtuali gestite dal cliente
* **PaaS** (più comune) → database completamente gestito dal provider
* **Serverless** → scalabilità automatica e costi legati solo all’utilizzo effettivo

---

## 🔹 **Caratteristiche principali**

### **1. Scalabilità**

* **Scalabilità verticale**: aumentare CPU/RAM del server.
  *→ Significa che puoi potenziare la macchina del database in pochi clic senza doverla sostituire fisicamente.*
* **Scalabilità orizzontale**: aggiungere nodi, repliche, shard.
  *→ Permette al sistema di gestire più richieste aumentando il numero di server anziché la potenza di uno solo.*
* **Automazione** tramite console/API.
  *→ La scalabilità può essere programmata o automatizzata in base al carico.*

### **2. Alta disponibilità (HA)**

* **Replica su più zone geografiche**.
  *→ I dati vengono copiati in regioni diverse per garantire continuità in caso di guasto locale.*
* **Failover automatico**.
  *→ Se un nodo cade, un altro subentra senza intervento umano.*
* **Riduzione dei downtime**.
  *→ I sistemi gestiti assicurano tempi di inattività minimi, spesso sotto il minuto.*

### **3. Sicurezza gestita**

* **Crittografia dei dati at-rest e in-transit**.
  *→ I dati sono protetti sia quando risiedono nei dischi sia quando viaggiano in rete.*
* **Controlli IAM**.
  *→ L’accesso è regolato da permessi granulari gestiti dal provider.*
* **Patch automatiche**.
  *→ Il sistema applica aggiornamenti di sicurezza senza intervento del team IT.*

### **4. Backup e Disaster Recovery**

* **Backup continui o pianificati**.
  *→ È possibile avere copie costanti o eseguite a orari programmati.*
* **Point-in-time recovery**.
  *→ Permette di ripristinare il database a uno stato esatto in un momento passato.*
* **Replica geografica**.
  *→ I dati vengono duplicati in altre regioni per proteggersi da eventi catastrofici.*

### **5. Monitoraggio avanzato**

* **Dashboard con metriche dettagliate**.
  *→ Il provider mette a disposizione grafici su latenza, query lente, memoria, CPU.*
* **Alert automatici**.
  *→ Notifiche attivate quando un valore supera una soglia definita.*
* **Autoscaling basato sul carico**.
  *→ Il sistema può scalare automaticamente in base alle metriche monitorate.*

### **6. Modelli supportati**

* **SQL (MySQL, PostgreSQL, SQL Server, ecc.)**.
  *→ Il cloud offre versioni completamente gestite dei database relazionali più usati.*
* **NoSQL (MongoDB Atlas, DynamoDB, Firestore, ecc.)**.
  *→ Sono disponibili anche database orientati a documenti, chiave-valore o grafi.*

### **7. Modello di costo**

* **Pay-as-you-go**.
  *→ Si paga solo ciò che si utilizza effettivamente, evitando sprechi.*
* **Nessun costo hardware**.
  *→ Non serve acquistare server, rack o dischi: ci pensa il provider.*
* **Costi proporzionali all’uso**.
  *→ Lo storage, il numero di query e la rete consumata determinano la spesa.*

---

# ☁️ **Vantaggi dei Cloud Database**

* Minori costi iniziali (CAPEX → OPEX)
* Nessuna gestione dell’hardware
* Scalabilità immediata
* Maggiore affidabilità e resilienza
* Integrazione nativa con architetture moderne (microservizi, serverless)
* Aggiornamenti e patch automatici

---

# 🧩 **Svantaggi**

* Dipendenza dal provider
* Costi variabili (difficile prevedere uso intensivo)
* Latenza in caso di servizi critici non vicini alla regione cloud
* Vincoli normativi su dati sensibili (GDPR, sovranità del dato)

---

# 🏢 **Database On-Premises**

I database **on-premises** sono installati su server fisici gestiti internamente dall’azienda.

## 🔹 Caratteristiche

* Installazione locale
* Hardware dedicato
* Gestione diretta di:

  * sicurezza
  * aggiornamenti
  * patch
  * backup
  * pianificazione risorse
* Costi elevati per infrastruttura, energia, manutenzione

---

# ⚖️ **Cloud Database vs On-Premises: Differenze a Confronto**

| Aspetto                  | Cloud DB                                             | On-Premises DB                                 |
| ------------------------ | ---------------------------------------------------- | ---------------------------------------------- |
| **Installazione**        | Virtuale/gestita dal provider                        | Locale su server fisici                        |
| **Costo iniziale**       | Basso (OPEX)                                         | Alto (CAPEX)                                   |
| **Scalabilità**          | Automatica e immediata                               | Limitata e costosa                             |
| **Backup/DR**            | Automatici e integrati                               | Da implementare manualmente                    |
| **Manutenzione**         | Quasi nulla (gestita dal provider)                   | Totale responsabilità interna                  |
| **Affidabilità**         | Replica multi-zona, HA garantita                     | Dipende dall’infrastruttura interna            |
| **Sicurezza**            | Multilivello gestita dal provider + policy aziendali | Totalmente a carico del team IT                |
| **Controllo**            | Minore (dipendenza dal provider)                     | Totale controllo su hardware e software        |
| **Performance**          | Ottime ma legate alla rete                           | Massime in locale, ideale per bassa latenza    |
| **Conformità normativa** | Talvolta più complessa (Paesi/regioni)               | Controllo totale sulla localizzazione dei dati |

---

# 🧭 **Quando scegliere un Cloud Database**

* App con carichi variabili o imprevedibili
* Startup e PMI senza un reparto IT dedicato
* Sistemi distribuiti, mobile, IoT, microservizi
* Esigenza di scalare velocemente
* Progetti che richiedono alta disponibilità e disaster recovery integrato

# 🏠 **Quando scegliere un On-Premises Database**

* Necessità di massima sicurezza e isolamento
* Requisiti normativi sulla localizzazione dei dati
* Applicazioni mission-critical con latenza zero
* Infrastrutture aziendali già consolidate e performanti

---

# 🎯 **Conclusione**

I Cloud Database rappresentano oggi la soluzione più flessibile, scalabile ed economica per la maggior parte dei progetti moderni, mentre gli on-premises restano la scelta migliore per scenari ad alta sensibilità, latenza zero o forti vincoli normativi.

---

