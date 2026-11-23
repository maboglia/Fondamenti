# Lezione – Logica di Programmazione e Algoritmi

**Corso:** Fondamenti di Programmazione, Basi di Dati e Scripting per la Sicurezza  
**Livello:** ITS – EQF 5  
**Linguaggio:** Python 3.12  
**Framework applicativo:** FastAPI

## Obiettivi formativi

Al termine della lezione lo studente sarà in grado di:

- Installare e configurare un ambiente di sviluppo Python.
- Comprendere la struttura di un programma e le regole fondamentali della sintassi.
- Dichiarare e utilizzare variabili, costanti convenzionali e tipi di dato primitivi.
- Applicare operatori aritmetici, relazionali e logici.
- Comprendere i principi dell'algebra di Boole.
- Analizzare un problema e rappresentarne la soluzione mediante algoritmi.
- Scrivere pseudocodice e interpretare diagrammi di flusso.
- Tradurre semplici algoritmi in programmi Python.
- Elaborare statistiche elementari e verificare condizioni su dati di accesso simulati.
- Comprendere come una funzione Python possa essere esposta attraverso un endpoint REST con FastAPI.

---

# 1. Installazione e configurazione dell'ambiente Python

## 1.1 Introduzione a Python

Python è un linguaggio di programmazione:

- Interpretato: il codice sorgente viene eseguito attraverso un interprete.
- Ad alto livello: utilizza una sintassi relativamente vicina al linguaggio umano.
- Multiparadigma: supporta programmazione procedurale, orientata agli oggetti e funzionale.
- Multipiattaforma: è disponibile per Linux, Windows e macOS.
- Dinamicamente tipizzato: il tipo di una variabile viene determinato durante l'esecuzione.

Python è particolarmente utilizzato in ambito cybersecurity per:

- Automazione di attività di sicurezza.
- Analisi di log.
- Elaborazione di file e dati.
- Scripting di rete.
- Analisi di vulnerabilità.
- Sviluppo di API e strumenti di supporto alla sicurezza.

Nel corso utilizzeremo **Python 3.12**.

## 1.2 Installazione di Python

Download:

<https://www.python.org/downloads/>

Verificare l'installazione da terminale:

```bash
python3 --version
```

Risultato atteso:

```text
Python 3.12.x
```

Verificare anche il gestore dei pacchetti:

```bash
python3 -m pip --version
```

Su Windows, se necessario, utilizzare:

```powershell
py --version
py -m pip --version
```

## 1.3 Installazione dell'IDE

Un IDE (Integrated Development Environment) è un ambiente che facilita la scrittura, l'esecuzione e il debug del codice.

Per il corso utilizzeremo Visual Studio Code.

Download:

<https://code.visualstudio.com/>

Installare le seguenti estensioni:

- Python – Microsoft.
- Pylance – Microsoft.
- Python Debugger – Microsoft.

L'IDE mette a disposizione:

- Evidenziazione della sintassi.
- Completamento automatico.
- Segnalazione degli errori.
- Debugger.
- Terminale integrato.
- Gestione dei progetti.

## 1.4 Creazione di un progetto Python

Creiamo una cartella:

```bash
mkdir laboratorio-python
cd laboratorio-python
```

Creiamo un ambiente virtuale:

```bash
python3.12 -m venv .venv
```

L'ambiente virtuale consente di isolare le librerie installate per ogni progetto, evitando conflitti tra versioni differenti.

Attivazione su Linux/macOS:

```bash
source .venv/bin/activate
```

Attivazione su Windows:

```powershell
.venv\Scripts\activate
```

Aggiornamento di pip:

```bash
python -m pip install --upgrade pip
```

Creiamo il file:

```text
main.py
```

Primo programma:

```python
# Primo programma Python

print("Benvenuti nel corso di Python!")
```

Esecuzione:

```bash
python main.py
```

Output:

```text
Benvenuti nel corso di Python!
```

