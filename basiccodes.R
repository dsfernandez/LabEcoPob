#Variacion Poblacional
#Analisis de Datos con códigos básicos

#Matriz de Datos
#leer datos csv
#usar head


#Estadísticas descriptivas
aggregate(L~arbol, varpobtest, mean)
aggregate(masa~arbol, varpobtest, mean)

#Histogramas con dist. normal
x<-varpobtest$L
h<-hist(x, plot=F)
hist(x, freq=F)
curve(dnorm(x, mean=mean(x), sd=sd(x)), add=T)

#Prueba de hipótesis - t
arbol13 <- varpobtest[c(1:15, 48:54), ]
arbol13
t.test(L~arbol, arbol13)
t.test(masa~arbol, arbol13)


#Regresión masa x L
line <- lm(arbol13$L~arbol13$masa)
plot(arbol13$masa,arbol13$L)
abline(line)
