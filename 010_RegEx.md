# Espressioni regolari

*da google analytics*

Metacaratteri delle espressioni regolari

* Caratteri jolly

    * . 	Corrisponde a: qualsiasi carattere singolo (lettera, numero o simbolo) 	
        * \1. corrisponde a: 10, 1A
        * 1.1 corrisponde a: 111, 1A1

    * ? 	Corrisponde a: 0 o 1 volte/a il carattere che lo precede 	
    * 10? corrisponde a: 1, 10

        * \+ 	Corrisponde a: 1 o più volte il carattere che lo precede 	
        * 10+ corrisponde a: 10, 100

        * \* Corrisponde a: 0 o più volte il carattere che lo precede 	
        * 1* corrisponde a: 1, 10

* | 	Crea una corrispondenza O
    * Non utilizzare alla fine di un'espressione 	
    * 1|10 corrisponde a: 1, 10

* Anchor
    * ^ Corrisponde ai: caratteri adiacenti all'inizio di una stringa 	
    * ^10 corrisponde a: 10, 100, 10x

    * ^10 non corrisponde a: 110, 110x
        * $ Corrisponde ai: caratteri adiacenti alla fine di una stringa 	
        * 10$ corrisponde a: 110, 1010
        * 10$ non corrisponde a: 100, 10x

* Gruppi
    * ( ) Corrisponde ai: caratteri racchiusi nell'esatto ordine in qualsiasi punto di una stringa
    * Utilizzato anche per raggruppare altre espressioni 	(10) corrisponde a: 10, 101, 1011
    * ([0-9]|[a-z]) corrisponde a: qualunque numero o lettera minuscola
    * [ ] 	Corrisponde ai: caratteri racchiusi in qualsiasi ordine in qualsiasi punto di una stringa 	
    * [10] corrisponde a: 012, 123, 202, 120, 210
    * \- 	Crea un intervallo di caratteri tra parentesi che corrisponda in qualsiasi punto di una stringa 	[0-9] corrisponde a: tutti i numeri da 0 a 9

* Esc \
* Indica che il carattere adiacente deve essere interpretato letteralmente invece che un metacarattere dell'espressione regolare 	
* \. indica che il punto adiacente deve essere interpretato come un punto o una virgola invece che un carattere jolly.
* 216\.239\.32\.34 corrisponde a: 216.239.32.34

Parentesi ( ) e barra verticale |
Parentesi ( )

Utilizza le parentesi per raggruppare insieme le parti di un'espressione.

Ad esempio, se devi abbinare un insieme di caratteri che compaiono in una serie di diversi SKU di prodotti, puoi raggruppare questi caratteri insieme tra parentesi. Supponiamo che tu venda dei sandali da spiaggia da uomo e da donna e che gli SKU dei prodotti abbiano questo aspetto:

    MNBS010212 (sandali da spiaggia da uomo, stile 01, colore 02, taglia 12)
    WMBS020208 (sandali da spiaggia da donna, stile 02, colore 02, taglia 08)

Per comprendere tutti gli SKU dei sandali da spiaggia, potresti creare la seguente espressione regolare:

\D+(BS)\d+

    \D (carattere non numerico)
    + (una o più volte)
    (BS) (codice di carattere per i sandali da spiaggia)
    \d (carattere numerico)
    + (una o più volte)

Barra verticale |

Utilizza la barra verticale per creare una condizione OR in un'espressione.

Ad esempio, se tu volessi creare un segmento con i dati della campagna Primavera a Londra e Parigi, dovresti configurare i segmenti nel seguente modo:

    La campagna corrisponde esattamente a Primavera
        La città corrisponde all: espressione regolare Londra|Parigi

Puoi anche utilizzare la barra verticale dentro le parentesi. Ad esempio, ecco un altro modo per creare l'espressione da abbinare agli SKU dei sandali da spiaggia:

(MN|WM)BS\d+

    (MN OR WM)
    (BS) (codice di carattere per i sandali da spiaggia)
    \d (carattere numerico)
    + (una o più volte)


Parentesi quadre [ ] e trattino -
Parentesi quadre [ ]

Utilizza le parentesi quadre per creare un set di caratteri da abbinare.

* Quando inserisci tra parentesi una serie di caratteri, l'espressione corrisponde a: 1 di questi caratteri.

* Ad esempio, l'espressione PART[123] corrisponde a: 

* PART1
* PART2
* PART3

* L'espressione non corrisponde a: 

* PART12
* PART23
* PART123

## Trattino -

Utilizza il trattino insieme alle parentesi quadre per creare una corrispondenza di un intervallo di caratteri.

Ad esempio, se devi corrispondere a tutte le lettere maiuscole, puoi indicare [A-Z].

Se devi corrispondere a tutte le cifre, puoi indicare [0-9].

Se volevi una corrispondenza di tutto quanto indicato in precedenza, avresti potuto utilizzare la seguente espressione:

* [A-Z]+[0-9]+
  * [A-Z] (corrisponde a: tutte le lettere maiuscole) + (una o più volte)
  * [0-9] (corrisponde a: tutte le cifre) + (una o più volte)

