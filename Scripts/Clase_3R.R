
# Ejercicio datos de madera MET -------------------------------------------


# Importar Datos ----------------------------------------------------------

url<-"https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv"

madera <- read.csv(url, header = T)


# Establecer hipotesis  ---------------------------------------------------
# Ho ----------------------------------------------------------------------
# H1 ----------------------------------------------------------------------
Existe una diferencia significativa en la variable de las especies.

# Representacion de una inspeccion gráfica  ----------------------------------------
boxplot(madera$Peso_g ~ madera$Especie,
     xlab = "Niveles de factor",
     ylab = "Peso (gr)",
     col  = "pink")


# Estadisticas descriptivas de la variable  -------------------------------
tapply(madera$Peso_g, madera$Especie, mean)
tapply(madera$Peso_g, madera$Especie, var)
#La varianza del peso de la especie Gavia es 7 veces mayor que
#la varianza de el peso de la Barreta.

# Cuantos niveles de factor tenemos ? -------------------------------------
#Existen dos niveles de factor "Especies": Barreta y Gavia"


# Realizar la prueba de t, asi como revisar si los supuestos y hom --------
shapiro.test(madera$Peso_g)
bartlett.test(madera$Peso_g ~ madera$Especie)
madera$peso_t <- log10(madera$Peso_g + 1)
tapply(madera$peso_t, madera$Especie, var)
boxplot(madera$peso_t ~ madera$Especie)

t.test(madera$Peso_g ~ madera$Especie, var.equal = F)

# Que Hipotesis se acepta ? -----------------------------------------------


