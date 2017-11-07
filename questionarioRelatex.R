#!/usr/bin/env Rscript

f = function(a, name, scale, path, i) {

    png(filename=sprintf("%s/Q%s.png", path, i))
    xx <- barplot(
        a,
        main=sprintf("%s", name),
        ylim=c(0, scale),
        #names.arg=c(1,2,3,4,5,6,7,8,9,10),
	#cex.lab=2,	
	#cex.axis=2,
	#cex.names=2,
	#cex.main=2
    )
    z = (1:length(a))
	if(i == 7 || i == 3)
		z = c ("Sì", "No")
	text(x = xx, y = a, label = a, pos = 3, cex = 0.8, col = "blue")
	axis(1, at=xx, labels=z)
    dev.off()
}

g = function (dati, path) {

	name = c("Quanto ti è piaciuto il corso?",
	"Quanto ritieni utile il corso?",
	"Lo consiglieresti ad un tua/o amica/o?",
	"Quanto del corso hai frequentato?",
	"Quanto sono state chiare le lezioni?",
	"Che livelli di difficoltà hai trovato?",
	"Siamo stati abbastanza disponibili ad aiutare la gente?",
	"Quanto è stato chiaro il materiale didattico?",
	"Quanto difficili sono stati gli esercizi?",
	"Quanto abbiamo motivato gli studenti?",
	"Cosa suggeriresti per migliorare il corso?")

	cols=ncol(dati)-1
	rows=nrow(dati)

	for(i in 1:cols) {
		tmp = 10
		if(i == 7 || i == 3)
			tmp = 2
		a = rep(0, tmp)
		for(j in 1:rows) {
			a[dati[j,i]] = a[dati[j,i]] + 1
		}
		f(a, name[i], max(a) + 5, path, i)
	}

}

h = function(a, b, c, d, name, scale, path, filename) {     
    png(filename=sprintf("%s/%sGraph.png", path, filename))
    xx <- barplot(
        c(a, b, c, d),
        main=sprintf("%s", name),
        col=c("lightsteelblue3", "brown3", "chartreuse4", "darkgoldenrod1"),
        ylim=c(0, scale),
        names.arg=c("Azure", "Google", "Imagga", "Watson"),
	cex.axis=2,
	cex.names=2,
	cex.main=2
    )
    text(x = xx, y = c(a,b,c,d), label = c(a,b,c,d), pos = 3, cex = 2)
    dev.off()
}

i = function(dati, path) {
    rows=nrow(dati)
    
    name="At least one match"
    filename = "AtLeastOneMatch"
    h(dati[1,4], dati[2,4], dati[3,4], dati[4,4], name, 150, path, filename)
    
    name="Complete match"
    filename="CompleteMatch"
    h(dati[1,5], dati[2,5], dati[3,5], dati[4,5], name, 150, path, filename)
}

args = commandArgs(trailingOnly=TRUE)
if (length(args)==0) {
    stop("At least two argument must be supplied (file with data and path to" + 
    	"save graphs).n", call.=FALSE)
} else {
    dati = read.csv(args[1], header=TRUE)
    g(dati, args[2])
    #lapply(dati[10], write, "Q11.txt")
    #write(as.data.frame(do.call(rbind, dati[11])), "Q11.txt")
    vectorElements <- unlist(dati[11])
	#vectorPaths <- names(vectorElements)
	#vectorRows <- paste(vectorPaths, vectorElements)
	write.table(vectorElements, sprintf("%s/consigliPerIlCorso.txt", args[2]), 
		row.names = FALSE, col.names = FALSE, quote = FALSE, eol="\n\n")
}

