#Taller 2
#Programacion en lenguajes estadisticos
#Ronald Mateo Ceballos Lozano

#3. Implementar un programa con las siguientes opciones:

#A. Graficar la funcion de densidad de una distribucion uniforme.

#Valores Aleatorios
#Se puede modificar en caso de que se requiera
set.seed(1234)
dist_unif <- runif(1000,10,15)

#Graficar los valores
par(mfrow = c(1,2))
hist(dist_unif, freq = FALSE)

#Graficar y Calcular la densidad de los datos
densidad_unif <- density(dist_unif)
lines(densidad_unif, lwd = 2, col = "red")
plot(densidad_unif, lwd = 2, col = "red")

#B. Graficar la funcion de densidad de una distribucion Bernoulli.

#Para realizar una distribucion Bernoulli se necesita instalar y cargar el paquete
# "Rlab"

install.packages("Rlab")
library(Rlab)

#Valores Aleatorios
#Se puede modificar en caso de que se requiera
set.seed(1234)
dist_bern <- rbern(100, 0.8)

#Graficar los valores
par(mfrow = c(1,2))
hist(dist_bern, freq = FALSE)

#Graficar y Calcular la densidad de los datos
densidad_bern <- density(dist_bern)
lines(densidad_bern, lwd = 2, col = "red")
plot(densidad_bern, lwd = 2, col = "red")

#C. Graficar la funcion de densidad de una distribucion Poisson.

#Valores Aleatorios
#Se puede modificar en caso de que se requiera
set.seed(1234)
dist_pois <- rpois(100, 2)

#Graficar los valores
par(mfrow = c(1,2))
hist(dist_pois, freq = FALSE)

#Graficar y Calcular la densidad de los datos
densidad_pois <- density(dist_pois)
lines(densidad_pois, lwd = 2, col = "red")
plot(densidad_pois, lwd = 2, col = "red")

#D. Graficar la funcion de densidad de una distribucion Exponencial.

#Valores Aleatorios
#Se puede modificar en caso de que se requiera
set.seed(1234)
dist_exp <- rexp(1000, 1/360)

#Graficar los valores
par(mfrow = c(1,2))
hist(dist_exp, freq = FALSE)

#Graficar y Calcular la densidad de los datos
densidad_exp <- density(dist_exp)
lines(densidad_exp, lwd = 2, col = "red")
plot(densidad_exp, lwd = 2, col = "red")
