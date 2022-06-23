#Taller 2
#Programacion en lenguajes estadisticos
#Ronald Mateo Ceballos Lozano

#2. Implementar un programa con las siguientes opciones:

#Instalar y Cargar la libreria "readr", para importar y leer los formatos .csv.
install.packages("readr")
library(readr)

#A. Cargar dos archivos de datos en formato “csv” llamados “Experimento a.csv”
#y “Experimento b.csv” e indicar si la diferencia en la
#media de los datos es estad´ısticamente significativa.

#Para localizar nuestro archivo usamos el siguiente comando, donde nos
#aparecera una ventana de windows y alli buscaremos la ruta de nuestro archivo

file.choose()

#Una vez hemos obtenido la ruta del archivo la introducimos en una variable nueva
#NOTA: REEMPLAZAR LA RUTA USADA ABAJO, POR LA RUTA DEL ARCHIVO UBICADA EN EL NUEVO DISPOSITIVO

ruta_csv_a <- "C:\\Users\\RONALD\\Documents\\UNAL 2022\\Programacion en Lenguajes Estadisticos\\Taller 2\\Experimento_a.csv"

experimento_a <- read_csv2(ruta_csv_a)

ruta_csv_b <- "C:\\Users\\RONALD\\Documents\\UNAL 2022\\Programacion en Lenguajes Estadisticos\\Taller 2\\Experimento_b.csv"

experimento_b <- read_csv2(ruta_csv_b)

#Media de Experimento_a
mean(experimento_a$Temperatura)
mean(experimento_a$Bacterias)

#Diferencia de media en el Experimento_a
dife_mean_a <- mean(experimento_a$Temperatura) -- mean(experimento_a$Bacterias)
dife_mean_a

#Media de Experimento_b
mean(experimento_b$Humedad)
mean(experimento_b$Temperatura)

#Diferencia de media en el Experimento_a
dife_mean_b <- mean(experimento_b$Humedad) - mean(experimento_b$Temperatura)
dife_mean_b

#B. Cargar dos archivos de datos en formato “csv” llamados “Experimento a.csv” 
#y “Experimento b.csv” y mostrar en pantalla la correlacion
#de Pearson y Spearman de los datos.

#Para localizar nuestro archivo usamos el siguiente comando, donde nos
#aparecera una ventana de windows y alli buscaremos la ruta de nuestro archivo

file.choose()

#Una vez hemos obtenido la ruta del archivo la introducimos en una variable nueva
#NOTA: REEMPLAZAR LA RUTA USADA ABAJO, POR LA RUTA DEL ARCHIVO UBICADA EN EL NUEVO DISPOSITIVO

ruta_csv_a <- "C:\\Users\\RONALD\\Documents\\UNAL 2022\\Programacion en Lenguajes Estadisticos\\Taller 2\\Experimento_a.csv"

experimento_a <- read_csv2(ruta_csv_a)

ruta_csv_b <- "C:\\Users\\RONALD\\Documents\\UNAL 2022\\Programacion en Lenguajes Estadisticos\\Taller 2\\Experimento_b.csv"

experimento_b <- read_csv2(ruta_csv_b)

#Ahora usamos el metodo de correlacion de Pearson para el experimento_a
cor(x = experimento_a$Temperatura, y=experimento_a$Bacterias)

#Ahora usamos el metodo de correlacion de Spearman para el experimento_a
cor(x = experimento_a$Temperatura, y=experimento_a$Bacterias, method = "spearman")

#Ahora usamos el metodo de correlacion de Pearson para el experimento_b
cor(x = experimento_b$Temperatura, y=experimento_b$Humedad)

#Ahora usamos el metodo de correlacion de Spearman para el experimento_b
cor(x = experimento_b$Temperatura, y=experimento_b$Humedad, method = "spearman")

#C. Cargar dos archivos de datos en formato “csv” llamados“Experimento a.csv”
#y “Experimento b.csv” y graficar el diagrama de dispersion y la linea
#recta que aproxime los datos calculada por una regresion lineal por
#minimos cuadrados.

#Para localizar nuestro archivo usamos el siguiente comando, donde nos
#aparecera una ventana de windows y alli buscaremos la ruta de nuestro archivo

file.choose()

#Una vez hemos obtenido la ruta del archivo la introducimos en una variable nueva
#NOTA: REEMPLAZAR LA RUTA USADA ABAJO, POR LA RUTA DEL ARCHIVO UBICADA EN EL NUEVO DISPOSITIVO

ruta_csv_a <- "C:\\Users\\RONALD\\Documents\\UNAL 2022\\Programacion en Lenguajes Estadisticos\\Taller 2\\Experimento_a.csv"

experimento_a <- read_csv2(ruta_csv_a)

ruta_csv_b <- "C:\\Users\\RONALD\\Documents\\UNAL 2022\\Programacion en Lenguajes Estadisticos\\Taller 2\\Experimento_b.csv"

experimento_b <- read_csv2(ruta_csv_b)

#Instalar y Cargar las libreria "ggplop2"
install.packages("ggplot2")
library(ggplot2)

#Crear grafica de dispersion del archivo experimento_a
ggplot(data = experimento_a, aes(x= Temperatura,y=Bacterias)) +geom_point()

#Analisis Descriptivo del experimento_a
summary(experimento_a)

#Estimacion por minimos cuadrados(MCO)
mco_a = lm(Temperatura ~ 1 +  Bacterias, data = experimento_a)

#Resultados de la estimacion
summary(mco_a)

#Crear grafica de dispersion del archivo experimento_b
ggplot(data = experimento_b, aes(x= Temperatura, y= Humedad)) +geom_point()

#Analisis Descriptivo del experimento_b
summary(experimento_a)

#Estimacion por minimos cuadrados(MCO)
mco_b = lm(Temperatura ~ 1 +  Bacterias, data = experimento_a)

#Resultados de la estimacion
summary(mco_b)
