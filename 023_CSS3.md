# WEB Standard: CSS
___alistapart.com___

---

## Regole dei fogli di stile
come l'HTML anche un foglio di stile è un  documento di testo composto da

	* selettori: individuano gli elementi coinvolti 
	* dichiarazioni: costituite da una o più proprietà con il relativo valore che specifica l'azione da intraprendere


esempio di regola di stile

```css
h1 {color: #ffcc00;}
```

---

## Le pseudo-classi
non sono riferite ad un elemento come le classi e gli id ma applicano delle proprietà ai diversi stati di uno stesso elemento.
Per esempio un comunissimo link? All'inizio ha un colore, poi passandoci sopra con il cursore questo colore cambia
ed infine il link già visitato non ha più il colore iniziale. Ecco le pseudo-classi ti permettono di agire su ognuno questi diversi stati.
Di seguito le pseudo-classi supportate da tutti i browser:
* :link
* :visited
* :hover
* :focus
* :active


---

## esempio pseudo-classe

```html
<h1>Titolo in verde</h1>
<p>Lorem ipsum dolor sit amet, consectetur adipisici,
<a href="url.html class="nomeclasse">sed eiusmod</a>
tempor incidunt ut labore et dolore magna aliqua.</p>
<style type="text/css">
a.nomeclasse:link {
color: #006600;
}
a.nomeclasse:hover {
color: #000000;
}
</style>
```


---

## Pseudo-elementi
come per le pseudo-classi non sono riferiti ad un elemento
in particolare ma ne selezionano una sotto parte.
Ad esempio:
* :first-letter
* :first-line
* :before
* :after
puoi applicare pseudo classi e pseudo elementi
a tutti gli elementi di un documento html.


---

## Altre proprietà

* text-align (left, right, center, justify)
* text-transform (capitalize, uppercase, lowercase, none)
* font-variant (small-caps, none)
* text-decoration (underline-overline, line-trought, blink, none)
* line-height
* background
* letter-spacing
* word-spacing
* text-indent
* white-space (pre, nowrap, none)
* text-shadow (colore, valore x, valore y, valore sfocatura)




---

## Le proprietà di background

* background-image (url, none)
* background-color: (valore colore, transparent)
* background-repeat (repeat-x, repeat-y, no-repeat)
* background-position (left, right, top, bottom, center)
* background-attachment (fixed, attachment)

esempio inserimento background
```css
div {
background-image: url(img/bg.png);
background-repeat: no-repeat;
background-color: #CCCCCC;
}

div {
background: url(img/bg.png) no-repeat #CCCCCC;
}
```




---

## I divisori
sono gli elementi che utilizzeremo per strutturare la nostra
pagina web e sono caratterizzati dal tag <div> e ci aiuteranno a
sezionare la nostra pagina e a raggruppare più elementi.


---

## Le proprietà

* width (larghezza relativa allo spazio per i contenuti)
* height (altezza relativa allo spazio per i contenuti)
* padding (spazio fra contenuti ed il bordi)
* border (solid, dotted, dashed, double, groove, ridge, inset, outset, none)
* margin (spazio fra il bordo e gli altri oggetti della pagina)
* position (relative, absolute, fixed)
* float (left, right)
* z-index
* vertical-align (baseline, middle, sub, super, text-top, text-bottom, top, bottom)
* overflow (visible, hidden, scroll, auto)



---

## Il visual formatting model
insieme al box model è uno degli elementi fondamentali per la realizzazione di impaginazioni complesse.
Il visual formatting model tratta essenzialmente il comportamento di un box in relazione agli altri presenti nella stessa pagina e ne
definisce il posizionamento.


---

## Position
è la proprietà fondamentale per la gestione della posizione degli elementi sulla pagina. Si applica a tutti gli elementi e non è
ereditaria.
I valori di position sono:

* static (valore di default)
* absolute
* fixed
* relative



---

## Il flusso e la posizione relativa
ogni elemento ha una posizione naturale nel flusso della pagina,
lo spostamento degli elementi in relazione alla posizione originale
prende il nome di "posizionemento relativo" e non influisce sugli
elementi circostanti. La regola per agire su questa proprietà è:
position: relative;
La posizione viene determinata attraverso le seguenti proprietà:

* top
* right
* left
* bottom
* 
```css
div.relativo {
position:relative;
left:10px;
top: 10px;
}
```


---

## Il posizionamento assoluto
con la dichiarazione position:absolute è possibile posizionare il box in un
punto esatto della pagina indipendentemente dal flusso e non ha alcuna
influenza sulla posizione degli altri blocchi.

