# Regular Expressions

> Documento migrato dal repository originale nella root del progetto.
> 
> Origine: https://github.com/maboglia/Fondamenti/blob/master/010_RegEx.md

Le Regular Expressions (Regex) sono pattern per matching e manipolazione di stringhe di testo.

## Utilizzi principali

- validazione di email, URL, numeri
- ricerca e sostituzione di testo
- parsing di dati
- data extraction
- test e debugging

## Sintassi base

- `.` - qualsiasi carattere
- `*` - 0 o più volte
- `+` - 1 o più volte
- `?` - 0 o 1 volta
- `[]` - set di caratteri
- `[^]` - negazione
- `^` - inizio stringa
- `$` - fine stringa
- `()` - gruppo
- `|` - OR
- `\` - escape

## Esempi comuni

- Email: `[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}`
- URL: `https?://[^\s]+`
- Numero: `^[0-9]+$`
- Data: `\d{2}/\d{2}/\d{4}`

## Linguaggi supportati

- JavaScript
- Python
- PHP
- Java
- C#
- Perl
- Ruby

## Importanza

Le regex sono uno strumento potente ma richiede pratica per essere padroneggiato.
