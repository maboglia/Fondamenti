# Slide 6: Funzioni e Procedure 🔧

### Cos'è una funzione?

Una **funzione** è un blocco di codice riutilizzabile che:

- Esegue un compito specifico
- Può ricevere dati in input (parametri)
- Può restituire un risultato (return)
- Rende il codice più organizzato e manutenibile

**Analogia:** Come una ricetta in cucina - definisci una volta, usi molte volte!

### Perché usare le funzioni?

#### ✅ Vantaggi

1. **Riutilizzabilità**: Scrivi una volta, usa ovunque
2. **Organizzazione**: Codice più strutturato e leggibile
3. **Manutenzione**: Modifica in un solo punto
4. **Testing**: Facile testare componenti isolati
5. **Collaborazione**: Team diversi lavorano su funzioni diverse

### Sintassi Base

#### Python

```python
# Definizione di una funzione
def nome_funzione():
    # corpo della funzione
    print("Questa è una funzione!")

# Chiamata della funzione
nome_funzione()
```

#### JavaScript

```javascript
// Definizione
function nomeFunzione() {
    // corpo della funzione
    console.log("Questa è una funzione!");
}

// Chiamata
nomeFunzione();
```

### Funzioni con Parametri

#### Parametri singoli

```python
def saluta(nome):
    print(f"Ciao {nome}!")
    print("Benvenuto nel corso!")

# Chiamate con argomenti diversi
saluta("Mario")    # Ciao Mario!
saluta("Anna")     # Ciao Anna!
saluta("Luigi")    # Ciao Luigi!
```

#### Parametri multipli

```python
def presenta_persona(nome, età, città):
    print(f"Mi chiamo {nome}")
    print(f"Ho {età} anni")
    print(f"Vivo a {città}")

presenta_persona("Marco", 25, "Roma")
# Output:
# Mi chiamo Marco
# Ho 25 anni
# Vivo a Roma
```

#### Parametri con valori predefiniti

```python
def saluta(nome, messaggio="Buongiorno"):
    print(f"{messaggio}, {nome}!")

saluta("Anna")  # Buongiorno, Anna!
saluta("Marco", "Buonasera")  # Buonasera, Marco!
saluta("Luigi", messaggio="Ciao")  # Ciao, Luigi!
```

### Funzioni con Return

#### Return singolo

```python
def somma(a, b):
    risultato = a + b
    return risultato

# Utilizzo
totale = somma(5, 3)
print(totale)  # 8

# Direttamente in un'espressione
print(f"10 + 20 = {somma(10, 20)}")  # 10 + 20 = 30
```

#### Funzioni matematiche

```python
def calcola_area_rettangolo(base, altezza):
    """Calcola l'area di un rettangolo"""
    return base * altezza

def calcola_area_cerchio(raggio):
    """Calcola l'area di un cerchio"""
    pi = 3.14159
    return pi * raggio ** 2

def calcola_ipotenusa(cateto1, cateto2):
    """Calcola l'ipotenusa usando il teorema di Pitagora"""
    return (cateto1**2 + cateto2**2) ** 0.5

# Utilizzo
area1 = calcola_area_rettangolo(5, 10)  # 50
area2 = calcola_area_cerchio(7)  # ~153.94
ipotenusa = calcola_ipotenusa(3, 4)  # 5.0
```

#### Return multipli

```python
def statistiche_lista(numeri):
    """Calcola min, max e media di una lista"""
    if not numeri:
        return None, None, None
    
    minimo = min(numeri)
    massimo = max(numeri)
    media = sum(numeri) / len(numeri)
    
    return minimo, massimo, media

# Utilizzo
dati = [10, 25, 18, 30, 22]
min_val, max_val, media_val = statistiche_lista(dati)

print(f"Minimo: {min_val}")    # 10
print(f"Massimo: {max_val}")   # 30
print(f"Media: {media_val}")   # 21.0
```

### Scope delle Variabili

#### Variabili locali vs globali

```python
# Variabile globale
totale_studenti = 100

def aggiungi_studente():
    # Variabile locale
    nuovo_studente = "Mario"
    print(f"Nuovo studente: {nuovo_studente}")
    print(f"Totale studenti: {totale_studenti}")

aggiungi_studente()
# print(nuovo_studente)  # ✗ Errore! Non accessibile fuori dalla funzione

# Modificare variabile globale
contatore = 0

def incrementa():
    global contatore
    contatore += 1

incrementa()
incrementa()
print(contatore)  # 2
```

### Esempi Pratici Completi

#### 1. Calcolatrice

```python
def calcolatrice(num1, num2, operazione):
    """Esegue operazioni matematiche di base"""
    if operazione == "+":
        return num1 + num2
    elif operazione == "-":
        return num1 - num2
    elif operazione == "*":
        return num1 * num2
    elif operazione == "/":
        if num2 != 0:
            return num1 / num2
        else:
            return "Errore: divisione per zero"
    else:
        return "Operazione non valida"

# Utilizzo
print(calcolatrice(10, 5, "+"))   # 15
print(calcolatrice(10, 5, "-"))   # 5
print(calcolatrice(10, 5, "*"))   # 50
print(calcolatrice(10, 5, "/"))   # 2.0
print(calcolatrice(10, 0, "/"))   # Errore: divisione per zero
```