La posizione viene determinata attraverso le proprietà: top, right, bottom, left
a partire da un determinato punto di riferimento iniziale.

L'elemento assoluto è posizionato in rapporto al suo div "contenitore" posto
che anche quest'ultimo abbia la sua proprietà position impostata con un
valore diverso da "static".

Diversamente l'elemento con proprietà position:absolute si posizionerà in
base all'elemento radice HTML (normalemente, l'area visiva della finestra del
browser) sempre in alto a sinistra.

Un elemento posizionato in modo assoluto scrorre insieme al resto del
documento.

```css
div.assoluto {
position: absolute;
right: 0;
bottom: 0;
width:500px;
}
```


---

## Posizionamento fisso

con la dichiarazione position:fixed il box dell'elemento viene, come
per absolute, sottratto al normale flusso del documento. La differenza
sta nel fatto che per fixed il box contenitore è sempre il cosiddetto
viewport (l'area interna del borwser).

La caratteristica sostanziale è che un box in posizione fissa non
scorre con il resto del documento rimanendo fisso nella posizione che
abbiamo definito.

```css
div.fixed {
position: absolute;
left: 0;
top: 500px;
width: 150px;
height: 200px;
}
```



---

## Controllare Il flusso
La proprietà clear impedisce ad un elemento di fluire accanto ad un
altro. Si applica solo agli elementi blocco e non è ereditata.
la necessità di questa regola nasce dal fatto che il float sposta un
elemento dal flusso normale del docuemento ed è possibile che
esso venga a trovarsi in una posizione non desiderate, magari al
fianco di altri elementi che vogliamo invece tenere separati.
Clear risolve questo problema.

* none - Gli elementi con float possono stare a destra e sinistra
* right - impedisce il posizionamento degli elementi a destra
* left - impedisce il posizionamento degli elementi a sinistra
* both - impedisce il posizionamento degli elementi a destra e sinistra



---

## Z-index
quando si usa il posizionamento assoluto o relativo è possibile che
gli elementi si sovrappongano. Per decidere quale elemento deve
stare più in alto si utilizza la proprietà z-index.
funziona solo per gli oggetti in posizione relativa o assoluta
il valore più alto indica che l'oggetto sta in posizione prioritaria
i valori possono essere positivi e negativi
la proprietà non è ereditaria


```css
div.assoluto {
position: absolute;
right: 0;
bottom: 0;
width:500px;
z-index: 2;
}

div.assoluto_sotto {
position: absolute;
right: 200px;
bottom: 100;
width:500px;
z-index: 1;
}
```


---

## Overflow
quando il contenuto del nostro riquadro è più grande del riquadro
stesso (che sia un testo o un'immagine) può essere controllato grazie
alla prorietà overflow.

* visible (default)
* hidden
* scroll
* auto

```css
div.box_overflow {
position: absolute;
right: 0;
bottom: 0;
width:500px;
overflow: auto;
}
```


---

## Display
conosciamo la differenza tra gli elementi block e inline.
la proprietà display è molto utile in quanto permette di variare la
visualizzazione dell'elemento (nasconderlo o trasformarlo in un
elenco) o di cambiare la sua natura (block level, inline).

* none
* block
* inline
* list-item



---

## Visibility
da non confondere con il display:none. La proprietà visibility
permette di nascondere un elemento della pagina il quale però
non viene eliminato dal flusso.
In breve se display:none nasconde un elemento dalla pagina
rendendolo completamente invisibile, impostando un elemento
visibility: hidden al posto dell'elemento verrà visualizzato uno
spazio vuoto.

* visible (default)
* hidden



---

## Il float
è la proprietà che utilizzerai maggiormente anche se all'inizio la sua
gestione potrà sembrarti problematica.

---

### La w3c definisce il float come segue:
"...un box che viene spostato a sinistra o a destra rispetto la
riga corrente. La caratteristica più interessante di un float è che
il contenuto può scorrere lungo il suo lato (o lo si può impedire
attraverso la proprietà "clear").
Il contenuto si posiziona lungo il lato destro di un box flottato a
sinistra e sul lato sinistro di un flottato riquadro a destra."
La prorietà float non è ereditaria ed ha tre valori:

* left
* right
* none



---

## Collassare i margini
l'espressione collassare i margini [collapsing margins] significa che
margini adiacenti (non li separa nessuna area di bordo o padding) di due
o più riquadrati (che possono essere vicini l'uno all'altro o annidati) si
combinano per formare un singolo margine.
Nei CSS2, i margini orizzontali non collassano mai.
I margini verticali possono collassare ad esempio ciò accade con i
margini verticali di più paragrafi in successione. Un approfondimento:


---

## Caratteristiche
I blocchi flottanti consecutivi si dispongono uno di fianco
all'altro. Ad esempio se più box hanno la proprietà float:left
questi si disporanno uno accanto all'altro "spingendosi"
verso sinistra.

Se lo spazio non è sufficiente a contenere i diversi blocchi,
quelli in eccesso verranno disposti al di sotto degli altri.
Se ad uno dei box assegno la proprietà clear posso impedire
che il box successivo si affianchi. 

Il padding e il border si sommano alla
dimensione del nostro box!
Se ad esempio un box ha una larghezza di
200px e un padding totale (top, right, left,
bottom) di 5px la sua larghezza reale sarà di
210px. Se non calcoli bene la larghezza dei box
farai molta fatica a strutturare il tuo layout.


---

## Altre caratteristiche
Se ad un elemento viene assegnata la proprietà float, questo
verrà tolto dal normale flusso e sarà posizionato nel punto
più a sinistra (o a destra) possibile rispetto al suo contenitore
(che potrebbe essere anche il body).

Se ad un box non viene assegnata nessuna dimensione questa
verrà determinata dal suo contenuto. Se invece ne assegni solo
una, ad esempio la larghezza, l'altra si adatterà di conseguenza.

Assegnando ad in box i margini laterali "auto" (margin: auto)
questo si posizionerà al centro in orizzontale della pagina.

http://alistapart.com/article/css-floats-101


---

## comporre un layout

In breve
la prima cosa cosa che dovrai fare è sicuramente creare il tuo
wrapper, ovvero il main box che conterrà tutti gli altri.

Questo sarà il punto di riferimento dentro il quale verranno
posizionati tutti i tuoi div (escluso quelli in posizione assoluta
e in tutti quei casi che abbiamo spiegato nella lezione
precedente).

Il mio consiglio personale è quello di flottare sempre i tuoi box
dallo stesso lato anche se opposti.


---

## formattare i moduli

---

### I moduli
Le parti fondamentali di un modulo sono due:
l'insieme di campi, etichette e pulsanti che l'utente
compila e lo script che permette il funzionamento del
modulo ovvero l'invio delle informazioni.
La formattazione dei moduli è molto semplice e grazie
all'utilizzo dei css è possibile personalizzare ogni
elemento.


---

## Etichette `<label>`

* Casella di testo `<input type="text">`
* Elenco a discesa `<select><option>`
* Casella di controllo `<input type="checkbox">`
* Pulsante invio `<input type="submit">`
* Area di testo `<textarea>`


---

## Per iniziare
un modulo deve essere racchiuso all'interno dei tag `<form>`, elemento
block level che necessita di alcuni attributi per poter funzionare:
action per indirizzare il modulo al server, all' URL o all'indirizzo di
posta elettronica.
method per dichiarare con quale dei due possibili metodi, post o get,
si devono trasmettere i dati.
id (facoltativo) Il nome che preferite assegnare al modulo, diventa
indispensabile facendo uso di JavaScript o altro linguaggio di
programmazione che diversamente non saprebbe a quale modulo fare
riferimento nella pagina web.


---

## Organizzazione dei contenuti
Qualora volessimo ragruppare in macro aree le
informazioni di un modulo è possibile utilizzare i tag
`<fieldset>` e` <legend>`.


```html
<form>
<fieldset>
<legend>Personali:</legend>
Name: <input type="text" size="30" /><br />
Cognome: <input type="text" size="30" /><br />
Data di nascita: <input type="text"/>
</fieldset>
<fieldset>
<legend>Altro:</legend>
Email: <input type="text" size="30" /><br />
</fieldset>
</form>
```


---

## Il tag `<input>`
Il tag più utilizzato per creare i campi di un form è il tag
`<input>` che non richiede chiusura.
Ad ogni `<input>` deve essere associato ad un attributo che
ne determini la tipologia, il nome (ad esempio per interagire
con JavaScript) e il valore (il testo visualizzato).


```html
<form method="post" action="showform.php">
<fieldset>
<legend>Personali:</legend>
Name: <input type="text" name="nome"/><br />
Cognome: <input type="text" name="cognome" /><br />
Data di nascita: <input type="text" name="data"/>
</fieldset>
</form>

<form method="post" action="showform.php">
<fieldset>
<legend>Personali:</legend>
Name: <input type="text" name="nome"/><br />
Password: <input type="password" name="pass" maxlength="10" />
</fieldset>
</form>
```


---

## Pulsanti d'opzione e pulsanti di controllo
sono degli elementi molto utili all'interno di un form e permettono
all'utente di effettuare delle scelte.
Il pulsante di opzione (type="radio") a differenza del pulsante di
controllo (type="checkbox") permette di fare una sola scelta.
Ad entrambi gli elementi possono essere associati i seguenti attributi.
name: identifica i dati inviati allo script
value: il valore che verrà inviato al server
checked: per far si che il pulsante sia attivo per default


```html
<form method="post" action="showform.php">
<fieldset>
<legend>Scegli la taglia:</legend>
Small: <input type="radio" name="scegli" value="S"/><br />
Medium: <input type="radio" name="scegli" value="S"/><br />
Large: <input type="radio" name="scegli" value="S"/>
</fieldset>
</form>
```

```html
<form method="post" action="showform.php">
<fieldset>
<legend>Vuoi iscriverti alla newsletter?</legend>
<input type="checkbox" name="nl" value="yes" checked="checked"/>
</fieldset>
</form>
```


---

## Etichette
Accanto ad ogni elemento di un form possiamo inserire un
semplice testo indentificativo. Ad esempio accanto ad un `<input>`
per l'inserimento del nome potremmo scrivere semplicemente
"Nome". XHTML ha un tag apposito ovvero `<label>`
Un'attributo di label è "for" che consente di associare l'etichetta
all'elemento "id" dell'elemento corrispondente (che avranno lo
stesso valore).


```html
<form method="post" action="showform.php">
<label for="nome">Nome</label>
<input type="text" value="inserisci" id="nome"/>
<label for="cognome">Cognome</label>
<input type="text" value="inserisci" id="cognome"/>
</form>
```


---

## Elenchi a discesa
sono la migliore soluzione per offrire agli utenti una scelta tra più opzioni
predefinite. Il tag per questo tipo di elemento è `<select>` dentro il quale
inseriremo i tag `<option>` per definire ogni singola scelta.
Il tag `<select>` può presentare i seguenti attributi:
Il tag `<option>` può presentare i seguenti attributi:
name: identifica i dati inviati allo script
multiple: consente la selezione multipla attraverso il tasto CTRL o CMD
selected: per selezionare una voce di default
value: consente la selezione multipla attraverso il tasto CTRL o CMD


```html
<form>
<fieldset>
<legend>Siti web</legend>
<select name="siti" >
<option value="http://www.sito.it" selected="selected">Vai al sito</option>
<option value="http://www.sito-due.it">Vai al sito 2</option>
<option value="http://www.sito-tre.it">Vai al sito 3</option>
</select>
</fieldset>
</form>
```
---

```html
<form>
<fieldset>
<legend>Siti web</legend>
<select name="siti" >
<optgroup label="Web Design">
<option value="http://www.sito.it" selected="selected">Vai al sito</option>
<option value="http://www.sito-due.it">Vai al sito 2</option>
</optgroup>
<optgroup label="Risorse">
<option value="http://www.sito-a.it">Vai al sito</option>
<option value="http://www.sito-b.it">Vai al sito 2</option>
</optgroup>
</select>
</fieldset>
</form>
```


---


## Area di testo
il tag `<textarea>` permette di creare degli spazi all'interno di un
modulo in cui l'utente può scrivere del testo. A differenza delle normali
aree di testo possono essere più grandi e quindi contenere più righe.

A ogni textarea possono essere associati i seguenti attributi:

* name: identifica i dati inviati allo script
* rows: definire il numero di righe
* cols: definire la larghezza
* rows e cols non sono obbligatori,

è preferibile formattare la textarea tramite CSS per definire altezza e larghezza

---

## Altri elementi di un form

* `<input type="file">` permette di creare una casella per il carimento di file.
* `<input type="submit">` bottone per l'invio del modulo, fondamentale.
* `<input type="reset">` bottone per ripristinare il modulo.
* `<input type="hidden">` per nascondere un campo input.
* `<input type="image">` creare un'immagine attiva.
* `<button type="submit">` bottone per l'invio del modulo con immagine.

---


## Altri attributi

* `tabindex=n` per ordinare la navigazione del form tramite il tasto tab.
* `accesskey=x` per impostare le scorciatoie di tastiera.
* `disable="disabled"` disabilita un elemento.
* `readonly="readonly"` disabilita la scrittura.

Puoi personalizzare ogni caratteristica di questi elementi attraverso i CSS. 

Altezza, larghezza, bordo, sfondo, tipo di carattere, margini etc. 

Questo permetterà di rendere i tuoi form ancora più usabili e sicuramente più gradevoli. 

Puoi formattare direttamente il selettore o applicare una classe come faresti con qualunque altro tag.

---
