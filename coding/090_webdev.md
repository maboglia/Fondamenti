# Slide 9: Introduzione allo Sviluppo Web 🌐

### Cos'è lo Sviluppo Web?

Lo **sviluppo web** è la creazione di siti web e applicazioni web che girano nel browser.

### I 3 Pilastri del Web

```
┌─────────────────────────────────────────┐
│   🏗️ HTML (Struttura)                   │
│   🎨 CSS (Stile)                        │
│   ⚡ JavaScript (Interattività)         │
└─────────────────────────────────────────┘
```

**Analogia Casa:**

- **HTML** = Struttura (muri, stanze, porte)
- **CSS** = Design (colori, mobili, decorazioni)
- **JavaScript** = Funzionalità (luci, riscaldamento, elettrodomestici)

### 1. HTML (HyperText Markup Language) 🏗️

#### Cos'è HTML?

Il **linguaggio di markup** che definisce la struttura e il contenuto delle pagine web.

#### Sintassi Base

```html
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>La Mia Prima Pagina</title>
</head>
<body>
    <h1>Benvenuti nel mio sito!</h1>
    <p>Questo è il mio primo paragrafo HTML.</p>
</body>
</html>
```

#### Tag HTML Fondamentali

```html
<!-- Intestazioni (h1 più importante, h6 meno importante) -->
<h1>Titolo Principale</h1>
<h2>Sottotitolo</h2>
<h3>Sezione</h3>

<!-- Paragrafi e testo -->
<p>Questo è un paragrafo di testo.</p>
<p>Il testo può essere <strong>grassetto</strong> o <em>corsivo</em>.</p>

<!-- Link -->
<a href="https://www.google.com">Vai a Google</a>
<a href="pagina2.html">Pagina interna</a>

<!-- Immagini -->
<img src="foto.jpg" alt="Descrizione della foto">

<!-- Liste non ordinate -->
<ul>
    <li>Elemento 1</li>
    <li>Elemento 2</li>
    <li>Elemento 3</li>
</ul>

<!-- Liste ordinate -->
<ol>
    <li>Primo passo</li>
    <li>Secondo passo</li>
    <li>Terzo passo</li>
</ol>

<!-- Divisioni e contenitori -->
<div class="contenitore">
    <p>Contenuto dentro un div</p>
</div>

<!-- Form -->
<form action="/submit" method="POST">
    <label for="nome">Nome:</label>
    <input type="text" id="nome" name="nome" required>
    
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>
    
    <button type="submit">Invia</button>
</form>

<!-- Tabelle -->
<table>
    <thead>
        <tr>
            <th>Nome</th>
            <th>Età</th>
            <th>Città</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Mario</td>
            <td>30</td>
            <td>Roma</td>
        </tr>
        <tr>
            <td>Anna</td>
            <td>25</td>
            <td>Milano</td>
        </tr>
    </tbody>
</table>
```

#### Esempio Completo: Pagina Profilo

```html
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Profilo - Mario Rossi</title>
</head>
<body>
    <header>
        <h1>Mario Rossi</h1>
        <p>Sviluppatore Web Full Stack</p>
    </header>
    
    <nav>
        <ul>
            <li><a href="#about">Chi Sono</a></li>
            <li><a href="#skills">Competenze</a></li>
            <li><a href="#projects">Progetti</a></li>
            <li><a href="#contact">Contatti</a></li>
        </ul>
    </nav>
    
    <main>
        <section id="about">
            <h2>Chi Sono</h2>
            <img src="profile.jpg" alt="Foto profilo Mario">
            <p>Sono uno sviluppatore appassionato di tecnologia con 5 anni di esperienza.</p>
        </section>
        
        <section id="skills">
            <h2>Competenze</h2>
            <ul>
                <li>HTML5 & CSS3</li>
                <li>JavaScript (ES6+)</li>
                <li>Python & Django</li>
                <li>React & Node.js</li>
            </ul>
        </section>
        
        <section id="projects">
            <h2>Progetti</h2>
            <article>
                <h3>E-commerce Platform</h3>
                <p>Piattaforma di vendita online con gestione inventario.</p>
            </article>
            <article>
                <h3>Blog Personale</h3>
                <p>Sistema di blogging con CMS personalizzato.</p>
            </article>
        </section>
        
        <section id="contact">
            <h2>Contattami</h2>
            <form>
                <input type="text" placeholder="Il tuo nome" required>
                <input type="email" placeholder="La tua email" required>
                <textarea placeholder="Il tuo messaggio" required></textarea>
                <button type="submit">Invia</button>
            </form>
        </section>
    </main>
    
    <footer>
        <p>&copy; 2024 Mario Rossi. Tutti i diritti riservati.</p>
    </footer>
</body>
</html>
```

