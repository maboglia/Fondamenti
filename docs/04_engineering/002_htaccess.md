# .htaccess - Configurazione Apache

> Documento migrato dal repository originale nella root del progetto.
> 
> Origine: https://github.com/maboglia/Fondamenti/blob/master/011_htaccess.md

Il file .htaccess permette di configurare il server Apache su base per-directory.

## Usi comuni

- URL rewriting
- redirect
- autenticazione
- compressione
- caching
- blocco di IP
- custom error pages
- MIME types

## Moduli Apache richiesti

- mod_rewrite
- mod_auth
- mod_setenvif
- mod_headers
- mod_mime

## Sicurezza

- proteggere i file sensibili
- bloccare l'accesso a directory
- impedire il listing delle directory
- proteggere da attacchi comuni

## Prestazioni

- abilitare caching
- compressione GZIP
- ottimizzazione delle risorse

## Limitazioni

- richiede mod_rewrite abilitato
- overhead di parsing
- difficile da debuggare
- può influenzare le prestazioni

## Alternative moderne

- Nginx (migliori prestazioni)
- configurazione a livello di server
- application-level routing
