#Primer trabajo practico de econometria 1 - Modelos de regresion multiple 

#Integrantes del equipo:
#Federico Tome
#Pongan sus nombres equipo
#Pongan sus nombres equipo
#Pongan sus nombres equipo
#Pongan sus nombres equipo

#Instalacion de paquetes(ejecutar una sola vez en la consola)
#install.packages ("readxl")

#Empezamos por cargar el paquete para levantar los datos del libro de excel.
library(readxl)

#Cargamos los datos del libro a un objeto llamado df (dataframe)
df = read_excel("01. Econometría - Trabajo Práctico n° 1 - Base de datos (2C 2025).xlsx")

#Revisamos la composicion y caracteristicas de nuestra base de datos
#Nombres de columnas
names(df)
#Resumen estadistico basico
summary(df)

#Estimamos el modelo de enunciado. El modelo lo asiganamos al objeto llamado m1 (modelo 1).
#Un modelo que explique valores del I.P para productos farmaceuticos (columna P)
#en funcion de el PIB per capita (columna GDPN)
#y el volumen de consumo per capita (columna CVN)
m1 = lm(P ~ GDPN + CVN, data = df)

#Veamos los resulatados del modelo estimado (coeficientes estimados, errores estandard,
#t-tests,R^2 y F-test)
summary(m1)