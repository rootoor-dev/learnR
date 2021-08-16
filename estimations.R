##########################################################################################################
# Author: ADI Junior																					                                           #
# Date : August, 15th 2021  - 00:43																		                                   #
# Name : PracticeR | LearnR																			                                         #
# Description : R code for practicing  Data Analysis / Data Science / Machine Learning /				         #
# R version 4.0.3 																					                                             #								
# source the code to be executed. E.g : source("C:\\R\\tuto\\adi-stat-desc.R"); ls()        			       #	
# or open the script via menu, and CTRL+R to execute the instructions of this script line by line, 1by1  #
# Or copy and paste in R terminal console to be executed		            							                   #	
##########################################################################################################
#
# Supprimer toutes les variables ou tous les objets
rm(list=ls(all=TRUE))
# les donnees
K<- 10000
n<- 10
mu=0
sigma2=1
# On considère K échantillons composés de n valeurs issues de N(mu,sigma2)
# réparties sur chaque ligne de la matrice Xkn suivante
Xkn<- matrix(rnorm(n*K, mean=mu, sd=sqrt(sigma2)) , ncol=n)
# On applique la variance selon les lignes, donnant K variances
Snt<- apply(Xkn ,FUN=var ,MARGIN=1)
Sn<- (n-1)/n*Snt
# S est la version biaisée (car var utilise la variance débiaisée)
hist(Sn, nclass=30, probability=TRUE, main="Sn" , col="blue")
#la variance est décalée à n/(n-1)*sigma2=0.9
abline(v=mean(Sn) , col=" red ") ; abline(v=sigma2 , col=3)
hist(Snt , nclass=30, probability=TRUE, main="Sn '" , col="blue")
abline(v=mean(Snt) , col="red ") ; abline(v=sigma2 , col=3)