**Concetto fondamentale:** un programma è una sequenza di istruzioni che vengono eseguite secondo un ordine definito, salvo la presenza di strutture di controllo che modificano il flusso di esecuzione.

---

# 2. Sintassi di base e struttura di un programma

## 2.1 Istruzioni e blocchi di codice

Un'istruzione è un comando che il programma deve eseguire.

Esempio:

```python
print("Avvio del programma")

utente = "admin"

print(utente)
```

Python esegue le istruzioni generalmente dall'alto verso il basso.

A differenza di altri linguaggi, Python utilizza l'indentazione per delimitare i blocchi di codice.

Esempio:

```python
utente = "admin"

if utente == "admin":
    print("Accesso amministrativo")
    print("Permessi elevati")

print("Fine programma")
```

Le due istruzioni indentate appartengono al blocco condizionale.

L'indentazione standard è di quattro spazi.

Un'indentazione errata può provocare un errore `IndentationError`.

## 2.2 Commenti

I commenti sono porzioni di codice ignorate dall'interprete.

Commento su una singola riga:

```python
# Questo è un commento

utente = "mario"
```

Commenti utilizzati per documentare una funzione:

```python
def calcola_media(valori):
    """Calcola la media aritmetica di una lista di numeri."""

    return sum(valori) / len(valori)
```

I commenti devono spiegare il motivo di una scelta o chiarire parti non immediatamente comprensibili.

Non dovrebbero limitarsi a ripetere ciò che il codice già esprime.

## 2.3 Convenzioni di scrittura

Python utilizza convenzioni definite nel documento PEP 8.

Le principali:

| Elemento | Convenzione | Esempio |
| --- | --- | --- |
| Variabili | snake_case | numero_accessi |
| Funzioni | snake_case | calcola_media() |
| Classi | PascalCase | UtenteSistema |
| Costanti | MAIUSCOLO | MAX_TENTATIVI |
| Moduli | snake_case | gestione_accessi.py |

Esempio:

```python
# Costante convenzionale
MAX_TENTATIVI = 5

# Variabili
numero_accessi = 120
utente_corrente = "admin"

# Funzione
def verifica_accesso():
    print("Verifica in corso")
```

Nota: Python non possiede un vero modificatore `const` per dichiarare costanti immutabili. L'utilizzo delle lettere maiuscole è una convenzione condivisa.

---

# 3. Variabili, costanti e tipi primitivi

## 3.1 Che cos'è una variabile?

Una variabile è un identificatore associato a un oggetto contenente un valore utilizzabile durante l'esecuzione del programma.

Esempio:

```python
nome_utente = "mario"
numero_accessi = 15
temperatura = 23.5
account_attivo = True
```

Python determina automaticamente il tipo del valore assegnato.

Possiamo verificarlo con la funzione `type()`:

```python
print(type(nome_utente))
print(type(numero_accessi))
print(type(temperatura))
print(type(account_attivo))
```

Output:

```text
<class 'str'>
<class 'int'>
<class 'float'>
<class 'bool'>
```

## 3.2 Tipi di dato fondamentali

### Interi – int

Rappresentano numeri senza parte decimale.

```python
numero_tentativi = 3
numero_utenti = 150
codice_errore = 404
```

Operazioni:

```python
a = 10
b = 3

print(a + b)  # 13
print(a - b)  # 7
print(a * b)  # 30
print(a // b) # 3
```

### Numeri decimali – float

Rappresentano numeri con una componente decimale.

```python
temperatura = 24.5
percentuale_errori = 2.75
tempo_risposta = 0.125
```

Esempio:

```python
tempo_totale = 10.5
numero_richieste = 5

media = tempo_totale / numero_richieste

print(media)  # 2.1
```

Attenzione: i numeri `float` utilizzano una rappresentazione binaria approssimata. Per calcoli finanziari o confronti che richiedono precisione decimale è preferibile utilizzare `decimal.Decimal`.

### Stringhe – str