### 2. CSS (Cascading Style Sheets) 🎨

#### Cos'è CSS?

Il **linguaggio di stile** che controlla l'aspetto visuale delle pagine web.

#### Modi per inserire CSS

```html
<!-- 1. CSS Inline (nel tag) -->
<p style="color: blue; font-size: 18px;">Testo blu</p>

<!-- 2. CSS Interno (nel <head>) -->
<head>
    <style>
        p {
            color: blue;
            font-size: 18px;
        }
    </style>
</head>

<!-- 3. CSS Esterno (file separato) - METODO CONSIGLIATO -->
<head>
    <link rel="stylesheet" href="styles.css">
</head>
```

#### Sintassi CSS Base

```css
/* Selettore per tag */
p {
    color: #333;
    font-size: 16px;
    line-height: 1.6;
}

/* Selettore per classe */
.bottone {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

/* Selettore per ID */
#header {
    background-color: #333;
    color: white;
    padding: 20px;
}

/* Selettori combinati */
.container .titolo {
    font-size: 24px;
    font-weight: bold;
}

/* Pseudo-classi */
a:hover {
    color: red;
    text-decoration: underline;
}

button:active {
    transform: scale(0.95);
}

/* Media queries (responsive) */
@media (max-width: 768px) {
    .container {
        width: 100%;
        padding: 10px;
    }
}
```

#### Proprietà CSS Comuni

```css
/* Colori e Sfondi */
.elemento {
    color: #ff0000;                    /* Colore testo */
    background-color: #f0f0f0;         /* Colore sfondo */
    background-image: url('bg.jpg');   /* Immagine sfondo */
}

/* Testo */
.testo {
    font-family: Arial, sans-serif;
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    text-decoration: underline;
    letter-spacing: 2px;
    line-height: 1.5;
}

/* Box Model */
.box {
    width: 300px;
    height: 200px;
    padding: 20px;        /* Spazio interno */
    margin: 10px;         /* Spazio esterno */
    border: 2px solid #000;
}

/* Posizionamento */
.posizionato {
    position: relative;   /* relative, absolute, fixed, sticky */
    top: 10px;
    left: 20px;
    z-index: 10;
}

/* Display e Layout */
.flex-container {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;
}

.grid-container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 15px;
}

/* Transizioni e Animazioni */
.animato {
    transition: all 0.3s ease;
}

.animato:hover {
    transform: scale(1.1);
    box-shadow: 0 5px 15px rgba(0,0,0,0.3);
}
```

#### Esempio Completo: Card Prodotto

```html
<div class="product-card">
    <img src="prodotto.jpg" alt="Prodotto" class="product-image">
    <h3 class="product-title">Nome Prodotto</h3>
    <p class="product-description">Descrizione breve del prodotto</p>
    <p class="product-price">€ 29.99</p>
    <button class="btn-acquista">Aggiungi al Carrello</button>
</div>
```

