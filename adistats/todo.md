# FUNCTIONS

We will create all the needed functions that can be useful.
Just for fun in order to learn but to know too how things have gotten be done!

## crossproduct

Multiply the two deviation scores. This is called the crossproduct. The shapes created by the crossproduct will serve as the “squared” terms that we can then use in the next step to sum and summarize the deviations into a single value.

Trouvez l'écart par rapport à la moyenne, la différence entre x de chaque objet et xbar (moyenne de x)

## skewness

où s est l'écart type de l'échantillon. Appelez votre fonction skew. Il doit prendre un argument, un vecteur x, et renvoyer l'échantillon d'asymétrie de x. Assurez-vous de gérer les valeurs manquantes de manière appropriée. Utilisez les fonctions R intégrées mean, sum, lengthet sdpour construire votre fonction d'asymétrie. Testez votre fonction sur les handednessdonnées. Vous devriez obtenir une réponse d'environ -2,2.

## covariance

```R
# x is a vector
# y is a vector

covariance = function(x, y){

keep = !is.na(x) & !is.na(y) # TRUE FALSE ... liste booléenne selon laquelle on tentera:
x = x[keep] # d'afficher la valeur de x dont le keep est TRUE
y = y[keep] # d'afficher la valeur de y dont le keep est TRUE

n = length(x)

s.xy = sum((x - mean(x)) * (y - mean(y))) / (n-1)
return(s.xy)
}
```

## deviation

(2) Trouvez l'écart par rapport à la moyenne, la différence entre la taille de chaque girafe etx¯.

```R
deviation <- h - mean(h)
deviation
```

# variance

```R
SS <- sum(deviation^2)
variance <- SS/(length(h)-1) # Divides by N-1
```
