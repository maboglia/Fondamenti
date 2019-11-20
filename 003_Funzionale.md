# La programmazione funzionale

La programmazione funzionale è un tipo di programmazione **dichiarativa**. 
Un approccio funzionale implica la composizione del problema come **set di funzioni da eseguire**. 
È necessario definire con attenzione l'**input** e l'**output** di ogni funzione.

* le funzioni sono funzioni **matematiche**: per un dato input restituiscono sempre lo stesso risultato;
* le funzioni **non modificano i dati ricevuti in input**, ma restituiscono sempre nuovi valori;
* le funzioni possono essere **passate come parametro** e **restituite** da altre funzioni, e possono essere **combinate** tra di loro.

## funzioni matematiche

Una funzione in matematica può essere scritta in questo modo:
* `f(X) = Y`

L'istruzione può essere letta come "Una funzione F, che accetta X come argomento e restituisce Y come output." 
X e Y possono essere qualsiasi numero.

Ne discende che:

* Una funzione matematica deve sempre avere un argomento.
* Una funzione matematica deve sempre restituire un valore.
* Una funzione matematica dovrebbe agire solo sui suoi argomenti di ricezione (cioè X) e non sui parametri esterno.
* Per una data X, ci sarà solo una Y.

## funzioni pure e non pure

Le funzioni pure sono le funzioni che restituiscono lo stesso output per il medesimo input.

Alcune funzioni sono definite non pure: sono funzioni che producono **effetti collaterali**.

Ad esempio una funzione senza parametri che abbia come valore di ritorno la data corrente

Ne discende che:

* Una funzione senza parametri non è pura o non ha senso
* Una funzione senza un output non è pura

Invece le **funzioni pure** garantiscono la trasparenza referenziale: la capacità di **sostituire una espressione con il suo risultato**, mantenendo la correttezza dell’applicazione.

Sfruttando la trasparenza referenziale c’è la possibilità di utilizzare una tecnica detta *memoization*, che consiste nel mettere in cache risultati di funzioni che hanno un certo costo computazionale.

var funzioneMemoizzata = memoize(funzioneConCalcoliPesanti);

[Paradigmi e Linguaggi](003_ParadigmiLinguaggi.md#paradigmi)
