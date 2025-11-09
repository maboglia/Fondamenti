# 🌐 **Scheda Didattica – Nuove Tecnologie e Tendenze**

### 🎯 **Obiettivo**

Comprendere due tra le principali tendenze moderne dello sviluppo software — **PWA** e **Serverless** — e come esse migliorano le prestazioni, la scalabilità e l’esperienza utente delle applicazioni web.

---

## 🚀 **1. PWA – Progressive Web App**

### 📘 **Definizione**

Le **Progressive Web App (PWA)** sono **applicazioni web** che, grazie a tecnologie moderne, **offrono un’esperienza simile alle app native**, pur essendo eseguite all’interno di un browser.

> Una PWA unisce il meglio del web (accessibilità universale) e del mobile (velocità, installabilità, notifiche push).

---

### ⚙️ **Caratteristiche principali**

| Funzionalità                 | Descrizione                                                                             |
| ---------------------------- | --------------------------------------------------------------------------------------- |
| **Installabile**             | Può essere aggiunta alla schermata principale come un’app nativa.                       |
| **Offline**                  | Può funzionare anche senza connessione, grazie al *Service Worker* e alla cache locale. |
| **Responsive**               | Si adatta automaticamente a qualsiasi dispositivo (PC, tablet, smartphone).             |
| **Aggiornamento automatico** | Si aggiorna in background senza bisogno di reinstallazione.                             |
| **Notifiche push**           | Può inviare avvisi e messaggi all’utente anche quando non è aperta.                     |

---

### 🧩 **Tecnologie chiave**

| Tecnologia                | Ruolo                                                              |
| ------------------------- | ------------------------------------------------------------------ |
| **HTML, CSS, JavaScript** | Base dell’interfaccia e della logica dell’app.                     |
| **Service Worker**        | Gestisce la cache, l’uso offline e le notifiche push.              |
| **Manifest.json**         | Descrive l’app (nome, icona, tema, comportamento d’installazione). |
| **HTTPS**                 | Necessario per motivi di sicurezza e per usare i Service Worker.   |

---

### 💡 **Vantaggi**

* 📱 Esperienza utente fluida come un’app nativa.
* 🚀 Prestazioni elevate anche con connessione lenta.
* 🌍 Accessibile da qualsiasi browser, senza passare da store.
* 💸 Riduzione dei costi di sviluppo (un solo codice per web e mobile).

### ⚠️ **Limiti**

* Alcune funzionalità hardware (fotocamera, Bluetooth, sensori) possono essere limitate.
* Meno visibilità negli app store rispetto alle app native.

---

### 🧠 **Esempi di PWA famose**

* **Twitter Lite**
* **Pinterest**
* **Spotify Web**
* **Google Maps Go**

---

### 🔄 **Schema di funzionamento PWA**

```
[ Utente ]
     ↓
[ Browser ]
     ↓
[ Service Worker ] ←→ [ Cache / API ]
     ↓
[ Esperienza tipo app ]
```

---

## ☁️ **2. Serverless Computing**

### 📘 **Definizione**

Il modello **Serverless** (letteralmente “senza server”) è un approccio in cui **il cloud provider gestisce automaticamente l’infrastruttura e l’esecuzione del codice**.
Lo sviluppatore **scrive solo le funzioni**, mentre il fornitore (es. AWS, Azure, Google Cloud) **si occupa di tutto il resto**: provisioning, scalabilità, manutenzione dei server.

> Il codice viene eseguito **solo in risposta a eventi**, e si paga **solo per il tempo effettivo di esecuzione**.

---

### ⚙️ **Come funziona**

1. Lo sviluppatore scrive una **funzione** (es. `processaOrdine()` o `inviaEmail()`).
2. La funzione viene **deployata sul cloud**.
3. Quando si verifica un **evento** (una richiesta HTTP, un upload, un messaggio), il provider esegue la funzione automaticamente.
4. Terminata l’esecuzione, le risorse vengono liberate.

---

### 🧩 **Caratteristiche principali**

| Caratteristica             | Descrizione                                              |
| -------------------------- | -------------------------------------------------------- |
| **Event-driven**           | Le funzioni si attivano solo quando serve.               |
| **Scalabilità automatica** | Il cloud aumenta o riduce le risorse secondo la domanda. |
| **Zero gestione server**   | Nessuna manutenzione di macchine fisiche o virtuali.     |
| **Pagamento a consumo**    | Si paga solo per il tempo di esecuzione.                 |

---

### 💡 **Vantaggi**

* 💸 Riduzione dei costi operativi.
* ⚙️ Scalabilità automatica e gestione semplificata.
* ⏱️ Deploy rapido di singole funzioni.
* 🔄 Ideale per microservizi, API, chatbot o automazioni.

