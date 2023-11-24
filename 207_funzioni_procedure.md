# Funzioni e procedure

Le funzioni e le procedure sono costrutti fondamentali nei linguaggi di programmazione che consentono di organizzare e strutturare il codice in modo modulare. Entrambi rappresentano blocchi di codice che eseguono un'operazione specifica, ma ci sono alcune differenze chiave tra di loro:

### Funzioni

1. **Ritorno di Valore:**
   - Una funzione può restituire un valore.
   - Esempio in Java:

     ```java
     public int somma(int a, int b) {
         return a + b;
     }
     ```

2. **Chiamata in Espressioni:**
   - Una funzione può essere chiamata all'interno di un'espressione.
   - Esempio in Python:

     ```python
     risultato = somma(3, 4)
     ```

3. **Nome:**
   - Una funzione ha un nome e può essere referenziata in modo esplicito.
   - Esempio in C++:

     ```cpp
     int moltiplica(int x, int y) {
         return x * y;
     }
     ```

### Procedure

1. **Nessun Ritorno di Valore (o Ritorno di Tipo Void):**
   - Una procedura può eseguire un'azione ma non restituisce un valore.
   - Esempio in C:

     ```c
     void stampaMessaggio() {
         printf("Ciao, mondo!\n");
     }
     ```

2. **Chiamata come Istruzione:**
   - Una procedura viene chiamata come un'istruzione.
   - Esempio in JavaScript:

     ```javascript
     function saluta() {
         console.log("Ciao, mondo!");
     }

     saluta();
     ```

3. **Nome:**
   - Una procedura ha un nome ma è spesso referenziata solo tramite la chiamata.
   - Esempio in Pascal:

     ```pascal
     procedure saluta;
     begin
         writeln('Ciao, mondo!');
     end;
     ```

In molti linguaggi di programmazione moderni, la distinzione tra funzioni e procedure potrebbe non essere così rigida, e spesso il termine "funzione" è usato in modo generico per riferirsi sia a funzioni che a procedure. La scelta tra l'utilizzo di funzioni o procedure dipende spesso dalla necessità di restituire o meno un valore.

Entrambe le funzioni e le procedure sono fondamentali per la creazione di codice modulare e riutilizzabile. Consentono di suddividere un programma complesso in parti più gestibili, migliorando la chiarezza del codice e facilitando la manutenzione.
