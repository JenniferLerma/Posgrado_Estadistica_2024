# Correlación de datos de la erupción volcanica 

library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")
summary(erupciones)

# Definir cual es la variable independiente y dependiente 
# Dependiente .. Duración de las erupciones
# Independiente .. Tiempo de espera entre las erupciones
plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración de las erupciones (min)", pch = 19, col = "blue")

# Correlación 
cor.test(erupciones$waiting, erupciones$eruptions)

# Obtención de alfa y beta 
ed.lm <- lm(erupciones$eruptions ~ erupciones$waiting)
ed.lm

# Significancia de los datos 
summary(ed.lm)

plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración de las erupciones (min)", pch = 19)
abline(ed.lm)
