# Slide 7: Strutture Dati 📊

### Cos'è una struttura dati?

Le **strutture dati** sono modi per organizzare, gestire e memorizzare dati in modo efficiente per accedervi e modificarli.

**Analogia:** Come organizzare i libri in una biblioteca - scaffali, sezioni, cataloghi.

### Perché sono importanti?

- ⚡ **Performance**: Operazioni più veloci
- 🎯 **Organizzazione**: Dati strutturati e accessibili
- 💾 **Efficienza**: Uso ottimale della memoria
- 🔍 **Ricerca**: Trovare dati rapidamente

### 1. Array/Liste (già viste)

#### Caratteristiche

- Collezione **ordinata** di elementi
- Accesso per **indice** (posizione)
- **Dimensione dinamica** (in Python)

```python
# Creazione
numeri = [10, 20, 30, 40, 50]
misto = [1, "ciao", 3.14, True]

# Operazioni comuni
numeri.append(60)      # Aggiunge alla fine
numeri.insert(0, 5)    # Inserisce in posizione
numeri.remove(30)      # Rimuove elemento
numeri.pop()           # Rimuove ultimo
numeri.sort()          # Ordina
numeri.reverse()       # Inverte

# Complessità temporale
# Accesso: O(1) - molto veloce
# Ricerca: O(n) - lenta
# Inserimento fine: O(1) - veloce
# Inserimento inizio: O(n) - lenta
```

### 2. Stack (Pila) 📚

#### Concetto: LIFO (Last In, First Out)

**Come una pila di piatti**: l'ultimo inserito è il primo ad uscire.

```python
class Stack:
    def __init__(self):
        self.items = []
    
    def push(self, item):
        """Aggiunge elemento in cima"""
        self.items.append(item)
    
    def pop(self):
        """Rimuove e restituisce l'elemento in cima"""
        if not self.is_empty():
            return self.items.pop()
        return None
    
    def peek(self):
        """Guarda l'elemento in cima senza rimuoverlo"""
        if not self.is_empty():
            return self.items[-1]
        return None
    
    def is_empty(self):
        """Controlla se lo stack è vuoto"""
        return len(self.items) == 0
    
    def size(self):
        """Restituisce il numero di elementi"""
        return len(self.items)

# Utilizzo
stack = Stack()
stack.push("primo")
stack.push("secondo")
stack.push("terzo")

print(stack.peek())    # "terzo"
print(stack.pop())     # "terzo"
print(stack.pop())     # "secondo"
print(stack.size())    # 1
```

#### Applicazioni pratiche

- 🔙 **Undo/Redo** negli editor
- 🌐 **Navigazione browser** (back button)
- 📞 **Call stack** nei linguaggi di programmazione
- ✅ **Validazione parentesi** in espressioni

```python
def controlla_parentesi(espressione):
    """Controlla se le parentesi sono bilanciate"""
    stack = []
    coppie = {'(': ')', '[': ']', '{': '}'}
    
    for carattere in espressione:
        if carattere in coppie:  # Parentesi aperta
            stack.append(carattere)
        elif carattere in coppie.values():  # Parentesi chiusa
            if not stack or coppie[stack.pop()] != carattere:
                return False
    
    return len(stack) == 0

# Test
print(controlla_parentesi("(a + b) * [c - d]"))  # True
print(controlla_parentesi("((a + b)"))            # False
print(controlla_parentesi("(a + b])"))            # False
```

### 3. Queue (Coda) 🚶‍♂️🚶‍♀️🚶

#### Concetto: FIFO (First In, First Out)

**Come una coda al supermercato**: il primo arrivato è il primo servito.

```python
from collections import deque

class Queue:
    def __init__(self):
        self.items = deque()
    
    def enqueue(self, item):
        """Aggiunge elemento alla fine della coda"""
        self.items.append(item)
    
    def dequeue(self):
        """Rimuove e restituisce il primo elemento"""
        if not self.is_empty():
            return self.items.popleft()
        return None
    
    def front(self):
        """Guarda il primo elemento senza rimuoverlo"""
        if not self.is_empty():
            return self.items[0]
        return None
    
    def is_empty(self):
        return len(self.items) == 0
    
    def size(self):
        return len(self.items)

# Utilizzo
coda = Queue()
coda.enqueue("Cliente 1")
coda.enqueue("Cliente 2")
coda.enqueue("Cliente 3")

print(coda.dequeue())  # "Cliente 1"
print(coda.dequeue())  # "Cliente 2"
print(coda.size())     # 1
```

