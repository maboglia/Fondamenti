# Strutture di controllo

Le strutture di controllo sono costrutti fondamentali nei linguaggi di programmazione che consentono di gestire il flusso di esecuzione del programma. Queste strutture consentono di prendere decisioni, iterare su insiemi di dati e definire il comportamento condizionale delle istruzioni. Le principali strutture di controllo sono:

1. **Istruzioni Condizionali:**

   - **`if`:**

     ```python
     if condizione:
         # blocco di codice eseguito se la condizione è vera
     ```

   - **`if-else`:**

     ```java
     if (condizione) {
         // blocco di codice eseguito se la condizione è vera
     } else {
         // blocco di codice eseguito se la condizione è falsa
     }
     ```

   - **`if-else if-else`:**

     ```c
     if (condizione1) {
         // blocco di codice eseguito se la condizione1 è vera
     } else if (condizione2) {
         // blocco di codice eseguito se la condizione2 è vera
     } else {
         // blocco di codice eseguito se nessuna delle condizioni è vera
     }
     ```

2. **Cicli (Loop):**

   - **`for`:**

     ```java
     for (int i = 0; i < 5; i++) {
         // blocco di codice eseguito in ogni iterazione
     }
     ```

   - **`while`:**

     ```python
     while condizione:
         # blocco di codice eseguito finché la condizione è vera
     ```

   - **`do-while`:**

     ```c
     do {
         // blocco di codice eseguito almeno una volta
     } while (condizione);
     ```

3. **Switch-Case:**

   - **`switch`:**

     ```javascript
     switch (espressione) {
         case valore1:
             // blocco di codice eseguito se espressione è uguale a valore1
             break;
         case valore2:
             // blocco di codice eseguito se espressione è uguale a valore2
             break;
         default:
             // blocco di codice eseguito se nessun caso corrisponde
     }
     ```

4. **Istruzioni di Salto:**

   - **`break`:**
     - Utilizzato per uscire da un ciclo o da uno switch-case.

   - **`continue`:**
     - Salta il resto del corpo di un ciclo e passa all'iterazione successiva.

   - **`return`:**
     - Restituisce un valore da una funzione e termina l'esecuzione della funzione.

   - **`throw`:**
     - Lancia un'eccezione.

Le strutture di controllo sono essenziali per la programmazione strutturata e modulare. Consentono di scrivere codice flessibile e dinamico che risponde alle varie condizioni e requisiti del programma. La corretta gestione di queste strutture è cruciale per garantire la correttezza, la leggibilità e la manutenibilità del codice.