```css
.product-card {
    width: 300px;
    background: white;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    padding: 20px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.product-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 12px rgba(0,0,0,0.15);
}

.product-image {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-radius: 8px;
}

.product-title {
    font-size: 20px;
    font-weight: bold;
    margin: 15px 0 10px 0;
    color: #333;
}

.product-description {
    color: #666;
    font-size: 14px;
    line-height: 1.5;
    margin-bottom: 15px;
}

.product-price {
    font-size: 24px;
    font-weight: bold;
    color: #007bff;
    margin-bottom: 15px;
}

.btn-acquista {
    width: 100%;
    padding: 12px;
    background: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s ease;
}

.btn-acquista:hover {
    background: #0056b3;
}

.btn-acquista:active {
    transform: scale(0.98);
}
```

### 3. JavaScript (Interattività) ⚡

#### Cos'è JavaScript?

Il **linguaggio di programmazione** che rende le pagine web interattive e dinamiche.

#### JavaScript nel Browser

```html
<!-- Inline -->
<button onclick="alert('Ciao!')">Clicca</button>

<!-- Script interno -->
<script>
    console.log("JavaScript caricato!");
</script>

<!-- Script esterno (consigliato) -->
<script src="script.js"></script>
```

#### Manipolazione DOM (Document Object Model)

```javascript
// Selezionare elementi
const titolo = document.getElementById('titolo');
const paragrafi = document.getElementsByClassName('paragrafo');
const bottone = document.querySelector('.btn-primary');
const tuttiBotoni = document.querySelectorAll('button');

// Modificare contenuto
titolo.textContent = "Nuovo Titolo";
titolo.innerHTML = "<strong>Titolo in Grassetto</strong>";

// Modificare stili
titolo.style.color = "blue";
titolo.style.fontSize = "24px";

// Aggiungere/Rimuovere classi
bottone.classList.add('attivo');
bottone.classList.remove('disabilitato');
bottone.classList.toggle('evidenziato');

// Creare nuovi elementi
const nuovoP = document.createElement('p');
nuovoP.textContent = "Nuovo paragrafo";
document.body.appendChild(nuovoP);
```

#### Eventi

```javascript
// Click su bottone
const bottone = document.querySelector('#mio-bottone');

bottone.addEventListener('click', function() {
    alert('Bottone cliccato!');
});

// Form submit
const form = document.querySelector('form');

form.addEventListener('submit', function(e) {
    e.preventDefault();  // Previene reload pagina
    
    const nome = document.querySelector('#nome').value;
    const email = document.querySelector('#email').value;
    
    console.log(`Nome: ${nome}, Email: ${email}`);
});

// Mouse events
elemento.addEventListener('mouseover', () => {
    elemento.style.backgroundColor = 'yellow';
});

elemento.addEventListener('mouseout', () => {
    elemento.style.backgroundColor = '';
});

// Keyboard events
document.addEventListener('keypress', (e) => {
    console.log(`Tasto premuto: ${e.key}`);
});
```

#### Esempio Completo: Todo List

