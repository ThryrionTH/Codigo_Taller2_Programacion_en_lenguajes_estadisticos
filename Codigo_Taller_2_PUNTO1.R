#Taller 2
#Programacion en lenguajes estadisticos
#Ronald Mateo Ceballos Lozano

#1. Implementar un programa con las siguientes opciones:

#A. Exportar el conjunto de datos gapminder en formato “xlsx”. El 10 %
#de los valores de las columnas "lifeExp", "pop", y "gdpPercap" se debe
#reemplazar de forma aleatoria por valores no asignados NA.

#Instalar y Cargar libreria "gapminder"
install.packages("gapminder")
library(gapminder)

#Instalar y Cargar libreria "writexl" o "openxlsx" para exportar archivos en
#formato (.xlsx)

install.packages("writexl")
library(writexl)

install.packages("openxlsx")
library(openxlsx)

#Verificar el numero de datos de las columnas "lifeExp", "pop" y "gdpPercap"
length(gapminder$lifeExp)
length(gapminder$pop)
length(gapminder$gdpPercap)

#Indicar por medio de indices los valores NA a reemplazar
indices = sample(1:1704,170)

#Aplicar los valores NA a cada columna y rectificar que se cumpla en cada una

gapminder$lifeExp[indices] = NA
gapminder$lifeExp

gapminder$pop[indices] = NA
gapminder$pop

gapminder$gdpPercap[indices] = NA
gapminder$gdpPercap

#Verificar si "gapminder" contiene los valores NA
is.na.data.frame(gapminder)

#Una vez comprobado se utiliza las siguientes herramientas para exportar en .xlsx

#Para la libreria "writelx"
#Se guarda el archivo con el nombre "archivo1.xlsx"
write_xlsx(gapminder, "archivo1.xlsx")

#Para la libreria "openxlsx"
#Se guarda el archivo con el nombre "archivo1.xlsx"
write.xlsx(gapminder, "archivo1.xlsx")

#B. Importar el archivo gapminder en formato “xlsx”.

#Para poder leer el archivo .xlsx generado se necesita instalar y cargar la libreria:
install.packages("readxl")
library(readxl)

#Para localizar nuestro archivo usamos el siguiente comando, donde nos
#aparecera una ventana de windows y alli buscaremos la ruta de nuestro archivo

file.choose()

#Una vez hemos obtenido la ruta del archivo la introducimos en una variable nueva
#NOTA: REEMPLAZAR LA RUTA USADA ABAJO, POR LA RUTA DEL ARCHIVO UBICADA EN EL NUEVO DISPOSITIVO

datos_gapminder_excel <- "C:\\Users\\RONALD\\Documents\\UNAL 2022\\Programacion en Lenguajes Estadisticos\\Taller 2\\archivo1.xlsx"

#Luego creamos una nueva variable que pueda codificar los datos del archivo y traerlos a R
#con la opcion "read_excel"

datos_importados <- read_excel(datos_gapminder_excel)

#C. Graficar el diagrama de dispersion lifeEx vs pop
plot(datos_importados$pop, datos_importados$lifeExp)

#D. Graficar el diagrama de dispersion gdpPercap vs pop
plot(datos_importados$pop, datos_importados$gdpPercap)

#E. Graficar los diagramas de cajas de la variable gdpPercap discriminados por continentes desde 1990 a 2007.

#Instalar y Cargar la libreria "dplyr"
install.packages("dplyr")
library(dplyr)

#Filtrar los datos desde los años 1990 a 2007
datos_filtrados = datos_importados %>% filter(year > 1990)

#Crear la grafica de cajas de la variable "gdpPercap"

boxplot(gdpPercap ~ continent, data = datos_filtrados)