Le stringhe rappresentano sequenze di caratteri.

```python
nome = "Mario"
ruolo = "administrator"
indirizzo_ip = "192.168.1.10"
```

Le stringhe possono essere concatenate:

```python
nome = "Mario"
cognome = "Rossi"

utente = nome + " " + cognome

print(utente)
```

È possibile utilizzare le f-string per inserire variabili all'interno di una stringa:

```python
utente = "mario"
numero_accessi = 15

print(f"L'utente {utente} ha effettuato {numero_accessi} accessi")
```

### Booleani – bool

Il tipo booleano può assumere solamente due valori:

- `True`
- `False`

Esempio:

```python
account_attivo = True
password_valida = False

print(account_attivo)
print(password_valida)
```

I booleani sono fondamentali per realizzare le condizioni logiche dei programmi.

## 3.3 Conversione dei tipi

Python mette a disposizione funzioni per convertire i valori.

```python
numero = "25"

valore_intero = int(numero)
valore_decimale = float(numero)
testo = str(valore_intero)
```

Esempio pratico con input:

```python
numero_accessi = int(input("Inserisci il numero di accessi: "))

print(f"Accessi registrati: {numero_accessi}")
```

La funzione `input()` restituisce sempre una stringa.

Per questo motivo, se dobbiamo effettuare operazioni numeriche, dobbiamo convertire il valore.

Attenzione: una conversione non valida, ad esempio `int("abc")`, genera un'eccezione `ValueError`.

---

# 4. Operatori e algebra di Boole

Gli operatori consentono di effettuare calcoli, confronti e valutazioni logiche.

## 4.1 Operatori aritmetici

| Operatore | Significato | Esempio | Risultato |
| --- | --- | --- | --- |
| + | Addizione | 10 + 3 | 13 |
| - | Sottrazione | 10 - 3 | 7 |
| * | Moltiplicazione | 10 * 3 | 30 |
| / | Divisione | 10 / 3 | 3.333... |
| // | Divisione intera | 10 // 3 | 3 |
| % | Modulo | 10 % 3 | 1 |
| ** | Potenza | 2 ** 3 | 8 |

Esempio applicativo:

```python
numero_richieste = 100
richieste_per_gruppo = 10

numero_gruppi = numero_richieste // richieste_per_gruppo
resto = numero_richieste % richieste_per_gruppo

print(f"Gruppi completi: {numero_gruppi}")
print(f"Richieste residue: {resto}")
```

## 4.2 Operatori relazionali

Consentono di confrontare due valori e restituiscono un booleano.

| Operatore | Significato |
| --- | --- |
| == | Uguale |
| != | Diverso |
| > | Maggiore |
| < | Minore |
| >= | Maggiore o uguale |
| <= | Minore o uguale |

Esempio:

```python
numero_tentativi = 4

print(numero_tentativi > 3)   # True
print(numero_tentativi == 5)  # False
print(numero_tentativi != 0)  # True
```

È importante distinguere:

```python
numero = 10
```

Assegnazione di un valore.

```python
numero == 10
```

Confronto tra due valori.

## 4.3 Operatori logici

Gli operatori logici permettono di combinare più condizioni.

Python utilizza:

- `and`: tutte le condizioni devono essere vere.
- `or`: almeno una condizione deve essere vera.
- `not`: inverte il valore booleano.

Esempio:

```python
account_attivo = True
password_valida = True

accesso_consentito = account_attivo and password_valida

print(accesso_consentito)  # True
```

Altro esempio:

```python
utente_admin = False
utente_supervisor = True

puo_amministrare = utente_admin or utente_supervisor

print(puo_amministrare)  # True
```

## 4.4 Algebra di Boole

L'algebra di Boole è un sistema matematico che opera su valori logici.

Le operazioni fondamentali sono AND, OR e NOT.

### Tabella di verità AND

| A | B | A AND B |
| --- | --- | --- |
| False | False | False |
| False | True | False |
| True | False | False |
| True | True | True |

