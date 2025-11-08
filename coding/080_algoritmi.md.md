# Slide 8: Logica di Programmazione - Algoritmi 🧠

### Cos'è un Algoritmo?

Un **algoritmo** è una sequenza finita di istruzioni:
- **Ben definite** e **non ambigue**
- Che risolvono un **problema specifico**
- In un **numero finito** di passi

**Analogia:** Una ricetta di cucina - passi precisi per ottenere un risultato.

### Caratteristiche di un buon algoritmo

✅ **Correttezza**: Produce il risultato atteso
✅ **Efficienza**: Usa risorse (tempo, memoria) in modo ottimale
✅ **Chiarezza**: Facile da comprendere e implementare
✅ **Finito**: Termina sempre
✅ **Generale**: Funziona per qualsiasi input valido

### Complessità Algoritmica

#### Notazione Big O
Misura come cresce il tempo di esecuzione al crescere dell'input.

| Notazione | Nome | Esempio | Performance |
|-----------|------|---------|-------------|
| **O(1)** | Costante | Accesso array | ⚡ Eccellente |
| **O(log n)** | Logaritmica | Ricerca binaria | ✅ Ottima |
| **O(n)** | Lineare | Ricerca lineare | 👍 Buona |
| **O(n log n)** | Linearitmica | Merge sort | 👌 Accettabile |
| **O(n²)** | Quadratica | Bubble sort | ⚠️ Lenta |
| **O(2ⁿ)** | Esponenziale | Fibonacci ricorsivo | ❌ Molto lenta |

```python
# O(1) - Costante
def accedi_elemento(lista, indice):
    return lista[indice]  # Sempre stesso tempo

# O(n) - Lineare
def cerca_elemento(lista, valore):
    for elemento in lista:  # Cresce con n
        if elemento == valore:
            return True
    return False

# O(n²) - Quadratica
def stampa_coppie(lista):
    for i in lista:  # n iterazioni
        for j in lista:  # n iterazioni per ognuna
            print(f"({i}, {j})")
```

### 1. Algoritmi di Ricerca

#### Ricerca Lineare (Linear Search)

**Concetto:** Controlla ogni elemento finché non trova quello cercato.

```python
def ricerca_lineare(lista, target):
    """
    Cerca un elemento nella lista sequenzialmente.
    
    Complessità: O(n)
    Caso migliore: O(1) - elemento in prima posizione
    Caso peggiore: O(n) - elemento in ultima posizione o assente
    """
    for i in range(len(lista)):
        if lista[i] == target:
            return i  # Restituisce l'indice
    return -1  # Non trovato

# Test
numeri = [10, 23, 45, 12, 67, 89, 34]
print(ricerca_lineare(numeri, 67))  # 4
print(ricerca_lineare(numeri, 100))  # -1
```

**✅ Pro:** Semplice, funziona su liste non ordinate
**❌ Contro:** Lenta su liste grandi

#### Ricerca Binaria (Binary Search)

**Concetto:** Divide ripetutamente la lista a metà (richiede lista ordinata).

```python
def ricerca_binaria(lista, target):
    """
    Cerca un elemento in una lista ordinata dividendola a metà.
    
    Complessità: O(log n)
    Molto più veloce della ricerca lineare!
    """
    sinistro = 0
    destro = len(lista) - 1
    
    while sinistro <= destro:
        medio = (sinistro + destro) // 2
        
        if lista[medio] == target:
            return medio  # Trovato!
        
        elif lista[medio] < target:
            sinistro = medio + 1  # Cerca nella metà destra
        
        else:
            destro = medio - 1  # Cerca nella metà sinistra
    
    return -1  # Non trovato

# Test
numeri_ordinati = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
print(ricerca_binaria(numeri_ordinati, 13))  # 6
print(ricerca_binaria(numeri_ordinati, 8))   # -1

# Versione ricorsiva
def ricerca_binaria_ricorsiva(lista, target, sinistro, destro):
    if sinistro > destro:
        return -1
    
    medio = (sinistro + destro) // 2
    
    if lista[medio] == target:
        return medio
    elif lista[medio] < target:
        return ricerca_binaria_ricorsiva(lista, target, medio + 1, destro)
    else:
        return ricerca_binaria_ricorsiva(lista, target, sinistro, medio - 1)
```

**✅ Pro:** Molto veloce su liste grandi
**❌ Contro:** Richiede lista ordinata

### 2. Algoritmi di Ordinamento

#### Bubble Sort (Ordinamento a Bolle)

**Concetto:** Confronta coppie adiacenti e le scambia se non sono in ordine.