#### 2. Validatore email

```python
def valida_email(email):
    """Controlla se un'email è valida (versione semplificata)"""
    # Controlli di base
    if "@" not in email:
        return False
    
    if email.count("@") != 1:
        return False
    
    if "." not in email:
        return False
    
    parti = email.split("@")
    if len(parti[0]) == 0 or len(parti[1]) == 0:
        return False
    
    return True

# Test
print(valida_email("mario@email.com"))    # True
print(valida_email("anna.rossi@uni.it"))  # True
print(valida_email("invalido@"))          # False
print(valida_email("no-chiocciola.com"))  # False
```

#### 3. Convertitore temperatura

```python
def celsius_to_fahrenheit(celsius):
    """Converte Celsius in Fahrenheit"""
    return (celsius * 9/5) + 32

def fahrenheit_to_celsius(fahrenheit):
    """Converte Fahrenheit in Celsius"""
    return (fahrenheit - 32) * 5/9

def celsius_to_kelvin(celsius):
    """Converte Celsius in Kelvin"""
    return celsius + 273.15

def converti_temperatura(valore, da_unità, a_unità):
    """Convertitore universale di temperatura"""
    # Normalizza a Celsius
    if da_unità == "F":
        celsius = fahrenheit_to_celsius(valore)
    elif da_unità == "K":
        celsius = valore - 273.15
    else:  # Già in Celsius
        celsius = valore
    
    # Converti alla unità desiderata
    if a_unità == "F":
        return celsius_to_fahrenheit(celsius)
    elif a_unità == "K":
        return celsius_to_kelvin(celsius)
    else:  # Celsius
        return celsius

# Utilizzo
print(f"100°C = {converti_temperatura(100, 'C', 'F')}°F")  # 212.0
print(f"32°F = {converti_temperatura(32, 'F', 'C')}°C")    # 0.0
print(f"0°C = {converti_temperatura(0, 'C', 'K')}K")       # 273.15
```

#### 4. Generatore di password

```python
import random
import string

def genera_password(lunghezza=12, include_numeri=True, include_simboli=True):
    """Genera una password casuale"""
    caratteri = string.ascii_letters  # a-z, A-Z
    
    if include_numeri:
        caratteri += string.digits  # 0-9
    
    if include_simboli:
        caratteri += "!@#$%^&*"
    
    password = ''.join(random.choice(caratteri) for _ in range(lunghezza))
    return password

# Utilizzo
print(genera_password())  # Es: aB3$xY9!mK2p
print(genera_password(8, False, False))  # Es: AbCdEfGh
print(genera_password(16, True, True))  # Es: 9x!K2@mP5#nR8$qT
```

### Funzioni Lambda (Anonime)

#### Python

```python
# Funzione normale
def quadrato(x):
    return x ** 2

# Equivalente con lambda
quadrato_lambda = lambda x: x ** 2

print(quadrato(5))         # 25
print(quadrato_lambda(5))  # 25

# Lambda con più parametri
somma = lambda a, b: a + b
print(somma(3, 7))  # 10

# Uso con map, filter
numeri = [1, 2, 3, 4, 5]
quadrati = list(map(lambda x: x**2, numeri))
print(quadrati)  # [1, 4, 9, 16, 25]

pari = list(filter(lambda x: x % 2 == 0, numeri))
print(pari)  # [2, 4]
```

#### JavaScript

```javascript
// Arrow function (ES6)
const quadrato = (x) => x ** 2;
const somma = (a, b) => a + b;

console.log(quadrato(5));  // 25
console.log(somma(3, 7));  // 10

// Con array methods
const numeri = [1, 2, 3, 4, 5];
const quadrati = numeri.map(x => x ** 2);
const pari = numeri.filter(x => x % 2 === 0);
```

### Documentazione delle Funzioni (Docstrings)

```python
def calcola_bmi(peso, altezza):
    """
    Calcola l'Indice di Massa Corporea (BMI).
    
    Parametri:
        peso (float): Peso in chilogrammi
        altezza (float): Altezza in metri
    
    Returns:
        float: Valore del BMI
        str: Categoria di peso
    
    Esempio:
        >>> calcola_bmi(70, 1.75)
        (22.86, "Normopeso")
    """
    bmi = peso / (altezza ** 2)
    
    if bmi < 18.5:
        categoria = "Sottopeso"
    elif bmi < 25:
        categoria = "Normopeso"
    elif bmi < 30:
        categoria = "Sovrappeso"
    else:
        categoria = "Obesità"
    
    return round(bmi, 2), categoria

# Utilizzo
bmi, categoria = calcola_bmi(70, 1.75)
print(f"BMI: {bmi} - {categoria}")
```

### 💡 Best Practices

- **Nome descrittivo**: `calcola_totale()` non `calc()`
- **Una responsabilità**: ogni funzione fa una cosa sola
- **Documenta**: usa docstrings per funzioni complesse
- **Evita side effects**: preferisci return a modifiche globali
- **DRY**: Don't Repeat Yourself - riutilizza il codice
