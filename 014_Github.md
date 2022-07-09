# GitHub

GitHub fornisce una piattaforma per condividere un intero progetto come repo tra un team (repo privato) o con tutto il mondo (repo pubblico, come questo!).

![git logo](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/github.png)
![git versioning](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/git_versioning.png)
![git add_commit](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/git_add_commit.png)
![git process](https://raw.githubusercontent.com/maboglia/Fondamenti/master/img/git_process.png)

* [git commands](http://guides.beanstalkapp.com/version-control/common-git-commands.html)
* [git guida](https://blog.netsons.com/guida-git-cose-e-come-si-usa/)


## gist

Gist è un modo semplice per condividere frammenti e paste con gli altri.
Una sintesi è per un pezzo di codice (di solito non connesso ad altro codice), come per discutere o fornire esempi.

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