La condizione AND è vera solamente quando entrambi gli operandi sono veri.

### Tabella di verità OR

| A | B | A OR B |
| --- | --- | --- |
| False | False | False |
| False | True | True |
| True | False | True |
| True | True | True |

La condizione OR è vera quando almeno uno degli operandi è vero.

### Tabella di verità NOT

| A | NOT A |
| --- | --- |
| False | True |
| True | False |

### Applicazione alla cybersecurity

Supponiamo di dover verificare se un account può accedere a un sistema.

Le condizioni sono:

- L'account deve essere attivo.
- La password deve essere valida.
- L'account non deve essere bloccato.

Traduciamo in Python:

```python
account_attivo = True
password_valida = True
account_bloccato = False

accesso_consentito = (
    account_attivo
    and password_valida
    and not account_bloccato
)

print(accesso_consentito)
```

Risultato:

```text
True
```

La condizione può essere rappresentata anche con un'espressione logica:

`Accesso = AccountAttivo AND PasswordValida AND NOT AccountBloccato`

Questo tipo di ragionamento è alla base dei sistemi di autenticazione e autorizzazione.

---

# 5. Algoritmi e logica di programmazione

## 5.1 Che cos'è un algoritmo?

Un algoritmo è una sequenza finita e ordinata di operazioni che consente di risolvere un problema.

Un algoritmo deve possedere alcune caratteristiche:

1. Input: può ricevere dati in ingresso.
2. Output: produce uno o più risultati.
3. Finitezza: termina dopo un numero finito di operazioni.
4. Determinismo: ogni operazione deve essere sufficientemente definita.
5. Eseguibilità: le istruzioni devono poter essere realizzate.

Esempio: calcolare la media di tre numeri.

Input:

- Primo numero.
- Secondo numero.
- Terzo numero.

Elaborazione:

- Sommare i tre numeri.
- Dividere il risultato per tre.

Output:

- Media aritmetica.

## 5.2 Dalla soluzione al codice

Prima di scrivere il codice è opportuno analizzare il problema.

Il processo può essere articolato in quattro fasi:

1. Comprensione del problema.
2. Individuazione dei dati in ingresso e in uscita.
3. Definizione dell'algoritmo.
4. Implementazione e verifica.

Esempio: calcolo della media di tre numeri.

Pseudocodice:

```text
INIZIO

    LEGGI numero1
    LEGGI numero2
    LEGGI numero3

    somma = numero1 + numero2 + numero3

    media = somma / 3

    STAMPA media

FINE
```

Implementazione Python:

```python
numero1 = 10
numero2 = 20
numero3 = 30

somma = numero1 + numero2 + numero3

media = somma / 3

print(f"La media è: {media}")
```

Output:

```text
La media è: 20.0
```

## 5.3 Diagrammi di flusso

Un diagramma di flusso rappresenta graficamente i passaggi di un algoritmo.

I simboli principali sono:

| Simbolo | Significato |
| --- | --- |
| Ovale | Inizio / Fine |
| Parallelogramma | Input / Output |
| Rettangolo | Elaborazione |
| Rombo | Decisione |
| Freccia | Direzione del flusso |

Esempio: verifica della maggiore età.

```text
          INIZIO
             |
             v
       LEGGI eta
             |
             v
        eta >= 18?
          /     \
        SI       NO
        |         |
        v         v
   STAMPA      STAMPA
  "Maggiorenne" "Minorenne"
        |         |
        +----+----+
             |
             v
            FINE
```

La rappresentazione grafica consente di verificare la logica prima di tradurla in un linguaggio di programmazione.

## 5.4 Strutture logiche fondamentali

Gli algoritmi utilizzano tre strutture fondamentali.

**Sequenza**

Le istruzioni vengono eseguite una dopo l'altra.

```python
a = 10
b = 20
somma = a + b

print(somma)
```

**Selezione**

Permette di scegliere tra percorsi alternativi.

