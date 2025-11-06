# CQS Command Query Separation Principle

Il **Command Query Separation Principle (CQS)** — in italiano **Principio di Separazione tra Comandi e Query** — è un principio fondamentale della progettazione orientata agli oggetti, proposto da **Bertrand Meyer** (autore del linguaggio Eiffel).

### 🔹 Definizione

Il principio afferma che:

> **Ogni metodo dovrebbe essere o un *comando* o una *query*, ma non entrambi.**

In altre parole:

* **Un comando (Command)** è un metodo che **modifica lo stato** di un oggetto (cioè produce un effetto collaterale), ma **non restituisce un valore** significativo.
  → Esempio: `void aggiungiStudente(Studente s)`

* **Una query (Query)** è un metodo che **restituisce informazioni** (quindi un valore) ma **non modifica lo stato** dell’oggetto.
  → Esempio: `List<Studente> getStudenti()`

Non deve esistere un metodo che **modifica** qualcosa **e contemporaneamente restituisce** un valore utile sullo stato modificato.

---

### 🔹 Esempio pratico

❌ **Violazione del principio CQS**

```java
public List<Studente> aggiungiStudente(Studente s) {
    studenti.add(s);
    return studenti; // restituisce un valore e modifica lo stato
}
```

✅ **Rispetto del principio CQS**

```java
public void aggiungiStudente(Studente s) {
    studenti.add(s); // solo comando
}

public List<Studente> getStudenti() {
    return studenti; // solo query
}
```

---

### 🔹 Perché è importante

1. **Maggiore chiarezza del codice**

   * È sempre chiaro se un metodo *legge* o *scrive* dati.
   * Migliora la leggibilità e riduce la sorpresa del programmatore (“effetto collaterale inatteso”).

2. **Facilita il testing**

   * I test delle query possono essere puramente funzionali (non modificano nulla).
   * I test dei comandi verificano solo gli effetti dello stato, non il valore di ritorno.

3. **Supporta l’immutabilità e la programmazione funzionale**

   * CQS incoraggia una distinzione netta tra *funzioni pure* e *azioni con effetto collaterale*.

4. **Base per principi avanzati**

   * È il fondamento di architetture moderne come **CQRS** (*Command Query Responsibility Segregation*), dove la separazione tra lettura e scrittura diventa anche architetturale (ad esempio database separati per read e write).

---

### 🔹 In sintesi

| Tipo        | Modifica lo stato? | Restituisce un valore? | Esempio                    |
| ----------- | ------------------ | ---------------------- | -------------------------- |
| **Command** | ✅ Sì               | ❌ No                   | `void saveUser(User u)`    |
| **Query**   | ❌ No               | ✅ Sì                   | `User getUserById(int id)` |