```html
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Todo List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
        }
        
        #todo-form {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }
        
        #todo-input {
            flex: 1;
            padding: 10px;
            font-size: 16px;
            border: 2px solid #ddd;
            border-radius: 5px;
        }
        
        #add-btn {
            padding: 10px 20px;
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        #add-btn:hover {
            background: #0056b3;
        }
        
        .todo-item {
            display: flex;
            align-items: center;
            padding: 15px;
            margin-bottom: 10px;
            background: #f8f9fa;
            border-radius: 5px;
        }
        
        .todo-item.completato {
            text-decoration: line-through;
            opacity: 0.6;
        }
        
        .todo-text {
            flex: 1;
            margin: 0 15px;
        }
        
        .delete-btn {
            background: #dc3545;
            color: white;
            border: none;
            padding: 5px 15px;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>📝 La Mia Todo List</h1>
    
    <form id="todo-form">
        <input type="text" id="todo-input" placeholder="Nuova attività..." required>
        <button type="submit" id="add-btn">Aggiungi</button>
    </form>
    
    <div id="todo-list"></div>
    
    <script>
        // Array per memorizzare i todo
        let todos = [];
        
        // Elementi DOM
        const form = document.getElementById('todo-form');
        const input = document.getElementById('todo-input');
        const todoList = document.getElementById('todo-list');
        
        // Aggiungi todo
        form.addEventListener('submit', function(e) {
            e.preventDefault();
            
            const testoTodo = input.value.trim();
            
            if (testoTodo) {
                const todo = {
                    id: Date.now(),
                    testo: testoTodo,
                    completato: false
                };
                
                todos.push(todo);
                input.value = '';
                renderTodos();
            }
        });
        
        // Renderizza lista todos
        function renderTodos() {
            todoList.innerHTML = '';
            
            todos.forEach(todo => {
                const todoDiv = document.createElement('div');
                todoDiv.className = `todo-item ${todo.completato ? 'completato' : ''}`;
                
                // Checkbox
                const checkbox = document.createElement('input');
                checkbox.type = 'checkbox';
                checkbox.checked = todo.completato;
                checkbox.addEventListener('change', () => toggleTodo(todo.id));
                
                // Testo
                const todoText = document.createElement('p');
                todoText.className = 'todo-text';
                todoText.textContent = todo.testo;
                
                // Bottone elimina
                const deleteBtn = document.createElement('button');
                deleteBtn.className = 'delete-btn';
                deleteBtn.textContent = 'Elimina';
                deleteBtn.addEventListener('click', () => deleteTodo(todo.id));
                
                todoDiv.appendChild(checkbox);
                todoDiv.appendChild(todoText);
                todoDiv.appendChild(deleteBtn);
                
                todoList.appendChild(todoDiv);
            });
        }
        
        // Toggle completamento
        function toggleTodo(id) {
            const todo = todos.find(t => t.id === id);
            if (todo) {
                todo.completato = !todo.completato;
                renderTodos();
            }
        }
        
        // Elimina todo
        function deleteTodo(id) {
            todos = todos.filter(t => t.id !== id);
            renderTodos();
        }
    </script>
</body>
</html>
```

### Frontend vs Backend

```
┌──────────────────────────────────────────┐
│  FRONTEND (Client-side)                  │
│  ┌────────┬────────┬────────────────┐   │
│  │  HTML  │  CSS   │  JavaScript    │   │
│  │        │        │  + Framework   │   │
│  └────────┴────────┴────────────────┘   │
│         ↓                                │
│   Gira nel Browser                       │
│   Visibile all'utente                    │
└──────────────────────────────────────────┘
                 ↕
┌──────────────────────────────────────────┐
│  BACKEND (Server-side)                   │
│  ┌────────────────────────────────────┐ │
│  │  Python, Node.js, PHP, Java...     │ │
│  │  Database (MySQL, MongoDB...)      │ │
│  │  API, Logica Business              │ │
│  └────────────────────────────────────┘ │
│         ↓                                │
│   Gira sul Server                        │
│   Gestisce dati e logica                 │
└──────────────────────────────────────────┘
```

### Framework e Librerie Moderne

**Frontend:**

- **React** ⚛️ - Libreria per UI componenti
- **Vue.js** 💚 - Framework progressivo
- **Angular** 🅰️ - Framework completo
- **Svelte** 🔥 - Compilatore moderno

**Backend:**

- **Node.js** (JavaScript)
- **Django/Flask** (Python)
- **Express.js** (Node.js)
- **Spring** (Java)

**Full-Stack:**

- **Next.js** - React con SSR
- **Nuxt.js** - Vue con SSR
- **MERN Stack** - MongoDB, Express, React, Node

### 💡 Primi Passi nello Sviluppo Web

1. **Impara l'HTML** - Struttura base
2. **Aggiungi CSS** - Rendi bello
3. **Introduci JavaScript** - Rendi interattivo
4. **Pratica con progetti** - Todo list, calcolatrice, form
5. **Esplora framework** - Quando sei a tuo agio con le basi

---

[Sezione WEB](https://github.com/maboglia/Fondamenti/blob/master/web/README.md)