##########################################################################################################
# Author: ADI Junior																					 #
# Date : August, 15th 2021  - 00:43																		 #
# Name : PracticeR																					     #
# Description : R code for practicing  Data Analysis / Data Science / Machine Learning /				 #
# R version 4.0.3 																					     #																					 #
# source the code to be executed. E.g : source("C:\\R\\tuto\\adi-stat-desc.R"); ls()					 #	
# Or copy and paste in R terminal console to be executed		            							 #	
##########################################################################################################
#
# destruction des donnees existantes ou preexistantes
rm(list=ls(all=TRUE))
#####################################################
# LES DONNEES
# Importation ou chargement ou Assignations ou affectations + saisie + sauvegarde possibles
surface <- c(28,50,55,60,48,35,86,65,32,52)
prix <- c(130,280,268,320,250,250,350,300,155,245)
x=surface
y=prix
df <- data.frame(surface,prix)
donnees <- data.frame(x,y)

##### STATISTIQUE DESCRIPTIVE ET INFERENTIELLE
# droite de regression
## 1. de x en y
reg_xy <- coef(lm(donnees$x~donnees$y))
## 2. de y en x
reg_yx <- coef(lm(donnees$y~donnees$x))

# Otenir les valeurs Intersect (ordonnee origine) et r (pente ou poids ou coefficient d'ajustement) 
## du resultat reg_yx
### transformer en dataFrame avant de faire les manipulations plus aisément
df_yx <- data.frame(reg_yx)

# Intersect ou ordorig (située à l'indice 1 de reg_yx)
intersect <- df_yx$reg_yx[1]

# coefficient de regression r ou r_coeff (situé à l'indice 2 de reg_yx)
r_coeff <- df_yx$reg_yx[2]

# equation de la droite de regression
#
# plusieurs façons de l'afficher
#
# affichage propre a R
# cat("La droite de regression lineaire est:\n y = ",df_yx$reg_yx[2],"x+",df_yx$reg_yx[1],"\n")
# paste("La droite de regression lineaire est\n y = ",df_yx$reg_yx[2],"x+",df_yx$reg_yx[1])
# paste0("La droite de regression lineaire est y = ",df_yx$reg_yx[2],"x+",df_yx$reg_yx[1])
# cat("La droite de regression lineaire est y = ",df_yx$reg_yx[2],"x+",df_yx$reg_yx[1])
#
# affichage propre a C/C++ 
# utilisez les formats %f, %e, %g ou %a pour les objets numériques
# sprintf("La droite de regression lineaire est:\n y = %f x + %f",r_coeff,intersect)
# sprintf("La droite de regression lineaire est:\n y = %fx + %f",r_coeff,intersect) # remarquer l'espacement entre %f et x
sprintf("La droite de regression lineaire est: y = %fx + %f",r_coeff,intersect)



















# function to calculate regression coefficient
#
#twosam <- function(y1, y2) {
#    n1  <- length(y1); n2  <- length(y2)
#    yb1 <- mean(y1);   yb2 <- mean(y2)
#    s1  <- var(y1);    s2  <- var(y2)
#    s <- ((n1-1)*s1 + (n2-1)*s2)/(n1+n2-2)
#    tst <- (yb1 - yb2)/sqrt(s*(1/n1 + 1/n2))
#    tst
#  }
#
#
# call of the function
#
# twosam(y,x)