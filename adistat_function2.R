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
# Nettoyer toutes les variables
rm(list=ls(all=TRUE))

# la function stat

adistat<- function(n,data){
	
	N<-n
	N_corrige<- n-1
	df<- data.frame(data)
	x<- df[[1]] # d$x => x: surface
	y<- df[[2]] # d$y => y: prix
	xbar<- mean(x) # moyenne de x
	ybar<- mean(y) # moyenne de y
	t1<- x-xbar    # pour le calcul de la covariance et autre
	t2<- y-ybar    # pour le calcul de la covariance et autre
	produit<- t1*t2 # (xi-xbar)(yi-ybar)
	somme<- sum(produit) # Sigma[(xi-xbar)(yi-ybar)]
	numerateur<- somme/N # cov(x,y) = cov(y,x) = (Sigma[(xi-xbar)(yi-ybar)])/n
	numerateur_corrige<- somme/N_corrige  # cov(x,y) = cov(y,x) = (Sigma[(xi-xbar)(yi-ybar)])/(n-1)
	# covarriance
	covariance<- numerateur
	covariance_corrigee<- numerateur_corrige
	# Correlation
	coef_correlation<- numerateur/(var(x)*var(y))
	coef_correlation_corrige<- numerateur_corrige/(var(x)*var(y))
	# pente ou coefficient d'ajustement de regression de y sur x (savoir donc ce aue doit etre Y et X)
	pente<- sum(t1*y)/sum(t1^2) # (Sigma(xi-xbar)*yi)/Sigma((xi-xbar)^2)
	# Intersect ou ordonnée à l'origine
	b<- ybar-pente*xbar # bien savoir le sens de la regression => mean(y)-pente*mean(x) 
	b2<- xbar-pente*ybar # bien savoir le sens de la regression => mean(x)-pente*mean(y) 
	# AFFICHAGE DES RESULTATS
	sprintf(" ----------- COVARIANCE ----------- ")
	sprintf(" covariance = %f",covariance)
	sprintf(" covariance_corrigée = %f",covariance_corrigee)
	cat(" ----------- CORRELATION ----------- \n Le Coefficient de corrélation r est :")
	sprintf(" r = %f",coef_correlation)
	sprintf(" r_corrigé = %f",coef_correlation_corrige)
	sprintf(" Equation de la droite de régression de y(prix) sur x(surface)")
	sprintf(" y = %fx+%f", pente, b)

}


# USAGE

# Les données
surface <- c(28,50,55,60,48,35,86,65,32,52)
prix <- c(130,280,268,320,250,250,350,300,155,245)
x<- surface
y<- prix
data<- cbind(x,y)

# appel de la fonction (son execution)

n<- length(x)
adistat(n,data)