### ⚠️ **Svantaggi**

* 🔍 Dipendenza dal fornitore di cloud.
* ⚙️ Difficoltà nel debug e nel monitoraggio.
* ⏱️ Latenza alla “prima esecuzione” (cold start).

---

### ☁️ **Principali piattaforme Serverless**

| Fornitore                     | Servizio               |
| ----------------------------- | ---------------------- |
| **Amazon Web Services (AWS)** | AWS Lambda             |
| **Microsoft Azure**           | Azure Functions        |
| **Google Cloud**              | Google Cloud Functions |
| **IBM Cloud**                 | IBM Cloud Functions    |
| **Cloudflare**                | Cloudflare Workers     |

---

### 🧩 **Schema concettuale**

```
[ Evento ] → [ Funzione nel Cloud ] → [ Risultato ]
          (richiesta HTTP, upload, timer, messaggio)
```

---

## 📊 **Confronto sintetico**

| Caratteristica     | **PWA**                                    | **Serverless**                       |
| ------------------ | ------------------------------------------ | ------------------------------------ |
| Tipo di tecnologia | Frontend (esperienza utente)               | Backend (infrastruttura)             |
| Obiettivo          | Offrire un’esperienza tipo app nel browser | Eseguire codice senza gestire server |
| Esecuzione         | Nel browser dell’utente                    | Nel cloud del fornitore              |
| Esempi             | Twitter Lite, Pinterest                    | AWS Lambda, Azure Functions          |
| Vantaggio chiave   | Rapidità e accessibilità                   | Scalabilità e costo ridotto          |

---

## 🧠 **Esercizi di riflessione**

1. Descrivi con parole tue cosa rende una PWA “progressiva”.
2. In che modo il modello Serverless riduce i costi di gestione?
3. Fai un esempio pratico di evento che può attivare una funzione serverless.
4. Confronta i vantaggi di una PWA e di un’app mobile tradizionale.

---

### 💬 **Conclusione**

> Le **PWA** migliorano l’esperienza dell’utente finale, mentre il **Serverless** semplifica la gestione lato server.
> Insieme rappresentano il futuro dello sviluppo moderno: **più flessibile, veloce e accessibile.**

---

Vuoi che te la prepari anche in **versione PDF per lezione o verifica**, con:

* schemi grafici,
* box “definizione” e “vantaggi/svantaggi”,
* spazio per esercizi e appunti?
Ecco la **scheda didattica completa e pronta per l’aula** sul tema
🛰️ **Nuove Tecnologie e Tendenze nello Sviluppo Software**, con focus su **PWA (Progressive Web App)** e **Serverless Computing**.

---

## 🌐 **Scheda Didattica – Nuove Tecnologie e Tendenze**

### 🎯 **Obiettivo**

Comprendere due tra le principali tendenze moderne dello sviluppo software — **PWA** e **Serverless** — e come esse migliorano le prestazioni, la scalabilità e l’esperienza utente delle applicazioni web.

---

## 🚀 **1. PWA – Progressive Web App**

### 📘 **Definizione**

Le **Progressive Web App (PWA)** sono **applicazioni web** che, grazie a tecnologie moderne, **offrono un’esperienza simile alle app native**, pur essendo eseguite all’interno di un browser.

> Una PWA unisce il meglio del web (accessibilità universale) e del mobile (velocità, installabilità, notifiche push).

---

### ⚙️ **Caratteristiche principali**

| Funzionalità                 | Descrizione                                                                             |
| ---------------------------- | --------------------------------------------------------------------------------------- |
| **Installabile**             | Può essere aggiunta alla schermata principale come un’app nativa.                       |
| **Offline**                  | Può funzionare anche senza connessione, grazie al *Service Worker* e alla cache locale. |
| **Responsive**               | Si adatta automaticamente a qualsiasi dispositivo (PC, tablet, smartphone).             |
| **Aggiornamento automatico** | Si aggiorna in background senza bisogno di reinstallazione.                             |
| **Notifiche push**           | Può inviare avvisi e messaggi all’utente anche quando non è aperta.                     |

---

### 🧩 **Tecnologie chiave**

| Tecnologia                | Ruolo                                                              |
| ------------------------- | ------------------------------------------------------------------ |
| **HTML, CSS, JavaScript** | Base dell’interfaccia e della logica dell’app.                     |
| **Service Worker**        | Gestisce la cache, l’uso offline e le notifiche push.              |
| **Manifest.json**         | Descrive l’app (nome, icona, tema, comportamento d’installazione). |
| **HTTPS**                 | Necessario per motivi di sicurezza e per usare i Service Worker.   |

---

### 💡 **Vantaggi**

