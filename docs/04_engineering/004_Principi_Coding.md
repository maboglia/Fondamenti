# Principi di Coding: DRY, KISS, YAGNI, CQS

> Documento migrato dal repository originale nella root del progetto.
> 
> Origine: https://github.com/maboglia/Fondamenti/blob/master/015_DRY.md
> Origine: https://github.com/maboglia/Fondamenti/blob/master/015_KISS.md
> Origine: https://github.com/maboglia/Fondamenti/blob/master/015_YAGNI.md
> Origine: https://github.com/maboglia/Fondamenti/blob/master/033_CQS.md

Questi principi sono fondamentali per scrivere codice di qualità, manutenibile e scalabile.

## DRY - Don't Repeat Yourself

Evitare la duplicazione di codice:
- estrarre funzioni comuni
- creare librerie riutilizzabili
- usare template e pattern

**Beneficio**: codice più facile da mantenere e aggiornare.

## KISS - Keep It Simple, Stupid

Mantenere il codice semplice e leggibile:
- evitare over-engineering
- usare soluzioni semplici quando appropriate
- favorire chiarezza rispetto a "intelligenza"

**Beneficio**: codice più facile da capire e debuggare.

## YAGNI - You Aren't Gonna Need It

Non aggiungere feature "perché potrebbe servire":
- implementare solo quello che serve adesso
- evitare feature speculative
- rifattore quando è necessario

**Beneficio**: codice più snello e meno complex.

## CQS - Command Query Separation

Separare metodi che modificano lo stato (Command) da quelli che leggono (Query):
- Query: restituiscono dati senza modificare lo stato
- Command: modificano lo stato ma non restituiscono dati

**Beneficio**: più prevedibile, testabile e sicuro.

## Sintesi

Applicare questi principi rende il codice:
- più leggibile
- più manutenibile
- più testabile
- meno propenso a bug
