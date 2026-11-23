# Progetto finale – Monitoraggio di un file di log

## Scenario

Realizzare uno script che analizzi un file di log didattico e produca un piccolo
riepilogo degli eventi.

## Requisiti minimi

- ricevere il percorso del log come argomento;
- verificare che sia stato fornito e che il file esista e sia leggibile;
- contare le occorrenze di `INFO`, `WARNING` ed `ERROR`;
- salvare un report con data e ora;
- mostrare un messaggio di errore su stderr e restituire un codice diverso da zero
  in caso di input non valido.

## Estensioni

- accettare una parola chiave da riga di comando;
- ordinare le righe per frequenza;
- aggiungere una funzione per ogni fase;
- registrare l'esito dell'elaborazione;
- distinguere chiaramente i dati di test dai log reali.

## Consegna

Script commentato, file di log di prova, report prodotto e breve relazione sulle
scelte effettuate e sui limiti dell'analisi.
