Paulina Ramírez Ramírez
Práctica 0/ Tarea 1

##1.- A partir de las siguientes secuencias concatenadas de RNA que te envío como archivo adjunto en formato fasta encuentra (usando librerías especializadas) la secuencia correspondiente de aminoácidos.

library(Biostrings)
readRNAStringSet("first.fasta")
dna1<-readRNAStringSet("first.fasta")
translate(dna1)

##2.- Escoge dos problemas de la plataforma Rosalind de entre los siguientes: Counting DNA Nucleotides, Complementing a Strand of DNA, Computing GC Content, Calculating Protein Mass. Escribe un programa que resuelva los dos problemas que seleccionaste, en ambos, casos, debes buscar una solución sin usar librerías especializadas y otra con librerías especializadas.

#1Counting DNA Nucleotides

dna2<- DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")

#Calcula la frecuecnia de cada uno de los nucleótidos de dichas secuencias
alphabetFrequency(secuen, as.prob = TRUE)


#2Complementing a Strand of DNA
dna3<- DNAString("AAAACCCGGT")

#Reverso complemento, nos proporciona la secuencia complementaria de la secuencia dada.
reverseComplement(dna3)


