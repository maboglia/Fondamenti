# Slide 4: Variabili e Tipi di Dati 📦

### Cosa sono le variabili?

Le **variabili** sono **contenitori** che memorizzano informazioni che possono essere utilizzate e modificate nel programma.

**Analogia:** Come una scatola con un'etichetta che contiene qualcosa all'interno.

### Dichiarazione di variabili

```python
# Python
nome = "Mario"
età = 30
altezza = 1.75
è_studente = True
```

```javascript
// JavaScript
let nome = "Mario";
const età = 30;
var altezza = 1.75;
let è_studente = true;
```

### Tipi di Dati Fondamentali

#### 1️⃣ Numeri (Numbers)

**Interi (int/integer):**

```python
età = 25
anno = 2024
temperatura = -5
punteggio = 0
```

**Decimali (float/double):**

```python
prezzo = 19.99
pi_greco = 3.14159
temperatura = 36.6
peso = 72.5
```

**Operazioni numeriche:**

```python
somma = 10 + 5        # 15
differenza = 20 - 8   # 12
prodotto = 6 * 7      # 42
divisione = 100 / 4   # 25.0
potenza = 2 ** 3      # 8
resto = 17 % 5        # 2
```

#### 2️⃣ Stringhe (String)

**Testo tra virgolette:**

```python
nome = "Anna"
cognome = 'Rossi'
messaggio = "Benvenuto nel corso!"
indirizzo = "Via Roma, 123"
```

**Operazioni con stringhe:**

```python
# Concatenazione
nome_completo = "Anna" + " " + "Rossi"  # "Anna Rossi"

# Ripetizione
risata = "ha" * 3  # "hahaha"

# Lunghezza
lunghezza = len("Ciao")  # 4

# Maiuscole/minuscole
testo = "python"
print(testo.upper())  # "PYTHON"
print(testo.capitalize())  # "Python"

# Estrazione caratteri
prima_lettera = nome[0]  # "A"
```

#### 3️⃣ Booleani (Boolean)

**Vero o Falso:**

```python
è_maggiorenne = True
ha_patente = False
è_studente = True
corso_completato = False
```

**Operazioni logiche:**

```python
# AND - entrambi devono essere veri
può_guidare = è_maggiorenne and ha_patente

# OR - almeno uno deve essere vero
ha_sconto = è_studente or età < 18

# NOT - inverte il valore
non_è_maggiorenne = not è_maggiorenne
```

#### 4️⃣ Liste/Array

**Collezione ordinata di elementi:**

```python
# Python - Liste
frutti = ["mela", "banana", "arancia", "pera"]
numeri = [1, 2, 3, 4, 5]
misto = [1, "ciao", True, 3.14]

# Accesso agli elementi
primo_frutto = frutti[0]  # "mela"
ultimo = frutti[-1]  # "pera"

# Modifica
frutti[1] = "kiwi"  # Sostituisce "banana"
frutti.append("uva")  # Aggiunge alla fine

# Operazioni
lunghezza = len(frutti)  # Numero elementi
```

```javascript
// JavaScript - Array
const frutti = ["mela", "banana", "arancia"];
const numeri = [1, 2, 3, 4, 5];

frutti.push("kiwi");  // Aggiunge alla fine
frutti.pop();  // Rimuove l'ultimo
```

#### 5️⃣ Dizionari/Oggetti

**Coppie chiave-valore:**

```python
# Python - Dizionario
studente = {
    "nome": "Mario",
    "età": 22,
    "corso": "Informatica",
    "media_voti": 27.5,
    "è_attivo": True
}

# Accesso ai valori
nome_studente = studente["nome"]  # "Mario"
età = studente.get("età")  # 22

# Modifica
studente["età"] = 23
studente["email"] = "mario@email.com"
```

```javascript
// JavaScript - Oggetto
const studente = {
    nome: "Mario",
    età: 22,
    corso: "Informatica",
    mediaVoti: 27.5,
    èAttivo: true
};

// Accesso
const nome = studente.nome;  // "Mario"
const età = studente["età"];  // 22
```

### Conversione tra tipi (Type Casting)

```python
# Da stringa a numero
età_stringa = "25"
età_numero = int(età_stringa)  # 25

# Da numero a stringa
punteggio = 100
punteggio_stringa = str(punteggio)  # "100"

# Da stringa a float
prezzo = float("19.99")  # 19.99

# Da numero a booleano
vero = bool(1)   # True
falso = bool(0)  # False
```

### 💡 Best Practices

- **Nomi descrittivi**: `nome_studente` invece di `x`
- **Convenzioni**: in Python usa `snake_case`, in JavaScript `camelCase`
- **Costanti**: usa MAIUSCOLE per valori che non cambiano (`PI_GRECO = 3.14`)
