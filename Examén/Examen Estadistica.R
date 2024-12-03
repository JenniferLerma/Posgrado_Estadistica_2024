#Jennifer Janeth Lerma Treviño 
#Matricula : 1871909
#Examen Estadística 

# Código pregunta 15 y 16 
set.seed(42)
n <- 30 
altura <- rnorm(n, mean = 170, sd, = 10)
peso <- 0.5 * altura + rnorm(n, mean = 170, sd = 10)
t.test(altura, peso)

#Respuesta preg. 15 : (d) Prueba de T para muestras dependientes 
#Respuesta preg. 16 : (b) Se acepta la hipotesis alternativa 

# Código pregunta 17 y 18 
set.seed(42)
n <- 30 
altura <- rnorm(30, mean = 170, sd = 5)
peso <- 0.5 * altura + rnorm (30, mean = 0, sd = 5)
cor.test(altura, peso)

#Respuesta preg. 17. (c) evaluar la relación lineal entre dos variables cuantitativas
#Respuesta preg. 18. (e) hay una correlacion positiva moderada entre la altura y peso 

# Código preguntas 19 y 20 

# Datos de ejemplo 
set.seed(25)
n<-(40)

diam_arboles <- rnorm(n, mean = 20, sd = 5)
altura_arboles <- 1.5 * diam_arboles + rnorm(n, mean= 0, sd= 3)


# Crear un data frame  ----------------------------------------------------


datos <- data.frame(diam_arboles, altura_arboles)
lm(datos)

# Respuesta pregunta 19 y 20 ----------------------------------------------

#Respuestas preg. 19 : 2.1209
#Respuestas preg. 20 : 0.6035 

