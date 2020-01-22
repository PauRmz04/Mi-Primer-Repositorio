Paulina Ramírez Ramírez
Práctica 0/ Tarea 1

##1.- A partir de las siguientes secuencias concatenadas de RNA que te envío como archivo adjunto en formato fasta encuentra (usando librerías especializadas) la secuencia correspondiente de aminoácidos.

library(Biostrings)
AAString("first.fasta")
dna1<-readRNAStringSet("first.fasta")
translate(dna1)





##2.- Escoge dos problemas de la plataforma Rosalind de entre los siguientes: Counting DNA Nucleotides, Complementing a Strand of DNA, Computing GC Content, Calculating Protein Mass. Escribe un programa que resuelva los dos problemas que seleccionaste, en ambos, casos, debes buscar una solución sin usar librerías especializadas y otra con librerías especializadas.

#1Counting DNA Nucleotides
phage2<- DNAString("CCGACCTCAGCGCAAGATGCTGTAACGAAGTCATATGCTGATGCGCTAACTAGCGGCCTTGATGTTAAGTCGAGCTGTAAAGTTGCGACGACTGCCAACATTACTTTGTCTGGCACTCAGACGATTGATGGTGTTGCAGTTTCTGCCGATGAGCGTGTGCTGGTCAAAAACCAGTCAACTGCTTCAGAGAACGGCATTTACGACTGTAAGTCTGGCAGCTGGGCACGTTCCAGTGACTTTGACAGCGATGCAGAAGTAACTTCTGGAGCGTTTACGTTTGTCGAGCAAGGCAGTGTCAACGCTGATGCTGGTTTTGTCCTGACGACTGATGGCAGCATCACTGTTGGCACAACTGCACTGAGCTTTACTCAGTTCTCTGGTGCTGGCGCAGTTACTGCTGGTGATGGCCTG")
length(phage2)

#Calcula la frecuecnia de cada uno de los nucleótidos de dichas secuencias
#Versión con los paquetes
alphabetFrequency(phage2)

#Nos indica la frecuencia de los nucleotidos presentes 

#Versión sin paquete
cadena1<-("CCGACCTCAGCGCAAGATGCTGTAACGAAGTCATATGCTGATGCGCTAACTAGCGGCCTTGATGTTAAGTCGAGCTGTAAAGTTGCGACGACTGCCAACATTACTTTGTCTGGCACTCAGACGATTGATGGTGTTGCAGTTTCTGCCGATGAGCGTGTGCTGGTCAAAAACCAGTCAACTGCTTCAGAGAACGGCATTTACGACTGTAAGTCTGGCAGCTGGGCACGTTCCAGTGACTTTGACAGCGATGCAGAAGTAACTTCTGGAGCGTTTACGTTTGTCGAGCAAGGCAGTGTCAACGCTGATGCTGGTTTTGTCCTGACGACTGATGGCAGCATCACTGTTGGCACAACTGCACTGAGCTTTACTCAGTTCTCTGGTGCTGGCGCAGTTACTGCTGGTGATGGCCTG")
secuencia1 <- strsplit(cadena1, "")
secuencia1 <- unlist(secuencia1)
tabla1 <- table(secuencia1)
tabla1

#Para este lo que se trata de hacer una separación de la cadena, por lo cual de esta manera se encuentran la cantidad de elementos por separado. Finalmente en una tabla se acomodan los valores con las repeticiones para cada elemento.

#2Computing GC Content

phages3<- DNAStringSet(c("TGATCGAGACGTTTTAACCGTAGACCCAAGCAATTTTGTTTACTCCCAAGCAAGTGGTGAACGCCTCCGC", "ATCGCTTACGCTGACTTGACCGAATCACAGGTCATCGAATGGGTCAAAACCGCTCTTGGCGGTGACGAAA", "GTCGTTCAATTCTGGATGACGCTGATGCAGCCACTGTTCGTGCAACGCTTGGCCTTGTCATTGGAACGGA", "GTCAGTGACTGGATGATCCCATGGATGCACGACGTAATACACATGCAGCAGGATGGTGCGTACCATGCAG"))
phages<- c("Phage1", "Phage2", "Phage3", "Phage4")
names(phages3) <- phages

#Contenido de GCas
#Versión con paquete
letterFrequency(phages3, "GC")

#Esta nos indica la frecuencia de las GC presentes en las secuencias con  las que se está trabajando


#Versión sin paquete
cadena2<-("TGATCGAGACGTTTTAACCGTAGACCCAAGCAATTTTGTTTACTCCCAAGCAAGTGGTGAACGCCTCCGC")
secuencia2 <- strsplit(cadena2, "")
secuencia2 <- unlist(secuencia2)
tabla2 <- table(secuencia2)
tabla2