```python
eta = 20

if eta >= 18:
    print("Accesso consentito")
else:
    print("Accesso negato")
```

**Iterazione**

Permette di ripetere un insieme di istruzioni.

```python
for tentativo in range(1, 6):
    print(f"Tentativo numero {tentativo}")
```

Queste tre strutture costituiscono la base della programmazione strutturata.

---

# 6. Esercitazione 1 – Calcolo di statistiche semplici

## Obiettivo

Realizzare un programma Python che elabori un insieme di valori numerici e calcoli alcune statistiche elementari.

Scenario: un sistema di monitoraggio registra i tempi di risposta di un servizio web.

Dati disponibili:

```python
tempi_risposta = [120, 150, 110, 200, 180, 130, 160]
```

I valori rappresentano millisecondi.

## 6.1 Analisi del problema

Input:

- Una lista di tempi di risposta.

Elaborazione:

- Calcolare il numero delle rilevazioni.
- Calcolare la somma.
- Calcolare la media.
- Individuare il valore minimo.
- Individuare il valore massimo.

Output:

- Un riepilogo statistico.

## 6.2 Implementazione

```python
# Tempi di risposta in millisecondi
tempi_risposta = [120, 150, 110, 200, 180, 130, 160]

# Numero di rilevazioni
numero_rilevazioni = len(tempi_risposta)

# Calcolo della somma
somma_tempi = sum(tempi_risposta)

# Calcolo della media
media = somma_tempi / numero_rilevazioni

# Valore minimo e massimo
minimo = min(tempi_risposta)
massimo = max(tempi_risposta)

# Visualizzazione dei risultati
print("STATISTICHE TEMPI DI RISPOSTA")

print(f"Rilevazioni: {numero_rilevazioni}")
print(f"Somma: {somma_tempi} ms")
print(f"Media: {media:.2f} ms")
print(f"Minimo: {minimo} ms")
print(f"Massimo: {massimo} ms")
```

Output:

```text
STATISTICHE TEMPI DI RISPOSTA

Rilevazioni: 7
Somma: 1050 ms
Media: 150.00 ms
Minimo: 110 ms
Massimo: 200 ms
```

## 6.3 Interpretazione dei risultati

Il programma utilizza alcune funzioni built-in di Python:

- `len()`: restituisce il numero degli elementi.
- `sum()`: calcola la somma.
- `min()`: restituisce il valore minimo.
- `max()`: restituisce il valore massimo.

La formattazione `{media:.2f}` visualizza il valore con due cifre decimali.

## 6.4 Estensione: rilevamento di anomalie

Supponiamo che il servizio consideri anomali i tempi di risposta superiori a 180 millisecondi.

```python
SOGLIA = 180

for tempo in tempi_risposta:

    if tempo > SOGLIA:
        print(f"ATTENZIONE: tempo anomalo {tempo} ms")
    else:
        print(f"Tempo regolare: {tempo} ms")
```

Questo semplice esempio introduce un concetto importante in cybersecurity: l'utilizzo di soglie per individuare comportamenti potenzialmente anomali.

Una soglia, da sola, non dimostra che sia avvenuto un attacco: segnala soltanto un evento che merita eventualmente un approfondimento.

---

# 7. Esercitazione 2 – Verifica di condizioni su dati di accesso simulati

## Obiettivo

Realizzare un semplice sistema di controllo degli accessi che analizzi alcuni dati simulati e individui situazioni potenzialmente sospette.

Lo scenario riproduce una parte della logica che potrebbe essere utilizzata in un sistema di monitoraggio degli accessi.

## 7.1 Dati di ingresso

Per ogni evento consideriamo:

- Nome utente.
- Indirizzo IP.
- Numero di tentativi falliti.
- Stato dell'account.

Definiamo i dati:

