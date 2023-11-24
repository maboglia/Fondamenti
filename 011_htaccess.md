# Elementi base della configurazione di Apache

## I container
Apache prevede una serie di direttive chiamate container, che identificano un certo gruppo di risorse (file, directory ecc.) relativamente alle quali vengono attivate determinate direttive di configurazione.

Un container si definisce tale perchè, a differenza della maggior parte delle direttive di configurazione di Apache, e similmente ai tag HTML, ha una riga di apertura, che definisce l'ambito di applicazione e una di chiusura. All'interno di queste si possono inserire delle configurazioni che sono valide solo per l'ambito specificato.

Con l'esempio che segue si limita l'accesso alla directory /home/www/private solo agli indirizzi della rete 10.0.0.0/24:

```text
<Directory /home/www/private>
Order deny,allow
Deny from all
Allow from 10.0.0
</Directory>
```

Sono previste le seguenti direttive container, che possono essere, in alcuni casi, anche incluse una dentro l'altra:

* Directory - Definisce una directory (e tutte le sue sottodirectory), relativa al file system locale, per la quale si applicano le direttive specificate.

* DirectoryMatch - Definisce una directory esprimibile anche con regular expressions. Per esempio DirectoryMatch "/home/(a|A)*" definisce ogni directory in /home che inizia con a o A.
* Files - Come Directory, ma si riferisce a uno o più file. Può inglobare wildcard (Files *.jpg)
* FilesMatch - Come DirectoryMatch può definire insiemi di file tramite regular expressions moderatamente complesse

* Location - Come Directory, ma invece di applicarsi al PATH completo nel file system, si applica a degli URL, relativi all'indirizzo Web di un sito. Si usa tipicamente con directory virtuali generare dinamicamente da Apache come Location /server-info 
* LocationMatch - Come DirectoryMatch, permette di definire regular expression per identificare delle Location relative al server web

