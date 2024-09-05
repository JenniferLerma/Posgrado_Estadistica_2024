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
DBH.mean <- subset(informacion, informacion$Diametro < mean(informacion$Diametro)
DBH.16   <- subset(informacion, informacion$Diametro > 16)