#### Applicazioni pratiche

- 🖨️ **Code di stampa**
- 📱 **Gestione messaggi** in chat
- 🎮 **Sistemi di matchmaking** nei giochi
- 💻 **Task scheduling** nei sistemi operativi

```python
# Simulazione coda supermercato
class CassaSupermercato:
    def __init__(self, nome):
        self.nome = nome
        self.coda = Queue()
    
    def aggiungi_cliente(self, cliente):
        self.coda.enqueue(cliente)
        print(f"✓ {cliente} si è accodato alla {self.nome}")
    
    def servi_cliente(self):
        if not self.coda.is_empty():
            cliente = self.coda.dequeue()
            print(f"💳 Servendo {cliente} alla {self.nome}")
            return cliente
        else:
            print(f"Nessun cliente in attesa alla {self.nome}")
            return None
    
    def clienti_in_attesa(self):
        return self.coda.size()

# Simulazione
cassa1 = CassaSupermercato("Cassa 1")
cassa1.aggiungi_cliente("Mario")
cassa1.aggiungi_cliente("Anna")
cassa1.aggiungi_cliente("Luigi")

print(f"Clienti in attesa: {cassa1.clienti_in_attesa()}")
cassa1.servi_cliente()
cassa1.servi_cliente()
```

### 4. Dizionari/Hash Maps (già visti)

#### Caratteristiche

- Coppie **chiave-valore**
- Accesso **molto veloce** per chiave
- Chiavi devono essere **uniche**

```python
# Rubrica telefonica
rubrica = {
    "Mario Rossi": "333-1234567",
    "Anna Bianchi": "340-9876543",
    "Luigi Verdi": "347-5551234"
}

# Operazioni O(1) - molto veloci!
telefono = rubrica["Mario Rossi"]  # Accesso
rubrica["Sara Neri"] = "328-1112233"  # Inserimento
del rubrica["Luigi Verdi"]  # Rimozione
```

#### Applicazioni pratiche

- 📇 **Database** in memoria
- 🔐 **Cache** di risultati
- 🌐 **Configurazioni** applicazioni
- 📊 **Conteggio occorrenze**

```python
def conta_parole(testo):
    """Conta le occorrenze di ogni parola in un testo"""
    parole = testo.lower().split()
    conteggio = {}
    
    for parola in parole:
        # Rimuovi punteggiatura
        parola_pulita = ''.join(c for c in parola if c.isalnum())
        
        if parola_pulita:
            if parola_pulita in conteggio:
                conteggio[parola_pulita] += 1
            else:
                conteggio[parola_pulita] = 1
    
    return conteggio

testo = "Python è fantastico. Python è potente. Python è versatile."
risultato = conta_parole(testo)
print(risultato)
# {'python': 3, 'è': 3, 'fantastico': 1, 'potente': 1, 'versatile': 1}
```

### 5. Set (Insieme) 🔵

#### Caratteristiche

- Elementi **unici** (no duplicati)
- **Non ordinato**
- Operazioni **insiemistiche** efficienti

```python
# Creazione
numeri_unici = {1, 2, 3, 4, 5}
numeri_con_duplicati = {1, 2, 2, 3, 3, 3}
print(numeri_con_duplicati)  # {1, 2, 3} - duplicati rimossi

# Operazioni
numeri_unici.add(6)       # Aggiunge elemento
numeri_unici.remove(1)    # Rimuove elemento
numeri_unici.discard(10)  # Rimuove (no errore se non esiste)

# Operazioni insiemistiche
A = {1, 2, 3, 4, 5}
B = {4, 5, 6, 7, 8}

unione = A | B           # {1, 2, 3, 4, 5, 6, 7, 8}
intersezione = A & B     # {4, 5}
differenza = A - B       # {1, 2, 3}
diff_simmetrica = A ^ B  # {1, 2, 3, 6, 7, 8}
```

#### Applicazioni pratiche

