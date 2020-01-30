Risposta breve senza gergo:

    Molte spiegazioni introduttive saltano rapidamente negli esempi "OOP mondo reale". Quelli possono tendere a confondere più dell'aiuto, quindi sentiti libero di ignorarlo per ora.
    Puoi pensare al codice sorgente semplicemente come "blocchi" di funzionalità, che vengono semplicemente salvati in singoli file.
    Esistono diversi modi di organizzare quei "pezzi"; a seconda di cose come le convenzioni del linguaggio di programmazione, il background e la formazione degli sviluppatori o semplicemente delle vecchie preferenze personali.
    OOP e la programmazione procedurale sono semplicemente due metodologie principali, generalmente riconosciute, per come organizzare e organizzare quei "pezzi" di codice.

Risposta lunga senza gergo:

Procedural vs OOP è solo un aspetto di una questione fondamentale della programmazione informatica: come rendere il codice facile da capire e un gioco da ragazzi da mantenere professionalmente. Puoi effettivamente scrivere codice "procedurale" che segue alcuni dei principi di OOP, quindi i due non sono necessariamente opposti.

La tua comprensione crescerà davvero quando imparerai altri linguaggi di programmazione orientati agli oggetti, tra cui PHP è un "nuovo bambino sul blocco".

Ecco una rapida panoramica di ciò che imparerai mentre costruisci esperienza:

    È possibile scrivere codice sorgente PHP che svolge attività utili
    È possibile organizzare attività utili in "blocchi" di codice
    Puoi pensare a "blocchi" di codice indipendentemente dai singoli file in cui sono salvati
    A volte quei "pezzi" di codice si comporteranno in modo diverso in base ai parametri passati
    Pezzi di codice che accettano parametri sono chiamati "Funzioni"
    Le funzioni possono essere "raggruppate" insieme e ci sono diversi modi per farlo:
        Ad esempio: potresti avere un solo grande file PHP con tutte le funzioni che hai mai scritto in tutta la tua vita, elencate in ordine alfabetico per nome della funzione
        Ad esempio: potresti avere più file PHP con funzioni che sono raggruppate per argomento [ad esempio, funzioni per la manipolazione di stringhe di base, funzioni per l'elaborazione di array, funzioni per input / output di file, ecc.]
    OOP è un modo speciale di "chunking" Funzioni insieme in una "Classe"
    Una classe è solo un altro livello di codice "chunking" insieme in modo da poterlo trattare come un tutto unificato

    Una classe può essere pensata come un "blocco" di metodi e proprietà
        i metodi sono semplicemente funzioni che sono logicamente correlate tra loro in qualche modo significativo. Le parole "metodo" e "funzione" sono sostanzialmente due termini diversi per la stessa cosa.
        le proprietà sono semplicemente valori di dati correlati alla classe. Si tratta di valori intenzionalmente non isolati rispetto a qualsiasi singola funzione, poiché più di una delle funzioni della classe dovrebbe avervi accesso.
            Ad esempio: se la tua classe ha un sacco di metodi per fare l'astronomia, le proprietà della classe potrebbero essere i valori di alcuni numeri famosi che tutti i metodi di astronomia devono conoscere (come Pi, la velocità della luce, la distanza tra pianeti specifici, eccetera.).
        È qui che la maggior parte delle spiegazioni di OOP diventano confuse perché si ramificano in "esempi del mondo reale" che possono rapidamente diventare fuori tema. Spesso, il "mondo reale" è un eufemismo per le prospettive ontologiche di un particolare individuo. Questo tende ad essere utile solo quando hai già capito abbastanza bene il concetto da insegnarlo a qualcun altro.
        Per capire OOP senza confusione, puoi saltare gli esempi del "mondo reale" per ora e concentrarti solo sul codice. Una classe è semplicemente un modo per memorizzare funzioni (aka metodi) e proprietà (aka dati) come codice PHP in uno o più "blocchi" correlati in cui ogni singolo "blocco" tratta un argomento specifico o un pezzo di funzionalità. Questo è tutto ciò che devi sapere per iniziare.

    Una classe è utile perché ti consente di organizzare il tuo codice a un livello molto alto in modo da renderti facile da capire, usare e mantenere.
    Quando qualcuno ha scritto molte funzioni, le ha organizzate in molte Classi e le ha fatte lavorare insieme in un modo interessante, impacchettano tutto insieme e lo chiamano "Framework".
    Un Framework è solo il livello più alto di "blocco" successivo (compresi lo stile di codifica e le convenzioni) su cui una o più persone concordano perché a loro piace il modo in cui il codice è organizzato e si adatta al loro stile di lavoro, preferenze, valori, piani per il mondo dominio, ecc.


---

Penso che il malinteso più comune su OOP sia che dovrebbe rendere molto più semplice la scrittura di software. Ecco da dove provengono alcune critiche, perché quando si scrive un software, OOP spesso significa più e talvolta anche meno codice naturale. Questo è ciò che rende difficile vedere i vantaggi di OOP, poiché tutti coloro che iniziano a programmare scrivono solo nuovi programmi e non devono mai mantenere quelli esistenti.

Tuttavia, il vero vantaggio di OOP mostra solo quando è necessario mantenere il software nel corso degli anni, cambiando costantemente parti del programma in modi che nessuno si aspettava al momento della prima scrittura.

OOP dovrebbe essere un modo per assicurarsi che le modifiche locali al software rimangano locali e non influenzino il resto del programma. In questo senso le classi sono una sorta di segnaposti espliciti per i cambiamenti futuri. In un programma procedurale è spesso difficile capire dove è necessario modificare il codice per aggiungere una funzionalità completamente nuova, senza influenzare nient'altro.

Sicuramente puoi scrivere programmi procedurali che sono anche estensibili, ma devi pensarci e progettarlo correttamente. OOP ti dà un'idea generale di come i programmi possono essere strutturati per mantenerli mantenibili, il che significa che non devi pensare così tanto alla progettazione! Lo stesso vale per altri paradigmi di programmazione, OOP non è necessariamente il più comune in questo momento.

Quindi, in conclusione, penso che l'unico modo per capire veramente OOP sia cambiare e aggiungere funzionalità al software esistente. Questo è comunque il compito più comune per i programmatori e dovrebbe essere facile! Non avere un buon design lo rende più difficile di quanto deve essere.

Questo tipo di difficoltà rende difficile rispondere alla tua domanda, poiché qualsiasi progetto può beneficiare di OOP se è abbastanza complesso e deve essere mantenuto ed espanso. Penso che i progetti che possono avere un numero qualsiasi di funzionalità impreviste, tali giochi o robot sarebbero dei buoni esempi. Puoi anche lavorare su un programma open source, che è in generale il modo migliore per esercitarsi nella programmazione avanzata.