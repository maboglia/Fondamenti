# Strutture dati

Le strutture dati sono organizzazioni di dati e operazioni che possono essere eseguite su di essi. Sono fondamentali in programmazione perché consentono di rappresentare e manipolare dati in modi efficienti e organizzati. Ci sono diverse strutture dati comuni, ognuna progettata per scopi specifici. Ecco alcune delle strutture dati più comuni:

### 1. **Array:**

- Un insieme ordinato di elementi, dove ogni elemento è identificato da un indice o una chiave.
- Esempio in Java:

     ```java
     int[] array = {1, 2, 3, 4, 5};
     ```

### 2. **Lista (Linked List):**

- Una sequenza di elementi collegati da puntatori, dove l'ordine è importante.
- Esempio in C++:

     ```cpp
     struct Nodo {
         int dato;
         Nodo* successivo;
     };

     Nodo* lista = new Nodo();
     ```

### 3. **Stack:**

- Una struttura dati basata sul principio LIFO (Last In, First Out).
- Esempio in Python:

     ```python
     stack = []
     stack.append(1)
     stack.append(2)
     elemento = stack.pop()
     ```

### 4. **Queue (Coda):**

- Una struttura dati basata sul principio FIFO (First In, First Out).
- Esempio in Java:

     ```java
     Queue<Integer> coda = new LinkedList<>();
     coda.offer(1);
     coda.offer(2);
     int elemento = coda.poll();
     ```

### 5. **Albero (Tree):**

- Una struttura gerarchica di nodi, dove ogni nodo ha uno o più nodi figli.
- Esempio in C#:

     ```csharp
     class Nodo {
         public int Dato;
         public List<Nodo> Figli;
     }

     Nodo radice = new Nodo();
     ```

### 6. **Grafo (Graph):**

- Un insieme di nodi collegati da archi, che possono essere diretti o non diretti.
- Esempio in Python:

     ```python
     grafo = {1: [2, 3], 2: [1, 3], 3: [1, 2]}
     ```

### 7. **Hash Table (Tabella Hash):**

- Una struttura dati che mappa chiavi a valori, consentendo l'accesso rapido ai dati.
- Esempio in JavaScript:

     ```javascript
     let tabellaHash = {};
     tabellaHash["chiave1"] = "valore1";
     ```

### 8. **Heap:**

- Una struttura dati che mantiene un insieme di elementi, con accesso efficiente all'elemento di priorità massima (heap massimo) o minima (heap minimo).
- Esempio in C++ (heap minimo):

     ```cpp
     #include <queue>
     std::priority_queue<int, std::vector<int>, std::greater<int>> heapMin;
     heapMin.push(3);
     heapMin.push(1);
     int minimo = heapMin.top();
     ```

### 9. **Trie:**

- Una struttura dati specializzata per memorizzare una collezione di stringhe, consentendo ricerche efficienti e inserimenti.
- Esempio in Python:

     ```python
     class TrieNode:
         def __init__(self):
             self.children = {}
             self.is_end_of_word = False

     root = TrieNode()
     ```

### 10. **File (File):**

- Una struttura dati organizzata su disco per memorizzare dati in modo permanente.
- Esempio in Java (lettura da un file):

     ```java
     try (BufferedReader reader = new BufferedReader(new FileReader("file.txt"))) {
         String linea = reader.readLine();
     } catch (IOException e) {
         e.printStackTrace();
     ```

Ogni struttura dati ha vantaggi e svantaggi, e la scelta dipende dal contesto specifico e dai requisiti dell'applicazione. La comprensione delle strutture dati è fondamentale per progettare algoritmi efficienti e creare programmi ottimizzati dal punto di vista delle prestazioni.