```python
# 1. Rimozione duplicati
numeri_con_duplicati = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
numeri_unici = list(set(numeri_con_duplicati))
print(numeri_unici)  # [1, 2, 3, 4]

# 2. Analisi utenti social
utenti_facebook = {"Mario", "Anna", "Luigi", "Sara"}
utenti_instagram = {"Anna", "Luigi", "Paolo", "Chiara"}

# Utenti su entrambe le piattaforme
su_entrambe = utenti_facebook & utenti_instagram
print(f"Su entrambe: {su_entrambe}")  # {'Anna', 'Luigi'}

# Utenti totali
tutti_utenti = utenti_facebook | utenti_instagram
print(f"Totali: {len(tutti_utenti)}")  # 6

# Solo su Facebook
solo_facebook = utenti_facebook - utenti_instagram
print(f"Solo Facebook: {solo_facebook}")  # {'Mario', 'Sara'}
```

### 6. Linked List (Lista Concatenata) 🔗

#### Concetto

Una sequenza di **nodi** collegati, dove ogni nodo contiene:

- Un **valore** (dato)
- Un **riferimento** al nodo successivo

```python
class Nodo:
    def __init__(self, valore):
        self.valore = valore
        self.successivo = None

class ListaConcatenata:
    def __init__(self):
        self.testa = None
    
    def aggiungi_in_testa(self, valore):
        """Aggiunge un nodo all'inizio"""
        nuovo_nodo = Nodo(valore)
        nuovo_nodo.successivo = self.testa
        self.testa = nuovo_nodo
    
    def aggiungi_in_coda(self, valore):
        """Aggiunge un nodo alla fine"""
        nuovo_nodo = Nodo(valore)
        
        if self.testa is None:
            self.testa = nuovo_nodo
            return
        
        corrente = self.testa
        while corrente.successivo:
            corrente = corrente.successivo
        
        corrente.successivo = nuovo_nodo
    
    def stampa_lista(self):
        """Stampa tutti gli elementi"""
        corrente = self.testa
        elementi = []
        
        while corrente:
            elementi.append(str(corrente.valore))
            corrente = corrente.successivo
        
        print(" -> ".join(elementi))
    
    def cerca(self, valore):
        """Cerca un valore nella lista"""
        corrente = self.testa
        posizione = 0
        
        while corrente:
            if corrente.valore == valore:
                return posizione
            corrente = corrente.successivo
            posizione += 1
        
        return -1  # Non trovato

# Utilizzo
lista = ListaConcatenata()
lista.aggiungi_in_coda(10)
lista.aggiungi_in_coda(20)
lista.aggiungi_in_coda(30)
lista.aggiungi_in_testa(5)

lista.stampa_lista()  # 5 -> 10 -> 20 -> 30
print(f"Posizione di 20: {lista.cerca(20)}")  # 2
```

### Confronto Strutture Dati

| Struttura | Accesso | Ricerca | Inserimento | Rimozione | Uso Principale |
|-----------|---------|---------|-------------|-----------|----------------|
| **Array/Lista** | O(1) | O(n) | O(n) | O(n) | Accesso indicizzato |
| **Stack** | O(n) | O(n) | O(1) | O(1) | LIFO, undo/redo |
| **Queue** | O(n) | O(n) | O(1) | O(1) | FIFO, task scheduling |
| **Dizionario** | O(1) | O(1) | O(1) | O(1) | Lookup veloce |
| **Set** | - | O(1) | O(1) | O(1) | Unicità, operazioni insieme |
| **Linked List** | O(n) | O(n) | O(1) | O(1) | Inserimenti frequenti |

### Scegliere la struttura giusta

```python
# ✅ USA LISTA quando:
# - Hai bisogno di accesso per indice
# - L'ordine è importante
menu_ristorante = ["Antipasto", "Primo", "Secondo", "Dolce"]

# ✅ USA DIZIONARIO quando:
# - Hai coppie chiave-valore
# - Serve lookup veloce
prezzi_menu = {"Antipasto": 8, "Primo": 12, "Secondo": 15}

# ✅ USA SET quando:
# - Elementi devono essere unici
# - Serve controllo appartenenza veloce
ingredienti_allergeni = {"glutine", "lattosio", "uova"}

# ✅ USA STACK quando:
# - Serve comportamento LIFO
# - Undo/redo, navigazione
cronologia_browser = Stack()

# ✅ USA QUEUE quando:
# - Serve comportamento FIFO
# - Gestione ordini, task
coda_stampa = Queue()
```

### 💡 Best Practices

- **Scegli in base alle operazioni** più frequenti
- **Considera la complessità** temporale
- **Testa con dati realistici** prima di decidere
- **Non ottimizzare prematuramente**: parti dal semplice
