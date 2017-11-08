# CorsoDiLatex
[![Build Status](https://travis-ci.org/R-and-LaTeX/CorsoDiLatex.svg?branch=master)](https://travis-ci.org/R-and-LaTeX/CorsoDiLatex)

Slide sul corso di LaTeX tenuto all'Università degli studi di Padova da  [Emanuele Carraro](https://github.com/EmanueleC), [Davide Polonio](https://github.com/Polpetta) e [Marco Zanella](https://github.com/mzanella).
Potete scaricare [i pdf delle slide nella sezione delle release.](https://github.com/R-and-LaTeX/CorsoDiLatex/releases)

## Altri riferimenti utili

L'altro materiale del corso è disponibile ai seguenti indirizzi:
- [Guida Galattica per LaTeX](https://github.com/R-and-LaTeX/GuidaGalatticaPerLaTeX)
- [Mini corso di due lezioni su R](https://github.com/R-and-LaTeX/CorsoDiR)
- [Tema usato per la creazione delle slide](https://github.com/R-and-LaTeX/UnipdTheme)


## Clonazione

Il repository utilizza sottomoduli. Per clonare correttamente il repository il comando da dare da terminale è:
```sh
git clone git@github.com:R-and-LaTeX/CorsoDiLatex.git --recursive
```

## Compilazione
Le slide del corso si compilano usando `Makefile` su Linux. Altri ambienti non sono supportati/non si sa se funzionino correttamente.
Dirigersi nella `root` del progetto e dare, per compilare tutte le slide, il comando:
```sh
make -B
```

### Compilazione separata
Ogni pacco di slide può essere compilato separatamente, per velocizzare il processo di sviluppo. Se per esempio si vuole compilare solo il primo pacco di slide, il comando da dare è:
```sh
make -B 1-Introduzione/
```
**Importante**: specificare la slash (/) alla fine del nome della cartella o il make fallirà.

### Norme di progetto
Durante lo sviluppo son state seguite le seguenti regole (che vi invitiamo a rispettare anche per la sanità mentale dei posteri):
- Ogni riga ha massimo 80 colonne, non deve superare questa lunghezza
- Ogni pacco di slide deve risiedere su una cartella separata (obbligatorio ai fini della compilazione con `make`)
- Il documento deve compilare con `latexmk -pdf`, in quanto è il comando segreto che `make` utilizza (niente magia nera)
- Ogni pacco di slide è organizzato nella seguente maniera:
  - Un file principale che raccoglie le configurazioni generiche del documento (packages, comandi)
  - Un file per slide o per argomento, da raccogliere in una sottocartella
  - Una cartella separata per immagini e contenuti vari
  

## Risultati questionario di valutazione del corso

Totale delle risposte sulla valutazione finale del corso: 16

Totale iscritti sul moodle del corso: 89

![alt_text](https://raw.githubusercontent.com/R-and-LaTeX/CorsoDiLatex/risultati_questionario/Q1.png)
![alt_text](https://raw.githubusercontent.com/R-and-LaTeX/CorsoDiLatex/risultati_questionario/Q2.png)
![alt_text](https://raw.githubusercontent.com/R-and-LaTeX/CorsoDiLatex/risultati_questionario/Q3.png)
![alt_text](https://raw.githubusercontent.com/R-and-LaTeX/CorsoDiLatex/risultati_questionario/Q4.png)
![alt_text](https://raw.githubusercontent.com/R-and-LaTeX/CorsoDiLatex/risultati_questionario/Q5.png)
![alt_text](https://raw.githubusercontent.com/R-and-LaTeX/CorsoDiLatex/risultati_questionario/Q6.png)
![alt_text](https://raw.githubusercontent.com/R-and-LaTeX/CorsoDiLatex/risultati_questionario/Q7.png)
![alt_text](https://raw.githubusercontent.com/R-and-LaTeX/CorsoDiLatex/risultati_questionario/Q8.png)
![alt_text](https://raw.githubusercontent.com/R-and-LaTeX/CorsoDiLatex/risultati_questionario/Q9.png)
![alt_text](https://raw.githubusercontent.com/R-and-LaTeX/CorsoDiLatex/risultati_questionario/Q10.png)

### Consigli:
Avere molteplici tutor è sicuramente positvo, il planning incrementale degli argomenti da affrontare andrebbe rivisitato rifinendolo adottando magari un approccio "running example" o "running project", legando così una lezione ad un'altra. Spiegare meglio il significato e l'uso di tutti i comandi, anche i più elementari: a volte sono stati calati dall'alto delle slide con la direttiva della copiatura, cosi facendo si ottiene un risultato ottimale istantaneo da parte degli alunni, ma nel lungo periodo essi tendono a dimenticare l'utilità o il corretto utilizzo di un determinato comando. Nonostante queste piccole accortezze da rivedere, l'organizzazione generale è stata buona, considerando essere la prima erogazione dell'insegnamento. Per gli studenti informatici che non conoscono il linguaggio ritengo praticamente obbligatoria la frequentazione, magari spostando il corso a fine secondo anno in prospettiva degli svariati progetti che verranno tenuti nel terzo anno, nei quali è essenziale avere una conoscenza di LaTeX per la redazione della documentazione necessaria.

---

Consiglierei di proporre il corso al cdl in fisioterapia a fine del secondo anno a giugno, in modo che sia più facile mantenere una presenza che a causa del tirocinio dovete avere notato essere stata abbastanza carente. 

---

Approfondire di più qualche aspetto

---

Un orario più felice per erogare un corso.

---

Boh, col tempo che c'era è stato fatto quello che si poteva 

---

Nonostante alcuni passaggi delle spiegazioni non siano stati particolarmente chiari, c'è stata sempre piena disponibilità in spiegazioni ulteriori. Positivo il fatto che ci fossero tre "insegnanti" di modo che mentre uno spiegasse, altri due giravano per l'aula ad ascoltare ed esaudire i dubbi e le richieste dei presenti. Per migliorare il corso aumenterei il monte ore, in modo da poter andare più lentamente nelle spiegazioni di alcuni concetti/comandi più complessi per farli capire in modo più approfondito.

---

Migliorare un po' l'organizzazione generale.

---

Malus: regolarizzarlo per assumere CFU Note positive: l'umorismo, essere informali, gli esercizi dopo ogni pezzo di teoria. 

---

Fare più esercizi vedendo le soluzioni insieme, lasciando il giusto tempo per provare a farli da soli. Far trascorrere troppo tempo tra i vari esercizi può far diminuire l'interesse e l'attenzione. Apprezzata molto comunque la disponibilità.

---

Non ho nulla da criticarvi, continuate esattamente così come avete fatto!

---

Vorrei durasse di più così da poter approfondire alcuni argomenti 

---

- Miglior gestione dei tempi;
- Migliorare la spiegazione di alcune tematiche, soprattutto sui comandi

---

Più pratica assistita dai docenti

---

Va bene così

---

Io sinceramente la prima lezione la farei più facile, quella dove avete fatto scrivere hello world per capirci, per il resto vi ringrazio per il corso, mi è stato molto utile
