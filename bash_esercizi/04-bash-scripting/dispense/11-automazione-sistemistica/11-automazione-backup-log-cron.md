# Automazione sistemistica

Bash è utile per automatizzare operazioni ripetitive e circoscritte:
- backup di file selezionati;
- archiviazione e rotazione di log;
- controlli periodici di spazio e disponibilità;
- raccolta di informazioni sul sistema;
- pianificazione tramite cron.

## Backup: criteri minimi

1. Definire sorgente e destinazione.
2. Verificare che la sorgente esista.
3. Creare la destinazione in modo controllato.
4. Registrare l'esito.
5. Verificare che i file siano stati copiati.

## Pianificazione

`crontab -e` consente di modificare la pianificazione dell'utente. La sintassi
tradizionale contiene minuto, ora, giorno del mese, mese e giorno della settimana.
Testare prima lo script manualmente e usare percorsi assoluti: l'ambiente cron è
più limitato rispetto a una shell interattiva.
