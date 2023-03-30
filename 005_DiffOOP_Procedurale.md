# Programmazione ad oggetti vs procedurale

---

## Programmazione imperativa

Possiamo programmare utilizzando i seguenti tipi di dati:

* Tipi di dato primitivi (int, double, char, boolean, ecc...) 
* Le stringhe
* Gli array

I programmi consistono di una sequenza di comandi, strutture di controllo (cicli, scelte condizionali, ecc...) ed eventualmente metodi ausiliari che consentono di manipolare i dati per calcolare il risultato voluto.

---

Questo modo di programmare prende il nome di __PROGRAMMAZIONE IMPERATIVA__, imperativa in quanto basata su comandi
                     
## Programmazione imperativa

Nella programmazione imperativa:

* Un programma prevede uno stato globale costituito dai valori delle sue variabili
* I comandi del programma modificano lo stato fino a raggiungere uno stato finale 

---

## Programmazione imperativa 2

Ad esempio, il seguente programma (che calcola il prodotto di x e y) ha la seguente dinamica:

```java
int x=10, y=3, p=0;
for (int i=0; i<y; i++)
p+=x;
```

---

## Procedurale vs OOP

* Nella programmazione procedurale, il codice è centrale e i dati sono subordinati 
* abbiamo programmi che agiscono sui dati che di solito non sono strettamente collegati

* Nella programmazione a oggetti, gli oggetti sono l'elemento centrale. 
* Un oggetto consiste nei **dati** (attributi, proprietà, ...) 
* e nel codice che opera su tali dati: **metodi** 
* **dati e metodi** sono strettamente collegati: è il concetto di **incapsulamento**
* l'**incapsulamento** permette anche di nascondere l'implementazione interna, utilizzando l'oggetto attraverso l'**interfaccia** pubblica.

---

## Per esempio: abbiamo un numero e vogliamo raddoppiarlo.

Nel modo procedurale possiamo scrivere:

```java
n = n * 2
```

**Il codice moltiplica n per 2 e registra il risultato in n.**

Nella programmazione orientata agli oggetti si invia un "messaggio" all'oggetto chiamando un metodo per raddoppiare: ```n.raddoppia();```

Un oggetto di tipo Operazione riceve la chiamata al metodo `raddoppia(<TIPO>)`, riconosce il tipo dell'argomento e richiama il metodo implementato per quel tipo.


---

## Overload del metodo raddoppia

```java
class Operazione{
	

	public int raddoppia(int n){
		return n * 2;
	}

	public String raddoppia(String s){
		return s+s;
	}

}
```

Il vantaggio di questa tecnica è definito **polimorfismo**.

Se il programma richiede di replicare la procedura su un oggetto di tipo string come "bob", nel modo procedurale occorre invocare una nuova funzione con un codice e un nome differente.

---

## Esempio: Codice Procedurale vs OOP in PHP

```php
<?php
// Procedurale
function esempio_new() {
  return array(
    'vars' => array()
  );
}

function esempio_set($esempio, $nome, $valore) {
  $esempio['vars'][$nome] = $valore;
  return $esempio;
}

function esempio_get($esempio, $nome) {
  $valore = isset($esempio['vars'][$nome]) ? $esempio['vars'][$nome] : null;
  return array($esempio, $valore);
}

$esempio = esempio_new();
$esempio = esempio_set($esempio, 'ciao', 'miao');
list($esempio, $valore) = esempio_get($esempio, 'ciao');
?>
```

---

```php
<?php
// OOP
class esempio
{
  private $vars = array();

  public function set($nome, $valore)
  {
    $this->vars[$nome] = $valore;
  }

  public function get($nome)
  {
    return isset($this->vars[$nome]) ? $this->vars[$nome] : null;
  }
}

$esempio = new esempio();
$esempio->set('ciao', 'miao');
$valore = $esempio->get('ciao');

?>
```