```python
accessi = [
    {
        "utente": "mario",
        "ip": "192.168.1.10",
        "tentativi_falliti": 1,
        "account_attivo": True
    },
    {
        "utente": "admin",
        "ip": "10.0.0.15",
        "tentativi_falliti": 6,
        "account_attivo": True
    },
    {
        "utente": "luca",
        "ip": "192.168.1.25",
        "tentativi_falliti": 0,
        "account_attivo": False
    },
    {
        "utente": "guest",
        "ip": "172.16.0.20",
        "tentativi_falliti": 3,
        "account_attivo": True
    }
]
```

Introduciamo una costante:

```python
MAX_TENTATIVI = 5
```

## 7.2 Definizione delle regole

Il sistema deve segnalare:

1. Account disattivati che presentano tentativi di accesso.
2. Account attivi con più di cinque tentativi falliti.
3. Gli altri casi devono essere considerati regolari rispetto alle regole definite.

La condizione di anomalia può essere espressa così:

```text
ANOMALIA =
    (NOT account_attivo AND tentativi_falliti > 0)
    OR
    (account_attivo AND tentativi_falliti > MAX_TENTATIVI)
```

## 7.3 Implementazione Python

```python
MAX_TENTATIVI = 5

accessi = [
    {
        "utente": "mario",
        "ip": "192.168.1.10",
        "tentativi_falliti": 1,
        "account_attivo": True
    },
    {
        "utente": "admin",
        "ip": "10.0.0.15",
        "tentativi_falliti": 6,
        "account_attivo": True
    },
    {
        "utente": "luca",
        "ip": "192.168.1.25",
        "tentativi_falliti": 0,
        "account_attivo": False
    },
    {
        "utente": "guest",
        "ip": "172.16.0.20",
        "tentativi_falliti": 3,
        "account_attivo": True
    }
]

for evento in accessi:

    utente = evento["utente"]
    ip = evento["ip"]
    tentativi = evento["tentativi_falliti"]
    attivo = evento["account_attivo"]

    print(f"\nAnalisi utente: {utente}")
    print(f"Indirizzo IP: {ip}")

    if not attivo and tentativi > 0:

        print("ALERT: tentativi su account disattivato")

    elif attivo and tentativi > MAX_TENTATIVI:

        print("ALERT: numero elevato di tentativi falliti")

    else:

        print("Accesso regolare rispetto alle regole definite")
```

Output atteso:

```text
Analisi utente: mario
Indirizzo IP: 192.168.1.10
Accesso regolare rispetto alle regole definite

Analisi utente: admin
Indirizzo IP: 10.0.0.15
ALERT: numero elevato di tentativi falliti

Analisi utente: luca
Indirizzo IP: 192.168.1.25
Accesso regolare rispetto alle regole definite

Analisi utente: guest
Indirizzo IP: 172.16.0.20
Accesso regolare rispetto alle regole definite
```

## 7.4 Analisi didattica del codice

In questa esercitazione abbiamo introdotto:

- Liste di elementi.
- Dizionari Python.
- Accesso ai valori attraverso le chiavi.
- Ciclo `for`.
- Condizioni `if`, `elif`, `else`.
- Operatori relazionali.
- Operatori logici.
- Costanti convenzionali.

Abbiamo inoltre introdotto un primo esempio di analisi di eventi di sicurezza.

**Osservazione:** si tratta di una simulazione didattica, non di un sistema di autenticazione reale. Il numero di tentativi viene analizzato per singolo evento e non costituisce un conteggio storico aggregato. Un sistema reale dovrebbe correlare gli eventi nel tempo e considerare ulteriori informazioni, come IP, sessioni, account e finestre temporali.

---

# 8. Organizzazione della logica in funzioni

Un programma diventa più leggibile e manutenibile quando suddividiamo le operazioni in funzioni.

Una funzione è un blocco di codice riutilizzabile, identificato da un nome e progettato per svolgere un compito specifico.

## 8.1 Definizione di una funzione

```python
def verifica_tentativi(tentativi, soglia):
    """Verifica se il numero di tentativi supera la soglia."""

    return tentativi > soglia


risultato = verifica_tentativi(6, 5)

print(risultato)
```

