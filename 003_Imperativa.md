# La programmazione imperativa

* In informatica, la programmazione imperativa è un paradigma di programmazione secondo cui un programma viene inteso come un insieme di istruzioni (dette anche direttive o comandi), ciascuna delle quali può essere pensata come un "ordine" che viene impartito alla macchina virtuale del linguaggio di programmazione utilizzato. 
  
* Da un punto di vista sintattico, i costrutti di un linguaggio imperativo sono spesso identificati da verbi all'imperativo, per esempio:
	* 1: read i
	* 2: print i
	* 3: goto 1


Questo modello di progettzione del software si  basa sull’idea della sequenza ordinata di passi e sull’istruzione di assegnamento che serve per cambiare il valore delle variabili. 

Il paradigma imperativo è molto vicino al modo di funzionamento dell’elaboratore: è molto efficiente per un uso generale e non è riservato a specifici problemi. (Es.Fortran, Cobol, Pascal, Basic, C)

È uno dei paradigmi di programmazione più antichi. Presenta una stretta relazione con l'architettura della macchina. Si basa sull'architettura Von Neumann. Funziona modificando lo stato del programma tramite istruzioni di assegnazione. Esegue attività passo-passo cambiando lo stato. L'attenzione principale è su come raggiungere l'obiettivo. Il paradigma consiste in diverse affermazioni e dopo l'esecuzione di tutto il risultato viene memorizzato.

```C

// media di 5 numeri interi inlinguaggio C 
  
int voti[5] = { 28, 29, 30, 25, 123 } int somma = 0; 
float media = 0.0; 
for (int i = 0; i < 5; i++) { 
    somma = somma + voti[i]; 
} 
media = somma / 5; 

```

La programmazione imperativa è suddivisa in tre grandi categorie: 

* procedurale, 
* OOP 
* elaborazione parallela.

[Paradigmi e Linguaggi](003_ParadigmiLinguaggi.md#paradigmi)