```python
def bubble_sort(lista):
    """
    Ordina una lista confrontando elementi adiacenti.
    
    Complessità: O(n²)
    Semplice ma inefficiente su liste grandi.
    """
    n = len(lista)
    
    # Passa attraverso tutti gli elementi
    for i in range(n):
        scambiato = False
        
        # Ultimi i elementi sono già ordinati
        for j in range(0, n - i - 1):
            # Scambia se l'elemento corrente è maggiore del successivo
            if lista[j] > lista[j + 1]:
                lista[j], lista[j + 1] = lista[j + 1], lista[j]
                scambiato = True
        
        # Se non ci sono stati scambi, la lista è già ordinata
        if not scambiato:
            break
    
    return lista

# Test
numeri = [64, 34, 25, 12, 22, 11, 90]
print(f"Prima: {numeri}")
bubble_sort(numeri)
print(f"Dopo:  {numeri}")
# Prima: [64, 34, 25, 12, 22, 11, 90]
# Dopo:  [11, 12, 22, 25, 34, 64, 90]
```

**Visualizzazione step-by-step:**
```
Pass 1: [64, 34, 25, 12, 22, 11, 90]
        [34, 64, 25, 12, 22, 11, 90]  # Scambia 64 e 34
        [34, 25, 64, 12, 22, 11, 90]  # Scambia 64 e 25
        ... continua ...
        [34, 25, 12, 22, 11, 64, 90]  # 90 è al posto giusto

Pass 2: [25, 34, 12, 22, 11, 64, 90]
        ... continua ...
```

#### Selection Sort (Ordinamento per Selezione)

**Concetto:** Trova il minimo e lo mette in prima posizione, ripete per il resto.

```python
def selection_sort(lista):
    """
    Ordina trovando ripetutamente il minimo.
    
    Complessità: O(n²)
    """
    n = len(lista)
    
    for i in range(n):
        # Trova il minimo nella parte non ordinata
        indice_minimo = i
        
        for j in range(i + 1, n):
            if lista[j] < lista[indice_minimo]:
                indice_minimo = j
        
        # Scambia il minimo trovato con il primo elemento
        lista[i], lista[indice_minimo] = lista[indice_minimo], lista[i]
    
    return lista

# Test
numeri = [64, 25, 12, 22, 11]
print(selection_sort(numeri))
# [11, 12, 22, 25, 64]
```

#### Quick Sort (Ordinamento Veloce)

**Concetto:** Divide e conquista usando un pivot.

```python
def quick_sort(lista):
    """
    Ordina usando strategia divide-et-impera.
    
    Complessità: O(n log n) mediamente
    Uno degli algoritmi più veloci!
    """
    if len(lista) <= 1:
        return lista
    
    # Scegli pivot (elemento centrale)
    pivot = lista[len(lista) // 2]
    
    # Dividi in tre parti
    sinistra = [x for x in lista if x < pivot]
    centro = [x for x in lista if x == pivot]
    destra = [x for x in lista if x > pivot]
    
    # Ricorsivamente ordina e combina
    return quick_sort(sinistra) + centro + quick_sort(destra)

# Test
numeri = [10, 7, 8, 9, 1, 5]
print(quick_sort(numeri))
# [1, 5, 7, 8, 9, 10]
```

### 3. Algoritmi su Stringhe

#### Palindromo

```python
def è_palindromo(testo):
    """Controlla se una stringa è un palindromo"""
    # Rimuovi spazi e converti in minuscolo
    testo_pulito = ''.join(testo.lower().split())
    
    # Confronta con il reverse
    return testo_pulito == testo_pulito[::-1]

# Test
print(è_palindromo("anna"))  # True
print(è_palindromo("radar"))  # True
print(è_palindromo("Ai lati d'Italia"))  # True
print(è_palindromo("python"))  # False
```

#### Anagramma

```python
def sono_anagrammi(parola1, parola2):
    """Controlla se due parole sono anagrammi"""
    # Rimuovi spazi e converti in minuscolo
    p1 = ''.join(parola1.lower().split())
    p2 = ''.join(parola2.lower().split())
    
    # Ordina le lettere e confronta
    return sorted(p1) == sorted(p2)

# Test
print(sono_anagrammi("roma", "amor"))  # True
print(sono_anagrammi("listen", "silent"))  # True
print(sono_anagrammi("python", "java"))  # False
```

### 4. Algoritmi Matematici

#### Fattoriale

```python
def fattoriale_iterativo(n):
    """Calcola n! iterativamente"""
    risultato = 1
    for i in range(1, n + 1):
        risultato *= i
    return risultato

def fattoriale_ricorsivo(n):
    """Calcola n! ricorsivamente"""
    if n <= 1:
        return 1
    return n * fattoriale_ricorsivo(n - 1)

# Test
print(fattoriale_iterativo(5))  # 120
print(fattoriale_ricorsivo(5))  # 120
```