Output:

```text
True
```

La funzione:

- Riceve due parametri.
- Esegue un confronto.
- Restituisce un valore booleano.

## 8.2 Separazione delle responsabilità

Possiamo organizzare il controllo degli accessi in una funzione dedicata:

```python
MAX_TENTATIVI = 5


def analizza_accesso(evento):

    tentativi = evento["tentativi_falliti"]
    account_attivo = evento["account_attivo"]

    if not account_attivo and tentativi > 0:
        return "Account disattivato con tentativi"

    if account_attivo and tentativi > MAX_TENTATIVI:
        return "Numero elevato di tentativi falliti"

    return "Regolare"
```

La funzione restituisce una descrizione dell'esito.

Il programma principale può utilizzare la funzione:

```python
for evento in accessi:

    esito = analizza_accesso(evento)

    print(f"{evento['utente']}: {esito}")
```

Questo approccio introduce il principio della separazione delle responsabilità: ogni funzione dovrebbe occuparsi di un compito ben definito.

---

# 9. Introduzione a FastAPI: esporre la logica attraverso un'API

Dopo aver realizzato algoritmi e funzioni Python, possiamo introdurre un primo concetto di sviluppo backend.

FastAPI è un framework Python per la realizzazione di API web.

Permette di esporre una funzione Python attraverso un endpoint HTTP, rendendola utilizzabile da un client esterno.

## 9.1 Installazione

All'interno dell'ambiente virtuale:

```bash
pip install "fastapi[standard]"
```

Verificare l'installazione:

```bash
pip show fastapi
```

## 9.2 Primo progetto FastAPI

Creiamo il file `main.py`:

```python
from fastapi import FastAPI

app = FastAPI(
    title="Security Monitor",
    description="API didattica per il monitoraggio degli accessi",
    version="1.0.0"
)


@app.get("/")
def home():
    return {
        "messaggio": "Security Monitor attivo"
    }


@app.get("/verifica-accesso")
def verifica_accesso(
    tentativi: int,
    account_attivo: bool
):

    MAX_TENTATIVI = 5

    if not account_attivo and tentativi > 0:
        esito = "Account disattivato con tentativi"

    elif account_attivo and tentativi > MAX_TENTATIVI:
        esito = "Numero elevato di tentativi falliti"

    else:
        esito = "Regolare"

    return {
        "tentativi": tentativi,
        "account_attivo": account_attivo,
        "esito": esito
    }
```

## 9.3 Avvio del server

Dal terminale:

```bash
fastapi dev main.py
```

Il server di sviluppo sarà disponibile normalmente all'indirizzo:

```text
http://127.0.0.1:8000
```

Documentazione interattiva:

```text
http://127.0.0.1:8000/docs
```

FastAPI genera automaticamente la documentazione Swagger UI.

## 9.4 Test dell'endpoint

Proviamo una richiesta:

```text
GET /verifica-accesso?tentativi=6&account_attivo=true
```

Risposta JSON:

```json
{
    "tentativi": 6,
    "account_attivo": true,
    "esito": "Numero elevato di tentativi falliti"
}
```

Proviamo un secondo caso:

```text
GET /verifica-accesso?tentativi=0&account_attivo=false
```

Risposta:

```json
{
    "tentativi": 0,
    "account_attivo": false,
    "esito": "Regolare"
}
```

## 9.5 Cosa abbiamo realizzato?

Abbiamo costruito una piccola applicazione backend.

Il flusso è:

1. Un client invia una richiesta HTTP.
2. FastAPI riceve la richiesta.
3. I parametri vengono convertiti e validati.
4. La funzione Python applica le regole logiche.
5. Il server restituisce una risposta JSON.

Questo esempio permette di comprendere il collegamento tra programmazione, algoritmi e sviluppo di servizi backend.

Nota didattica: l'endpoint restituisce un esito dimostrativo. Non autentica utenti, non blocca account e non sostituisce un sistema di sicurezza reale.

