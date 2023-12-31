# Algoritmi: Concetti Base

Un algoritmo è come una ricetta dettagliata che ci dice passo dopo passo come risolvere un problema. Immagina di cucinare: ogni passaggio è un'istruzione, e l'intero processo è l'algoritmo. Ecco alcune cose importanti sugli algoritmi:

### Caratteristiche degli Algoritmi

1. **Eseguibilità:** Ogni passaggio deve essere qualcosa che possiamo fare.
2. **Non Ambiguità:** Ogni passaggio deve essere chiaro e interpretabile.
3. **Finitezza:** L'algoritmo deve finire in un numero limitato di passaggi.

Se non seguiamo queste regole, la sequenza di istruzioni non può essere chiamata algoritmo.

### Algoritmi vs. Programmi

Quando usiamo un computer per eseguire un algoritmo, dobbiamo dirgli cosa fare e come farlo. Questo è un programma. Quindi, la soluzione a un problema coinvolge:

1. **Individuare un Metodo:** Trovare un modo per risolvere il problema.
2. **Scomporre in Azioni:** Scrivere le istruzioni passo dopo passo, creando così un algoritmo.
3. **Rappresentare tramite un Programma:** Scrivere il tutto in un linguaggio che il computer capisce.

### Algoritmi Equivalenti

Immagina di avere due modi diversi per raggiungere lo stesso risultato, come due percorsi per arrivare a casa tua. Gli algoritmi equivalenti sono simili: entrambi risolvono lo stesso problema, ma possono essere fatti in modi diversi.

### Come Rappresentiamo gli Algoritmi

Un modo comune è usare un "diagramma di flusso". È come una mappa che mostra passo dopo passo cosa fare. Ogni azione è un blocco e li collego con linee che mostrano la sequenza di esecuzione. Questo rende facile capire come l'algoritmo fluisce da un passo all'altro.

---

## Definizione di algoritmo

* Un algoritmo è una descrizione dettagliata, per passi elementari successivi, di una strategia utile per risolvere un determinato problema.
* Ogni algoritmo è un insieme finito di passi e deve terminare dopo un numero finito di iterazioni.
* Nella progettazione di un algoritmo il programmatore inizia a porsi problemi relativi alla rappresentazione delle informazioni che deve essere efficiente (senza sprechi inutili) ed efficace (non si deve perdere traccia di dati importanti).

---

## Proprietà degli algoritmi

* Eseguibilità: ogni “istruzione” deve essere eseguibile da parte dell’esecutore dell’algoritmo;
* Non Ambiguità: ogni istruzione deve essere univocamente interpretabile dall'esecutore
* Finitezza: il numero totale di azioni da eseguire, per ogni insieme di dati di ingresso, è finito.

se almeno una delle 3 proprietà non è soddisfatta, la sequenza non è un algoritmo.

* Generalità: corretto funzionamento dell'algoritmo anche variando alcuni aspetti del problema (ad esempio, la dimensione dell'insieme dei dati, il tipo dei dati, ecc.)
* Efficienza: tanto minore è il numero di azioni eseguite per la risoluzione del problema, tanto maggiore è l'efficienza.
* Determinismo: possibilità di prevedere esattamente prima dell'esecuzione la sequenza di azioni che verranno eseguite, per ogni insieme di dati.

---

## Algoritmi e Programmi

Se l'**esecutore** è un elaboratore elettronico:

* È necessario conoscere l'insieme di istruzioni che è in grado di interpretare
* È necessario conoscere quali tipi di informazioni (dati) è in grado di rappresentare
* È necessario conoscere le caratteristiche del linguaggio di programmazione scelto

Dato un problema P, la sua soluzione può essere ottenuta mediante l’uso del calcolatore:

1. individuazione di un metodo risolutivo
2. scomposizione del procedimento in insieme ordinato di azioni: **algoritmo**
3. rappresentazione dei dati e dell'algoritmo attraverso un linguaggio comprensibile per l’elaboratore: **programma**

Il **PROGRAMMA** potrà essere eseguito dall'elaboratore per risolvere automaticamente ogni istanza del problema P.

---

## Algoritmi equivalenti

Due algoritmi si dicono equivalenti quando:

* hanno lo stesso dominio dei dati: **dominio di ingresso**
* hanno lo stesso dominio dei risultati: **dominio di uscita**
* in corrispondenza degli stessi valori nel dominio di ingresso producono **gli stessi valori** nel dominio di uscita

Due algoritmi equivalenti:

* forniscono lo stesso risultato
* possono essere profondamente diversi
* possono avere differente efficienza

---

## Rappresentare algoritmi

* un diagramma di flusso descrive le azioni da eseguire ed il loro ordine di esecuzione.
* ad ogni tipo di azione corrisponde ad un simbolo grafico (blocco) diverso.
* ogni blocco ha un ramo in ingresso ed uno o più rami in uscita; collegando tra loro i vari blocchi attraverso i rami, si ottiene un diagramma di flusso
* un diagramma di flusso appare, quindi, come un insieme di blocchi, collegati fra loro da linee orientate che specificano la sequenza in cui i blocchi * devono essere eseguiti: flusso del controllo di esecuzione.

---

## Oggetti grafici per rappresentare algoritmi

![diagramma_flusso](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/diagramma_flusso.png)

---

## Oggetti grafici per rappresentare algoritmi

![diagrammi flusso](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/diagrammi_flusso1.jpg)

---

## esempio: il numero dato n è pari o dispari

![algoritmo](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/algoritmo.png)

---

## esempio: calcolo radice quadrata

![alg_ radice quadrata](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/Algoritmo_calcola_radice_quadrata.png)

---

## esempio: teorema di pitagora

![alg_ pitagora](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/algoritmi_teorema_di_pitagora.png)