#### Fibonacci

```python
def fibonacci_iterativo(n):
    """Calcola l'n-esimo numero di Fibonacci"""
    if n <= 1:
        return n
    
    a, b = 0, 1
    for _ in range(2, n + 1):
        a, b = b, a + b
    
    return b

def fibonacci_ricorsivo(n):
    """Versione ricorsiva (inefficiente!)"""
    if n <= 1:
        return n
    return fibonacci_ricorsivo(n - 1) + fibonacci_ricorsivo(n - 2)

# Versione ottimizzata con memoization
def fibonacci_memo(n, memo={}):
    """Fibonacci con cache per efficienza"""
    if n in memo:
        return memo[n]
    
    if n <= 1:
        return n
    
    memo[n] = fibonacci_memo(n - 1, memo) + fibonacci_memo(n - 2, memo)
    return memo[n]

# Test
print([fibonacci_iterativo(i) for i in range(10)])
# [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
```

#### Numero Primo

```python
def è_primo(n):
    """Controlla se un numero è primo"""
    if n < 2:
        return False
    
    if n == 2:
        return True
    
    if n % 2 == 0:
        return False
    
    # Controlla solo fino alla radice quadrata
    for i in range(3, int(n ** 0.5) + 1, 2):
        if n % i == 0:
            return False
    
    return True

def trova_primi(limite):
    """Trova tutti i numeri primi fino a limite"""
    primi = []
    for numero in range(2, limite + 1):
        if è_primo(numero):
            primi.append(numero)
    return primi

# Test
print(trova_primi(30))
# [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
```

### 5. Algoritmi Pratici

#### Validatore Password

```python
def valida_password(password):
    """
    Valida una password secondo criteri di sicurezza:
    - Minimo 8 caratteri
    - Almeno una maiuscola
    - Almeno una minuscola
    - Almeno un numero
    - Almeno un simbolo speciale
    """
    if len(password) < 8:
        return False, "Password troppo corta (minimo 8 caratteri)"
    
    ha_maiuscola = any(c.isupper() for c in password)
    ha_minuscola = any(c.islower() for c in password)
    ha_numero = any(c.isdigit() for c in password)
    ha_simbolo = any(c in "!@#$%^&*()_+-=[]{}|;:,.<>?" for c in password)
    
    if not ha_maiuscola:
        return False, "Serve almeno una lettera maiuscola"
    if not ha_minuscola:
        return False, "Serve almeno una lettera minuscola"
    if not ha_numero:
        return False, "Serve almeno un numero"
    if not ha_simbolo:
        return False, "Serve almeno un simbolo speciale"
    
    return True, "Password valida!"

# Test
print(valida_password("ciao"))  # False, troppo corta
print(valida_password("Password1!"))  # True, valida!
```

### Confronto Algoritmi di Ordinamento

```python
import time
import random

def confronta_algoritmi(dimensione=1000):
    """Confronta performance di diversi algoritmi"""
    # Genera lista casuale
    lista_originale = [random.randint(1, 1000) for _ in range(dimensione)]
    
    risultati = {}
    
    # Test Bubble Sort
    lista = lista_originale.copy()
    start = time.time()
    bubble_sort(lista)
    risultati['Bubble Sort'] = time.time() - start
    
    # Test Selection Sort
    lista = lista_originale.copy()
    start = time.time()
    selection_sort(lista)
    risultati['Selection Sort'] = time.time() - start
    
    # Test Quick Sort
    lista = lista_originale.copy()
    start = time.time()
    quick_sort(lista)
    risultati['Quick Sort'] = time.time() - start
    
    # Test Python built-in sort
    lista = lista_originale.copy()
    start = time.time()
    lista.sort()
    risultati['Python sort()'] = time.time() - start
    
    # Stampa risultati
    print(f"\nRisultati per {dimensione} elementi:")
    for algoritmo, tempo in sorted(risultati.items(), key=lambda x: x[1]):
        print(f"{algoritmo:20s}: {tempo:.4f} secondi")

# Esegui confronto
confronta_algoritmi(1000)
```

### 💡 Tips per Progettare Algoritmi

1. **Comprendi il problema**
   - Quali sono input e output?
   - Ci sono casi speciali?
   - Quali vincoli esistono?

2. **Pensa prima di codificare**
   - Scrivi pseudocodice
   - Disegna diagrammi di flusso
   - Considera casi limite

3. **Inizia con soluzione semplice**
   - Fai funzionare prima
   - Ottimizza dopo

4. **Testa accuratamente**
   - Caso normale
   - Caso limite (vuoto, 1 elemento)
   - Caso estremo (molto grande)

5. **Analizza la complessità**
   - Tempo di esecuzione
   - Uso di memoria
