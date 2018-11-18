# La programmazione funzionale

* le funzioni sono funzioni matematiche: per un dato input restituiscono sempre lo stesso risultato;
* le funzioni non modificano i dati ricevuti in input, ma restituiscono sempre nuovi valori;
* le funzioni possono essere passate come parametro e restituite da altre funzioni, e possono essere combinate tra di loro.

	Alcune funzioni sono definite non pure: sono funzioni che producono effetti collaterali:

	una interazione con il mondo esterno diversa dal ricevimento dei valori di input e dalla restituzione del risultato. 

	Ad esempio una funzione senza parametri che abbia come valore di ritorno la data corrente

Ne discende che:

* Una funzione senza parametri non è pura o non ha senso
* Una funzione senza un output non è pura

Invece le funzioni pure garantiscono la trasparenza referenziale: la capacità di sostituire una espressione con il suo risultato, mantenendo la correttezza dell’applicazione.

Sfruttando la trasparenza referenziale c’è la possibilità di utilizzare una tecnica detta *memoization*, che consiste nel mettere in cache risultati di funzioni che hanno un certo costo computazionale.

var funzioneMemoizzata = memoize(funzioneConCalcoliPesanti);

[Paradigmi e Linguaggi](003_ParadigmiLinguaggi.md#Paradigmi)