* VirtualHost - Fondamentale per la gestione di domini virtuali, di fatto può prevedere molte direttive, anche a server-level, per gestire più siti indipendenti (DocumentRoot, path dei log, email dell'amministratore ecc.)

* Limit - Si riferisce a determinati metodi http, tipicamente usato per gestire accessi a determinate risorse con criteri diversi. Quasi sempre viene incluso all'interno di altri container. (es: Limit PUT POST)

* LimitExcept - Come Limit, ma funziona com un NOT logico. Per esempio LimitExcept GET indica tutti i metodi http tranne GET.

## Gestione di porzioni di configurazione

Apache prevede direttive per gestire in modo dinamico la configurazione e attivarne blocchi interi se sono riscontrate determinate condizioni:

IfModule viene usata come una direttiva container (anche se non è propriamente un container): tutte le righe di configurazione che stanno al suo interno vengono processate se il modulo specificato è caricato in memoria. Per esempio:

```text
<IfModule mod_dir.c>
DirectoryIndex index.html
</IfModule>

```

attiva la direttiva DirectoryIndex index.html solo se il modulo che la gestisce (mod_dir) è attivo.

Il vantaggio di una configurazione simile è che si può rimuovere il caricamento del modulo in questione senza dover modificare altre parti del file di configurazione (se non ci fosse IfModule, Apache, in mancanza di mod_dir non riuscirebbe a partire e darebbe un messaggio di errore per una direttiva, DirectoryIndex, sconosciuta).

IfModule è ampiamente utilizzata nelle configurazioni standard di Apache.

IfDefine ha sintassi simile a quella di IfModule e viene utilizzata per definire pezzi di configurazione che possono essere caricati se Apache viene avviato usando il flag -D Definizione. Per esempio:

```text
<IfDefine Debugga>
<Location /server-info>
SetHandler server-info
</Location>
<Location /server-status>
SetHandler server-status
</Location>
ExtendedStatus On
LogLevel debug
</IfDefine>
```

In questo modo, se si lancia Apache con httpd -D Debugga verranno attivate una serie di direttive che facilitano le operazioni di troubleshooting e debugging.

Tipicamente la direttiva IfDefine e l'invocazione di Apache tramite httpd -D sono usate in casi particolari per prove, test e verifiche di parti di configurazione, considerando anche che un kill -HUP o un apachectl restart riavviano Apache in modalità normale, senza l'inclusione delle direttive specificate all'interno della direttiva IfDefine.

Oltre a queste direttive che gestiscono il caricamento di parte di configurazioni secondo la presenza di un dato modulo o la definizione invocata con l'opzione -D, esiste la possibilità di includere nella conf principale, altri file di configurazione esterni.

La direttiva Include permette di aggiungere file singoli, file definiti con una wildcard o il contenuto di intere directory, alla configurazione principale. 

Esempi:
Include conf/virtual-domains.conf aggiunge, dal punto in cui si trova, il contenuto del file virtual-domains.conf (presente nella subdirectory conf rispetto alla ServerRoot) alla configurazione di Apache;
Include /etc/httpd/conf.d/*.conf aggiunge tutti i file che terminano con .conf presenti nella directory (assoluta) /etc/httpd/conf.d/;
Include /etc/httpd/conf.d aggiunge tutti i file presenti nella directory /etc/httpd/conf.d.

## Options e Overrides
Apache ha due metodi di controllo, Options e Overrides per la gestione delle feature disponibili per una data directory.

Options: E' la direttiva che gestisce il comportamento di Apache nei confronti del filesystem. Ogni parametro modifica il comportamento in presenza di condizioni diverse come un file eseguibile, link simbolico, CGI etc.
Per esempio Options FollowSymlinks indica che i link simbolici vengono seguiti e i file a cui puntano vengono serviti da Apache anche se non sono nella sua DocumentRoot.

Questa direttiva può risiedere sia nella configurazione generale che all'interno dei container Directory e Virtual Host

AllowOverride: Controlla quali direttive possono essere definite nel file autonomo .htaccess, che può essere presente in ogni directory e, per ogni directory, può impostare delle configurazioni specifiche che si aggiungono o sostituiscono quelle del file di configurazione generale.

E' possibile definire quali tipi di configurazioni possono essere aggiunte nei file .htaccess, per esempio AllowOverride FileInfo Indexes limita la possibilità di override da parte di .htaccess solo per direttive che riguardano la gestione dei file type e gli indici.

## Abilitazione e Disabilitazione di features con Options
La gestione dei file e del filesystem viene regolata attraverso la direttiva Options, la quale tratta una o più opzioni come parametri. Ogni parametro controlla un diverso aspetto della gestione del file.

Per esempio: Options ExecCGI FollowSymLinks con il primo parametro permette ad Apache di eseguire file .cgi (o come altrimenti definiti) come cgi scripts, mentre il secondo permette ad Apache di "seguire" i link simbolici.

Le opzioni permesse sono 7, escluse le opzioni globali All e None, abilitate tutte di default tranne MultiViews.
* All Abilita tutte le features tranne MultiViews. Default setting.
* ExecCGI Abilita l'esecuzione di script CGI, inoltre è richiesto per ogni contenuto eseguibile.
* FollowSymLinks I link simbolici vengono "seguiti".
* SymLinksIfOwnerMatch Il server seguirà i link simbolici i cui target hanno lo stesso owner UID del link. Opzione disabilitata da  FollowSymLinks se sono entrambe specificate o se si usa All.
* Includes Abilita l'uso di server-side includes.
* IncludesNOEXEC Permette i server-side include disabilitando l'esecuzione di comandi locali (potenzialmente pericolosa).
* Indexes Se l'URL richiesta punta ad una directory priva di una index (index.php, index.html...), Apache genera una lista del contenuto  della directory.
* MultiViews Viene abilitata la Content negotiation.
* None Disabilita tutte le opzioni. Per motivi di sicurezza è bene che venga utilizzata come opzione di default ed abilitate le singole opzioni per directory.

## Overriding delle direttive

Apache da la possibilità di definire delle direttive specifiche per singola directory direttamente con un file di testo (di default chiamato .htaccess) presente in singole directory e quindi gestibile anche da chi non può intervenire direttamente sul file di configurazione principale.

Questa funzione è gestita con la direttiva AllowOverride, il nome del file in cui possono essere impostate direttive che fanno un "override" della configurazione principale è definito con la direttiva:

AccessFileName .htaccess (Il valore di default può essere modificato)

Quando Apache deve processare una richiesta, verifica se per quella directory è abilitato l'overriding e verifica se per ogni parent-directory esiste o meno il file .htacces.

Quando tutte le directory sono state verificate, Apache esegue il merge dando la precedenza a quelle opzioni abilitate nei file .htaccess trovati nei livelli più bassi.

La sintassi della funzione AllowOverride è simile a quella di Options, in totale ci sono 5 opzioni possibili oltre ad All e None
* AuthConfig Permette l'utilizzo delle direttive Authname, AuthType, AuthUserFile (richiede il caricamento del modulo mod_auth) 
* FileInfo Permette l'uso delle direttive per il controllo dei file types come AddType, DefaultType, AddEncoding, AddLanguage, ErrorDocument etc..
* Indexes Abilita le direttive per il controllo dell'output del contenuto delle directory
* Limit Abilita l'uso del modulo mod_access e delle relative direttive, allow, deny, order per l'accesso alle risorse.
* Options Abilita l'uso di Options e XBitHack

Anche per AllowOverride come per Options è possibile modificare semplicemente le direttive ereditate dai livelli più alti, utilizzando il prefisso - per disabilitare e il prefisso + per abilitare. Per esempio:
AllowOverrides -Indexes +AuthConfig

## Disabilitazione della lettura del file .htaccess

E' possibile tramite la direttiva AllowOverride disabilitare la lettura del file .htaccess ed evitare la possibilità di modificare le direttive del file di configurazione principale.

Se non si ha la necessità di lasciare agli utenti che uploadano i contenuti di un sito, di modificare autonomamente il proprio file .htaccess e quindi impostare delle configurazioni specifiche per le proprie directory, è decisamente consigliato disabilitare la lettura stessa del file da parte di Apache.

Questo ha un duplice vantaggio:
* Prestazioni: Il web server non deve controllare ogni volta l'esistenza di un .htaccess per ogni directory su cui va a leggere file.
* Sicurezza: Nessun utente/webmaster può impostare autonomamente, uploadando, per esempio via FTP, un file .htaccess in grado di modificare le configurazioni di Apache (per la directory in cui si trova il file).

Per disabilitare in generale l'uso di .htaccess aggiungere a httpd.conf le seguenti righe:
```
<Directory />
AllowOverride None
</Directory>
```

E' poi sempre possibile abilitare l'override per specifiche directory, meno generali.

## Ereditare e negare le direttive Options
Direttive multiple di Options possono essere unite in una sola riga di configurazione (merge) oltre che essere ereditate dalla directory di livello superiore.

Per esempio:

Options Indexes Includes
Options FollowSymLinks

equivale a:

Options Indexes Includes FollowSymlinks

Se una directory non ha settato in modo esplicito le Options vengono ereditate dalla directory di livello superiore. Queste direttive ereditate possono essere modificate sempre tramite la entry Options usando i simboli - o + come prefissi alle singole direttive da eliminare o da aggiungere.

Ammettiamo che una directory abbia le seguenti direttive Options abilitate:

Options Indexes Includes FollowSymlinks
e nella sottodirectory si vuole togliere la direttiva FollowSymLinks e aggiungere ExecCGI
Options -FollowSymlinks +ExecCGI

Questo vale anche per un tree maggiore di directory:
- DocumentRoot Options Indexes Includes FollowSymlinks
- 1° SubDir Options -FollowSymlinks +ExecCGI
- 2° SubDir Options -Includes +IncludeNoExec
Risultato, le Direttive valide nella 2° SubDir equivalgono alla seguente riga

Options FollowSymLinks ExecCGI IncludeNoExec


## Redirezioni per User Agent
1. RewriteEngine On 
2. RewriteCond %{HTTP_HOST} ^www.olddomain.com$ [OR]
3. RewriteCond %{HTTP_HOST} ^olddomain.com$
4. RewriteCond %{HTTP_USER_AGENT} Googlebot [OR]
5. RewriteCond %{HTTP_USER_AGENT} msnbot [OR]
6. RewriteCond %{HTTP_USER_AGENT} Slurp
7. RewriteRule ^(.*)$ http://bcd.com/$1 [L,R=301]

1. Comando per attivare il modulo Apache RewriteEngine
2. Impostazione del dominio da redirezionare con www
3. Impostazione del dominio da redirezionare saenza www
4. Definire user Agent Googlebot
5. Definire user Agent msnbot
6. Definire user Agent Slurp
7. Impostazione dell’URL di destinazione del redirect

## Impostare la homepage predefinita
1. #Specificare una homepage predefinita (index page)
2. DirectoryIndex home.html

## Restringere l’accesso a specifici IP
1. #Permettere l'accesso soltanto a specifici IP
2. deny from all
3. allow from 64.11.219.110
4. allow from 210.44.45.54

## Redirezionare tutte le pagine
1. #Reindirizzare tutte le pagine di olddomain.com verso newdomain.com
2. Options +FollowSymLinks
3. RewriteEngine on
4. RewriteCond %{HTTP_HOST} ^www.olddomain.com$ [OR]
5. RewriteCond %{HTTP_HOST} ^olddomain.com$
6. RewriteRule ^(.*)$ http://www.newdomain.com/$1 [R=301,L]

## Impedire l’accesso alle cartelle
1. #Prevenire il caricamento di sottocartelle. 
2. #Questo comando va inserito nel file .htaccess del dominio primario
3. RewriteCond %{HTTP_HOST} ^primary\.com$ [OR]
4. RewriteCond %{HTTP_HOST} ^www\.primary\.com$
5. RewriteRule ^addon\.com\/?(.*)$ "http\:\/\/www\.addon\.com\/$1" [R=301,L]
 
## Impedire l’accesso ai sotto­domini
1. #Prevenire il caricamento del sottodominio. 
2. #Questo comando va inserito nel file .htaccess del dominio primario
3. RewriteCond %{HTTP_HOST} ^subname\.primary\.com$ [OR]
4. RewriteCond %{HTTP_HOST} ^www\.subname\.primary\.com$
5. RewriteRule ^(.*)$ "http\:\/\/www\.addon\.com\/$1" [R=301,L]

## Forzare l’accesso su dominio non­www
1. #Non inserire mai www nel dominio. 
2. #Sostituisci 'example.com' con il tuo dominio
3. RewriteEngine on
4. RewriteCond %{HTTP_HOST} ^www\.(([a‐z0‐9_]+\.)?example\.com)$ [NC]
5. RewriteRule .? http://%1%{REQUEST_URI} [R=301,L]

## Forzare l’accesso su dominio con www
1. #Inserisci sempre www nel dominio
2. #Sostituisci 'example.com' con il tuo dominio
3. RewriteEngine on
4. RewriteCond %{HTTP_HOST} ^([a‐z.]+)?example\.com$ [NC]
5. RewriteCond %{HTTP_HOST} !^www\. [NC]
6. RewriteRule .? http://www.%1example.com%{REQUEST_URI} [R=301,L]

## Impostare la cartella della homepage predefinita
1. #Impostare la cartella della homepage
2. #Sostituisci 'folder' con il nome della tua cartella
3.  
4. RewriteEngine On
5. RewriteRule ^$ /folder/ [R=301,L]

## Redirezionare la cartella di accesso
1. #Rinomina una cartella e forza l'utente al nuovo nome
2. #Sostituisci 'old' con il nome della vecchia cartella
3. #Sostituisci 'new' con il nome della nuova cartella
4. RewriteEngine on
5. RewriteRule ^/?old([a‐z/.]*)$ /new$1 [R=301,L]

## Forzare l’accesso sotto HTTPS
1. #Usare sempre HTTPS per le connessioni sicure
2. #Sostituisci 'www.example.com' con il tuo dominio così come appare sul certificato HTTPS
3. RewriteEngine On
4. RewriteCond %{SERVER_PORT} 80
5. RewriteRule ^(.*)$ https://www.example.com/$1 [R=301,L]

## Bloccare il traffico da referrals specifici
1. #Bloccare il traffico proveniente da certi siti
2. RewriteEngine on
3. Options +FollowSymlinks
4. RewriteCond %{HTTP_REFERER} badsite\.com [NC,OR]
5. RewriteCond %{HTTP_REFERER} badforum\.com [NC,OR]
6. RewriteCond %{HTTP_REFERER} badsearchengine\.com [NC]
7. RewriteRule .* ‐ [F]

## Negare l’accesso a certi tipi di file
1. #Non permettere il caricamento di specifici tipi di file
2. RewriteEngine on
3. RewriteRule .*\.(jpg|jpeg|gif|png|bmp|exe|swf)$ ‐ [F,NC]

## Rimuovere index dall’URL
1. Options +FollowSymLinks ‐MultiViews ‐indexes
2. RewriteEngine On
3. RewriteBase /
4. #Rimuovere index
5. RewriteCond %{THE_REQUEST} /index(\.php)?[\s?/] [NC]
6. RewriteRule ^(.*?)index(/|$) /$1 [L,R=301,NC,NE]

## Rimuovere .php dall’URL
1. Options +FollowSymLinks ‐MultiViews ‐indexes
2. RewriteEngine On
3. RewriteBase /
4. #Rimuovere .php; usare THE_REQUEST per prevenire loop infiniti
5. RewriteCond %{THE_REQUEST} ^GET\ (.*)\.php\ HTTP
6. RewriteRule (.*)\.php$ $1 [L,R=301]

## Rimuovere index e / dall’URL
1. Options +FollowSymLinks ‐MultiViews ‐indexes
2. RewriteEngine On
3. RewriteBase /
4. #Rimuovere index
5. RewriteRule (.*)/index$ $1/ [R=302]
6. #Rimuovere lo slash / se non è una directory
7. RewriteCond %{REQUEST_FILENAME} !‐d
8. RewriteCond %{REQUEST_URI} /$
9. RewriteRule (.*)/ $1 [R=301,L]

## Aggiungere .php all’URL per accedere files senza redirezioni
1. Options +FollowSymLinks ‐MultiViews ‐indexes
2. RewriteEngine On
3. RewriteBase /
4. #Aggiungere .php per accedere al file, senza essere redirezionato
5. RewriteCond %{REQUEST_FILENAME}.php ‐f
6. RewriteCond %{REQUEST_URI} !/$
7. RewriteRule (.*) $1.php [L]