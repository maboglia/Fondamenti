# 🧰 **Scheda Didattica – Strumenti di Sviluppo**

### 🎯 **Obiettivo**

Comprendere quali strumenti vengono utilizzati dai programmatori per **scrivere, testare e mantenere** il codice in modo efficiente e collaborativo.

---

## 🧠 **1. IDE – *Integrated Development Environment***

### 📘 **Definizione**

Un **IDE** è un ambiente di sviluppo integrato: un **software che riunisce in un unico strumento tutti gli strumenti essenziali** per la programmazione.

### ⚙️ **Componenti principali**

| Componente                   | Funzione                                                                                                           | Esempio                               |
| ---------------------------- | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------- |
| **Editor di codice**         | Permette di scrivere e modificare il codice sorgente, con evidenziazione della sintassi e suggerimenti automatici. | IntelliJ, Visual Studio Code          |
| **Compilatore / Interprete** | Traduce il codice sorgente in linguaggio eseguibile dal computer.                                                  | javac (Java), python (Python)         |
| **Debugger**                 | Aiuta a trovare e correggere errori eseguendo il programma passo per passo.                                        | Breakpoints, variabili in tempo reale |
| **Gestore di progetto**      | Organizza file, librerie e dipendenze di un’applicazione.                                                          | Struttura cartelle, moduli            |
| **Terminale integrato**      | Consente di eseguire comandi senza uscire dall’ambiente di sviluppo.                                               | Console, PowerShell, Bash             |

---

### 💡 **Esempi di IDE popolari**

| Linguaggio    | IDE consigliati                  |
| ------------- | -------------------------------- |
| **Java**      | IntelliJ IDEA, Eclipse, NetBeans |
| **Python**    | PyCharm, Thonny, VS Code         |
| **PHP / Web** | Visual Studio Code, PhpStorm     |
| **C / C++**   | Code::Blocks, CLion, Dev-C++     |
| **Mobile**    | Android Studio, Xcode            |

---

### 🔍 **Vantaggi dell’uso di un IDE**

* Tutto in un unico ambiente → scrittura, esecuzione e debugging.
* Evidenziazione errori in tempo reale.
* Completamento automatico e suggerimenti intelligenti.
* Integrazione con **sistemi di versionamento (Git)** e **gestori di pacchetti**.
* Aumento della **produttività e qualità del codice**.

---

## 🔄 **2. Controllo di Versione**

### 📘 **Definizione**

Il **controllo di versione** è un sistema che **tiene traccia delle modifiche apportate al codice sorgente nel tempo**, permettendo di:

* tornare a versioni precedenti,
* lavorare in gruppo,
* evitare conflitti o perdita di codice.

---

### 🔧 **Strumenti più usati**

| Sistema              | Descrizione                                                                                      | Esempio di piattaforma    |
| -------------------- | ------------------------------------------------------------------------------------------------ | ------------------------- |
| **Git**              | Sistema distribuito di controllo versione. Ogni sviluppatore ha una copia completa del progetto. | GitHub, GitLab, Bitbucket |
| **SVN (Subversion)** | Sistema centralizzato di controllo versione. Tutti lavorano su un server unico.                  | Apache Subversion         |

---

### 🧩 **Concetti chiave di Git**

| Comando                     | Descrizione                                               |
| --------------------------- | --------------------------------------------------------- |
| `git init`                  | Inizializza un nuovo repository Git.                      |
| `git add`                   | Aggiunge file all’area di staging (preparazione).         |
| `git commit -m "messaggio"` | Registra le modifiche nel repository.                     |
| `git status`                | Mostra lo stato dei file (modificati, nuovi, cancellati). |
| `git log`                   | Elenca la cronologia delle modifiche.                     |
| `git push`                  | Invia le modifiche al repository remoto (es. GitHub).     |
| `git pull`                  | Scarica aggiornamenti da un repository remoto.            |

---

### ⚙️ **Vantaggi del controllo di versione**

* 🔄 **Tracciabilità:** ogni modifica ha un autore, una data e una descrizione.
* 👥 **Collaborazione:** più sviluppatori possono lavorare sullo stesso progetto.
* 🧩 **Backup e sicurezza:** il codice è salvato anche su repository remoti.
* 🕓 **Storico completo:** è possibile tornare a una versione funzionante in caso di errore.
* 💻 **Integrazione con IDE:** molti IDE (es. IntelliJ, VS Code) hanno Git integrato.

---

### 📊 **In sintesi**

| Strumento                       | Scopo principale                                          |
| ------------------------------- | --------------------------------------------------------- |
| **IDE**                         | Scrivere, testare e gestire il codice in modo efficiente. |
| **Controllo di versione (Git)** | Tenere traccia delle modifiche e collaborare in team.     |

---

### 🧠 **Esercizio pratico (facoltativo – 15 min)**

1. Crea una cartella di progetto e inizializza un repository Git (`git init`).
2. Scrivi un semplice file (`main.py` o `index.html`).
3. Fai un commit con messaggio `"Prima versione"`.
4. Modifica il file e osserva le differenze con `git diff`.
5. Fai un secondo commit e visualizza la cronologia con `git log`.

---

### 💬 **Conclusione**

> Gli strumenti di sviluppo sono l’**officina del programmatore**:
> l’IDE è il banco di lavoro, Git è la memoria storica del progetto.

