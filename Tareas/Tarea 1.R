Datos <- ("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
informacion <- read.csv(Datos)
H.media <- subset(informacion, informacion$Altura <= mean(informacion$Altura))


#  Funcion Altura --------------------------------------------------------

mean (informacion$Altura)
H.16 <- subset(informacion, informacion$Altura <= 16.5)


#  Funciones -------------------------------------------------------------
Vecinos.3 <- subset(informacion, informacion$Vecinos <= 3)
Vecinos.4 <- subset(informacion, informacion$Vecinos > 4)


#  Funcion Diametro ------------------------------------------------------
DBH.media <- subset(informacion, informacion$Diametro < mean(informacion$Diametro))
DBH.16 <- subset(informacion, informacion$Diametro > 16)


# Funcion variable especie ----------------------------------------------
Cedro <- subset(informacion, informacion$Especie == ("C"))
Tsuga.Douglasia <- subset(informacion, informacion$Especie !=("C"))


# Elaboracion de Histogramas --------------------------------------------
hist(informacion$Altura,col = "pink")
hist(H.media$Altura, col = "blue")
hist(H.16$Altura,col = "red")
hist(informacion$Vecinos,col = "orange")
hist(Vecinos.3$Vecinos, col = "purple")
hist(Vecinos.4$Vecinos, col = "green")
hist(informacion$Diametro, col = "yellow")
hist(DBH.media$Diametro,col = "brown")
hist(DBH.16$Diametro, col = "gray")


#  Media y Desviacion estandar -------------------------------------------
mean(informacion$Altura)
sd(informacion$Altura)

#  ALTURA . MEDIA 13.9432     SD 2.907177  --------------------------------


mean(H.media$Altura)
sd(H.media$Altura)

# H. media      MEDIA 11.53125   SD 1.74653 -------------------------------


mean(informacion$Vecinos)
sd(informacion$Vecinos)

# VECINOS   MEDIA 3.34    SD 1.598596 -------------------------------------


mean(Vecinos.3$Vecinos)
sd(Vecinos.3$Vecinos)

# VECINOS. 3  MEDIA 2.115385     SD 1.070586 ------------------------------


mean(Vecinos.4$Vecinos)
sd(Vecinos.4$Vecinos)

# VECINOS 4  MEDIA 5.454545   SD 0.522233 ---------------------------------


mean(informacion$Diametro)
sd(informacion$Diametro)

# DIAMETRO  MEDIA 15.794  SD 3.227017 -------------------------------------


mean(DBH.media$Diametro)
sd(DBH.media$Diametro)

# DBH  MEDIA 13.256  SD 2.098627 ------------------------------------------


mean(DBH.16$Diametro)
sd(DBH.16$Diametro)

# DBH.16  MEDIA 18.4375  SD 1.815588 --------------------------------------


