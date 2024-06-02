# GitHub

GitHub fornisce una piattaforma per condividere un intero progetto come repo tra un team (repo privato) o con tutto il mondo (repo pubblico, come questo!).

![git logo](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/github.png)
![git versioning](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/git_versioning.png)
![git add_commit](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/git_add_commit.png)
![git process](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/git_process.png)

* [git commands](http://guides.beanstalkapp.com/version-control/common-git-commands.html)
* [git guida](https://blog.netsons.com/guida-git-cose-e-come-si-usa/)


## gist

Gist è un modo semplice per condividere frammenti di codice con altri.
Un pezzo di codice (di solito non connesso ad altro codice), come spunto per discutere o fornire esempi.

---

### Basi di Version Control con Git

Git è uno strumento di version control distribuito che permette a più sviluppatori di lavorare sullo stesso progetto contemporaneamente, mantenendo traccia delle modifiche e facilitando la collaborazione. Ecco i concetti di base e le operazioni principali da conoscere.

---

#### 1. **Inizializzare un Repository Git**

Prima di poter usare Git, devi inizializzare un repository. Questo creerà una directory `.git` nel tuo progetto, dove Git terrà traccia delle modifiche.

```bash
git init
```

---

#### 2. **Clonare un Repository Esistente**

Se vuoi lavorare su un progetto esistente, devi clonare il repository remoto sul tuo computer.

```bash
git clone <url-del-repository>
```

---

#### 3. **Aggiungere Modifiche**

Per registrare le modifiche in Git, devi prima aggiungere i file modificati all'area di staging.

```bash
git add <file>
```

Per aggiungere tutti i file modificati:

```bash
git add .
```

---

#### 4. **Commit delle Modifiche**

Dopo aver aggiunto i file all'area di staging, puoi fare un commit. Un commit salva una fotografia delle modifiche aggiunte.

```bash
git commit -m "Messaggio del commit"
```

---

#### 5. **Branching**

I branch (rami) permettono di lavorare su diverse funzionalità o bug fix senza interferire con il codice principale. Per creare un nuovo branch:

```bash
git branch <nome-del-branch>
```

Per spostarsi su un branch diverso:

```bash
git checkout <nome-del-branch>
```

Creare e spostarsi su un nuovo branch in un solo comando:

```bash
git checkout -b <nome-del-branch>
```

---

#### 6. **Unire i Branch (Merge)**

Quando hai finito di lavorare su un branch e vuoi unire le modifiche nel branch principale (solitamente `main` o `master`):

```bash
git checkout main
git merge <nome-del-branch>
```

---

#### 7. **Pull Request**

Una pull request (o merge request) è una richiesta di revisione delle modifiche proposte prima che vengano unite nel branch principale. Questo è un processo solitamente gestito attraverso piattaforme di hosting di codice come GitHub, GitLab o Bitbucket.

* **Crea una pull request**: Dopo aver pushato le tue modifiche su un branch remoto, vai sulla piattaforma di hosting del codice e crea una pull request.
* **Revisione della pull request**: Altri sviluppatori possono rivedere il tuo codice, lasciare commenti e approvare le modifiche.
* **Unisci la pull request**: Dopo l'approvazione, la pull request viene unita al branch principale.

---

#### 8. **Sincronizzare il Repository Locale con il Remoto**

Per scaricare le modifiche dal repository remoto e unirle al tuo branch corrente:

```bash
git pull
```

Per caricare le tue modifiche dal repository locale al repository remoto:

```bash
git push
```

---

#### 9. **Gestire i Conflitti**

Quando due o più sviluppatori modificano le stesse righe di un file, possono verificarsi conflitti. Git segnala i conflitti e richiede l'intervento manuale per risolverli.

* **Visualizzare i conflitti**: Apri il file in conflitto e cerca i marker di conflitto (`<<<<<<<`, `=======`, `>>>>>>>`).
* **Risolvi i conflitti**: Modifica il file per risolvere i conflitti.
* **Aggiungi e committa le modifiche risolte**:

```bash
git add <file>
git commit -m "Risolti i conflitti"
```

---

### Esempio di Workflow Completo

---

1. **Inizializza il repository**:

    ```bash
    git init
    ```

---

2. **Crea un nuovo branch per una funzionalità**:

    ```bash
    git checkout -b nuova-funzionalità
    ```

---

3. **Aggiungi e committa le modifiche**:

    ```bash
    git add .
    git commit -m "Aggiunta nuova funzionalità"
    ```

---

4. **Pusha il branch remoto**:

    ```bash
    git push origin nuova-funzionalità
    ```

---

5. **Crea una pull request su GitHub/GitLab/Bitbucket**.

Push del Branch Remoto: Assicurati di aver pushato il tuo branch con le modifiche al repository remoto.

    ```bash
    git push origin <nome-del-branch>
    ```

- **Creare la Pull Request:**

  - Vai alla pagina del repository su GitHub.
  - Clicca su "Pull requests" nella parte superiore.
  - Clicca su "New pull request".
  - Seleziona il branch di origine (quello che hai appena pushato) e il branch di destinazione (solitamente main o master).
  - Clicca su "Create pull request".
  - Aggiungi un titolo descrittivo e una descrizione per la pull request.
  - Clicca su "Create pull request" per inviare la PR.

---

6. **Revisione e unione della pull request**.

1. Vai alla scheda "Pull requests" del repository.

- Seleziona la pull request che desideri rivedere.
- Esamina i cambiamenti nei file modificati e lascia commenti se necessario.
- Puoi approvare la PR o richiedere modifiche.
- Unire la Pull Request:
  
2. Dopo che la PR è stata approvata, vai alla pagina della pull request.

- Clicca su "Merge pull request".
- Conferma l'unione cliccando su "Confirm merge".
- Puoi eliminare il branch di origine se non è più necessario.

---

1. **Sincronizza il tuo branch locale**:

    ```bash
    git checkout main
    git pull
    ```

Con queste competenze di base, un programmatore junior sarà in grado di gestire versioni del codice, collaborare con altri sviluppatori e mantenere una cronologia delle modifiche ben organizzata.

---

## Git commands 


### git add 

Sposta le modifiche dalla directory di lavoro all'area di gestione temporanea. Questo ti dà l'opportunità di preparare un'istantanea prima di inserirla nella cronologia ufficiale.

---

### git branch 

Questo comando è il tuo strumento di amministrazione di branch (ramo) per uso generale. Ti consente di creare ambienti di sviluppo isolati all'interno di un unico repository.

---

### git checkout 

Oltre a controllare i vecchi commit e le vecchie revisioni dei file, git checkout è anche il mezzo per navigare nei rami esistenti. Combinato con i comandi Git di base, è un modo per lavorare su una particolare linea di sviluppo.

---

### git clean 

Rimuove i file non tracciati dalla directory di lavoro. Questa è la controparte logica di git reset, che (in genere) opera solo su file tracciati.

---

### git clone 

Crea una copia di un repository Git esistente. La clonazione è il modo più comune per gli sviluppatori di ottenere una copia funzionante di un repository centrale.

---

### git commit 

Acquisisce l'istantanea in scena e la impegna nella cronologia del progetto. Combinato con git add, definisce il flusso di lavoro di base per tutti gli utenti Git.

---

### git commit --amend 

Passare il flag --amend a git commit ti consente di modificare il commit più recente. Questo è molto utile quando ci si dimentica di mettere in scena un file o si omettono informazioni importanti dal messaggio di commit.

---

### git config 

Un modo conveniente per impostare le opzioni di configurazione per l'installazione di Git. In genere dovrai usarlo solo subito dopo aver installato Git su una nuova macchina di sviluppo.

---

### git fetch 

Il recupero scarica un ramo da un altro repository, insieme a tutti i suoi commit e file associati. Ma non tenta di integrare nulla nel tuo repository locale. Questo ti dà la possibilità di ispezionare le modifiche prima di unirle al tuo progetto.

---

### git init 

Inizializza un nuovo repository Git. Se vuoi mettere un progetto sotto controllo di revisione, questo è il primo comando che devi imparare.

---

### git log 

Consente di esplorare le revisioni precedenti di un progetto. Fornisce diverse opzioni di formattazione per la visualizzazione di snapshot vincolati.

---

### git merge 

Un modo efficace per integrare le modifiche provenienti da rami divergenti. Dopo aver biforcato la cronologia del progetto con git branch, git merge ti consente di rimontarlo.

---

### git pull 

Pulling è la versione automatizzata di git fetch. Scarica un ramo da un repository remoto, quindi lo unisce immediatamente al ramo corrente. Questo è l'equivalente Git di svn update.

---

### git push 

Spingere è l'opposto di recuperare (con alcuni avvertimenti). Ti consente di spostare un ramo locale in un altro repository, che funge da modo conveniente per pubblicare i contributi. È come svn commit, ma invia una serie di commit invece di un singolo changeset.

---

### git rebase 

Il ribasamento ti consente di spostare i rami, il che ti aiuta a evitare inutili commit di unione. La storia lineare risultante è spesso molto più facile da capire ed esplorare.

---

### git rebase -i 

Il flag -i viene utilizzato per iniziare una sessione di ribasatura interattiva. Ciò fornisce tutti i vantaggi di un normale rebase, ma ti dà l'opportunità di aggiungere, modificare o eliminare i commit lungo il percorso.

---

### git reflog 

Git tiene traccia degli aggiornamenti sulla punta dei rami utilizzando un meccanismo chiamato reflog. Ciò ti consente di tornare ai changeset anche se non sono referenziati da alcun ramo o tag.

---

### git remote 

Un comodo strumento per la gestione delle connessioni remote. Invece di passare l'URL completo ai comandi fetch, pull e push, ti consente di utilizzare una scorciatoia più significativa.

---

### git reset 

Annulla le modifiche ai file nella directory di lavoro. Il ripristino consente di ripulire o rimuovere completamente le modifiche che non sono state inviate a un repository pubblico.

---

### git revert 

Annulla un'istantanea salvata. Quando si scopre un commit errato, il ripristino è un modo semplice e sicuro per rimuoverlo completamente dalla base di codice.

---

### git status 

Visualizza lo stato della directory di lavoro e l'istantanea a fasi. Dovresti eseguirlo insieme a git add e git commit per vedere esattamente cosa viene incluso nella prossima istantanea.

---

[Git tips](https://github.com/maboglia/git-tips)