---

# 10. Esercizi di consolidamento

## Esercizio 1 – Calcolo delle statistiche

Realizzare un programma che riceva cinque numeri interi e calcoli:

- Somma.
- Media.
- Valore massimo.
- Valore minimo.
- Numero di valori pari.

Vincolo: utilizzare una lista e un ciclo `for`.

## Esercizio 2 – Controllo delle credenziali simulate

Realizzare un algoritmo che verifichi le seguenti condizioni:

- L'utente deve essere attivo.
- La password deve risultare valida.
- L'account non deve essere bloccato.

Il programma deve restituire:

- Accesso consentito.
- Accesso negato.

Utilizzare gli operatori `and`, `or` e `not`.

## Esercizio 3 – Rilevamento dei tentativi sospetti

Dato un elenco di utenti con il relativo numero di tentativi falliti:

```python
utenti = {
    "mario": 2,
    "luca": 7,
    "anna": 1,
    "admin": 12,
    "guest": 5
}
```

Realizzare un programma che:

1. Analizzi tutti gli utenti.
2. Identifichi quelli con più di cinque tentativi falliti.
3. Visualizzi un messaggio di allerta.
4. Calcoli quanti utenti hanno superato la soglia.

## Esercizio 4 – Analisi di una condizione logica

Un sistema consente l'accesso amministrativo solamente quando:

- L'utente è autenticato.
- L'utente possiede il ruolo amministratore oppure supervisore.
- L'account non è sospeso.

Scrivere l'espressione booleana corrispondente e implementarla in Python.

## Esercizio 5 – Mini API di monitoraggio

Partendo dal progetto FastAPI:

1. Creare un endpoint `/statistiche`.
2. Restituire il numero complessivo di eventi.
3. Calcolare il numero di eventi anomali.
4. Calcolare la percentuale di anomalie.
5. Restituire il risultato in formato JSON.

---

# 11. Riepilogo e verifica dell'apprendimento

## Concetti da ricordare

| Argomento | Concetto fondamentale |
| --- | --- |
| Python | Linguaggio interpretato e dinamicamente tipizzato |
| Variabile | Nome associato a un valore |
| Costante | Identificatore che, per convenzione, non dovrebbe essere modificato |
| int | Numero intero |
| float | Numero decimale in virgola mobile |
| str | Sequenza di caratteri |
| bool | Valore True o False |
| Operatori | Consentono calcoli e confronti |
| Algebra di Boole | Permette di combinare condizioni logiche |
| Algoritmo | Sequenza finita e ordinata di operazioni |
| Pseudocodice | Rappresentazione testuale di un algoritmo |
| Diagramma di flusso | Rappresentazione grafica di un algoritmo |
| Funzione | Blocco di codice riutilizzabile |
| FastAPI | Framework per realizzare API web in Python |

## Domande di verifica

1. Qual è la differenza tra un linguaggio compilato e uno interpretato?
2. Che cosa significa che Python è dinamicamente tipizzato?
3. Qual è la differenza tra `=` e `==`?
4. Qual è la differenza tra gli operatori `and` e `or`?
5. Quando una condizione booleana restituisce `True`?
6. Che cosa caratterizza un algoritmo?
7. Qual è la differenza tra pseudocodice e codice Python?
8. A cosa serve un diagramma di flusso?
9. Perché è opportuno suddividere un programma in funzioni?
10. Qual è il ruolo di FastAPI nello sviluppo backend?

## Risultato atteso

Lo studente deve essere in grado di passare dalla descrizione di un problema alla definizione di un algoritmo e alla sua implementazione in Python, utilizzando variabili, operatori, condizioni e funzioni.

La capacità di tradurre un problema in una sequenza ordinata di istruzioni costituisce il fondamento per affrontare successivamente strutture dati, programmazione a oggetti, scripting per la sicurezza, elaborazione dei log e sviluppo di applicazioni backend.
