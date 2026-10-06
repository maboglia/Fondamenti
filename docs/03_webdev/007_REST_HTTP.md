# REST, HTTP e Status Code

> Documento migrato dal repository originale nella root del progetto.
> 
> Origine: https://github.com/maboglia/Fondamenti/blob/master/012_REST.md
> Origine: https://github.com/maboglia/Fondamenti/blob/master/013_HttpStatusCode.md

REST (Representational State Transfer) è uno stile architetturale per progettare API web scalabili e mantenibili.

## Principi REST

- client-server
- stateless
- cache
- interface uniforme
- layered system
- code on demand (opzionale)

## Metodi HTTP

- GET - recuperare risorse
- POST - creare risorse
- PUT - aggiornare risorse
- DELETE - eliminare risorse
- PATCH - aggiornamento parziale
- OPTIONS - descrivere opzioni di comunicazione

## HTTP Status Code

### 2xx - Successo
- 200 OK
- 201 Created
- 204 No Content

### 3xx - Redirezione
- 301 Moved Permanently
- 302 Found
- 304 Not Modified

### 4xx - Errore del client
- 400 Bad Request
- 401 Unauthorized
- 403 Forbidden
- 404 Not Found
- 409 Conflict

### 5xx - Errore del server
- 500 Internal Server Error
- 502 Bad Gateway
- 503 Service Unavailable

## Best practices

- usare il metodo HTTP corretto
- ritornare status code appropriato
- fornire messaggi di errore chiari
- versionare le API
