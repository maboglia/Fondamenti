# Architetture Web e Multi-Tier

> Documento migrato dal repository originale nella root del progetto.
> 
> Origine: https://github.com/maboglia/Fondamenti/blob/master/029_architettura_multi-tier.md

Le architetture web multi-tier (a più livelli) organizzano un'applicazione in layer distinti con responsabilità specifiche.

## Architettura a 3 Tier

1. **Presentation Tier** - Interfaccia utente
   - HTML, CSS, JavaScript
   - UI components
   - User interaction

2. **Application Tier** - Logica di business
   - Backend server
   - API
   - Business logic
   - Autenticazione

3. **Data Tier** - Gestione dati
   - Database
   - Caching
   - Storage

## Vantaggi

- separazione delle responsabilità
- scalabilità
- manutenibilità
- riutilizzo del codice
- facilità di testing

## Pattern architetturali

- MVC (Model-View-Controller)
- MVVM (Model-View-ViewModel)
- MVP (Model-View-Presenter)
- Clean Architecture

## Considerazioni

La scelta dell'architettura dipende dalla complessità del progetto, dal team e dai requisiti non funzionali.