* 📱 Esperienza utente fluida come un’app nativa.
* 🚀 Prestazioni elevate anche con connessione lenta.
* 🌍 Accessibile da qualsiasi browser, senza passare da store.
* 💸 Riduzione dei costi di sviluppo (un solo codice per web e mobile).

### ⚠️ **Limiti**

* Alcune funzionalità hardware (fotocamera, Bluetooth, sensori) possono essere limitate.
* Meno visibilità negli app store rispetto alle app native.

---

### 🧠 **Esempi di PWA famose**

* **Twitter Lite**
* **Pinterest**
* **Spotify Web**
* **Google Maps Go**

---

### 🔄 **Schema di funzionamento PWA**

```
[ Utente ]
     ↓
[ Browser ]
     ↓
[ Service Worker ] ←→ [ Cache / API ]
     ↓
[ Esperienza tipo app ]
```

---

## ☁️ **2. Serverless Computing**

### 📘 **Definizione**

Il modello **Serverless** (letteralmente “senza server”) è un approccio in cui **il cloud provider gestisce automaticamente l’infrastruttura e l’esecuzione del codice**.
Lo sviluppatore **scrive solo le funzioni**, mentre il fornitore (es. AWS, Azure, Google Cloud) **si occupa di tutto il resto**: provisioning, scalabilità, manutenzione dei server.

> Il codice viene eseguito **solo in risposta a eventi**, e si paga **solo per il tempo effettivo di esecuzione**.

---

### ⚙️ **Come funziona**

1. Lo sviluppatore scrive una **funzione** (es. `processaOrdine()` o `inviaEmail()`).
2. La funzione viene **deployata sul cloud**.
3. Quando si verifica un **evento** (una richiesta HTTP, un upload, un messaggio), il provider esegue la funzione automaticamente.
4. Terminata l’esecuzione, le risorse vengono liberate.

---

### 🧩 **Caratteristiche principali**

| Caratteristica             | Descrizione                                              |
| -------------------------- | -------------------------------------------------------- |
| **Event-driven**           | Le funzioni si attivano solo quando serve.               |
| **Scalabilità automatica** | Il cloud aumenta o riduce le risorse secondo la domanda. |
| **Zero gestione server**   | Nessuna manutenzione di macchine fisiche o virtuali.     |
| **Pagamento a consumo**    | Si paga solo per il tempo di esecuzione.                 |

---

### 💡 **Vantaggi**

* 💸 Riduzione dei costi operativi.
* ⚙️ Scalabilità automatica e gestione semplificata.
* ⏱️ Deploy rapido di singole funzioni.
* 🔄 Ideale per microservizi, API, chatbot o automazioni.

### ⚠️ **Svantaggi**

* 🔍 Dipendenza dal fornitore di cloud.
* ⚙️ Difficoltà nel debug e nel monitoraggio.
* ⏱️ Latenza alla “prima esecuzione” (cold start).

---

### ☁️ **Principali piattaforme Serverless**

| Fornitore                     | Servizio               |
| ----------------------------- | ---------------------- |
| **Amazon Web Services (AWS)** | AWS Lambda             |
| **Microsoft Azure**           | Azure Functions        |
| **Google Cloud**              | Google Cloud Functions |
| **IBM Cloud**                 | IBM Cloud Functions    |
| **Cloudflare**                | Cloudflare Workers     |

---

### 🧩 **Schema concettuale**

```
[ Evento ] → [ Funzione nel Cloud ] → [ Risultato ]
          (richiesta HTTP, upload, timer, messaggio)
```

---

## 📊 **Confronto sintetico**

| Caratteristica     | **PWA**                                    | **Serverless**                       |
| ------------------ | ------------------------------------------ | ------------------------------------ |
| Tipo di tecnologia | Frontend (esperienza utente)               | Backend (infrastruttura)             |
| Obiettivo          | Offrire un’esperienza tipo app nel browser | Eseguire codice senza gestire server |
| Esecuzione         | Nel browser dell’utente                    | Nel cloud del fornitore              |
| Esempi             | Twitter Lite, Pinterest                    | AWS Lambda, Azure Functions          |
| Vantaggio chiave   | Rapidità e accessibilità                   | Scalabilità e costo ridotto          |

---

## 🧠 **Esercizi di riflessione**

1. Descrivi con parole tue cosa rende una PWA “progressiva”.
2. In che modo il modello Serverless riduce i costi di gestione?
3. Fai un esempio pratico di evento che può attivare una funzione serverless.
4. Confronta i vantaggi di una PWA e di un’app mobile tradizionale.

---

### 💬 **Conclusione**

> Le **PWA** migliorano l’esperienza dell’utente finale, mentre il **Serverless** semplifica la gestione lato server.
> Insieme rappresentano il futuro dello sviluppo moderno: **più flessibile, veloce e accessibile.**

