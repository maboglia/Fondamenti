# Bash per la cybersecurity: analisi e controlli introduttivi

Bash può supportare attività difensive e di osservazione, ad esempio:
- conteggio di eventi `ERROR` o `WARNING` in log di laboratorio;
- ricerca di righe che contengono parole chiave;
- controllo della presenza e dei permessi di file;
- raccolta di informazioni di sistema;
- generazione di report testuali.

Esempi su log di prova:

```bash
grep -n 'Failed' auth-lab.log
grep -c 'ERROR' applicazione-lab.log
```

## Limiti e cautele

- I log possono contenere dati personali o informazioni riservate: usare dataset
  didattici o autorizzati.
- Una corrispondenza testuale non dimostra da sola un incidente.
- Non modificare o cancellare log originali durante l'analisi.
- Evitare scansioni o verifiche su sistemi senza autorizzazione.
- Conservare una copia dei dati e annotare i comandi utilizzati.