## Punto interrogativo (?), segno più (+), asterisco (*)

Punto interrogativo (?)

* Il punto interrogativo (?) corrisponde a: 0 o 1 volta il carattere che lo precede.
* Per esempio, 10? corrisponde a: 
  * 1
  * 10

### Esempio

Abbina un indirizzo IP con 1 o 2 cifre nell'ultima sezione.

    Ad esempio, 216\.239\.32\.\d\d? corrisponde a: 

    216.239.32.2
    216.239.32.34

Questo esempio utilizza la barra inversa per evitare il punto e utilizza \d per corrispondere a qualsiasi cifra.


## Segno più (+)

    Il segno più (+) corrisponde a: 1 o più volte il carattere che lo precede.

    Ad esempio, 10+ corrisponde a: 

    10
    100
    1000
    e così via.

Esempio

Abbina un indirizzo IP con 1 o più cifre nell'ultima sezione.

    Ad esempio, 216\.239\.32\.\d+ corrisponde a: 

    216.239.32.2
    216.239.32.34
    216.239.32.567

Questo esempio utilizza la barra inversa per evitare il punto e utilizza \d per corrispondere a qualsiasi cifra.
Asterisco (*)

    L'asterisco o stella corrisponde a: 0 o più volte il carattere precedente.

    Ad esempio, 10* corrisponde a: 

    1
    10
    100
    1000
    e così via.


## Punto (.) e barra inversa (\)

Alcuni caratteri hanno un significato nelle espressioni regolari e uno completamente diverso in altri contesti. Ad esempio, nelle espressioni regolari, il punto (.) è un carattere speciale utilizzato per abbinarsi a qualsiasi carattere. Nel linguaggio scritto, il punto (.) viene utilizzato per indicare la fine di una frase. In matematica, il punto decimale (.) viene utilizzato per separare la parte intera di un numero dalla parte decimale.

Le espressioni regolari valutano in primo luogo un carattere speciale nel contesto delle espressioni regolari: se vedono un punto, sanno che deve corrispondere a qualunque carattere.

    Ad esempio, l'espressione regolare 1. corrisponde a: 

    11
    1A

    L'espressione regolare 1.1 corrisponde a: 
    111
    1A1

    Se dovessi fornire un indirizzo IP come espressione regolare, otterresti risultati imprevedibili. Ad esempio, l'espressione regolare 0.0.0.0 corrisponde a: 

    0102030
    0a0b0c0

Per dire alle espressioni titolare di visualizzare il punto nel suo contesto originale come separatore tra le diverse parti dell'indirizzo IP e non come carattere speciale utilizzato per corrispondere a tutti gli altri caratteri, devi fornire un segnale a tale scopo. La barra inversa (\) è quel segnale. Quando le espressioni regolare visualizzano una barra inversa, sanno che deve interpretare letteralmente il carattere successivo. Un'espressione regolare per corrispondere all'indirizzo IP 0.0.0.0 potrebbe essere:

0\.0\.0\.0

Utilizza la barra inversa per evitare i caratteri speciali e interpretarli letteralmente; ad esempio:

    \\ (evita la barra inversa)
    \[ (evita la parentesi quadra)
    \{ (evita la parentesi graffa)
    \. (evita il punto)


## Accento circonflesso (^)

Utilizza l'accento circonflesso perché corrisponda ai caratteri adiacenti e seguenti all'inizio di una stringa.

    Ad esempio, ^St corrisponde a: 

    Start here
    Stand here
    Stop here

    Tuttavia, ^St non corrisponde a: 

    1 Start here
    2 Stand here
    3 Stop here

Le 3 righe precedenti iniziano con un cifra e con uno spazio, non con le lettere "St".

Utilizza questo tipo di espressione regolare per creare segmenti, filtri o fasi di obiettivo che corrispondono a un URI. Ad esempio, se devi isolare i dati di una certa directory di pagine, puoi utilizzare espressioni quali:

        ^/mens/ (corrisponde a: www.example.com/mens/)
        ^/womens/ (corrisponde a: www.example.com/womens/)

## Simbolo del dollaro ($)

    Il simbolo del dollaro corrisponde ai: caratteri precedenti e adiacenti alla fine di una stringa.

    Ad esempio, end$ corrisponde a: 

    Temporarily suspend
    We’re going off the deep end
    Match the characters that prepend

Tuttavia, end$ non corrisponderà a:

    Temporarily suspend.
    We’re going off the deep end.
    Match the characters that prepend.

Le 3 righe precedenti finiscono tutte con nd. invece che con i caratteri end che corrispondono con l'espressione regolare.

Utilizza questo tipo di espressione regolare per creare segmenti, filtri o passaggi di obiettivo che corrispondono a un URI. Ad esempio, se stai testando l'efficacia di una nuova versione .htm rispetto a una vecchia versione .html version, puoi identificare le versioni separatamente con espressioni regolari quali:

    email-signup\.htm$
    email-signup\.html$

Utilizza la barra per evitare il punto e fare in modo che sia interpretato letteralmente.