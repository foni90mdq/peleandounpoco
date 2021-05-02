library(readr)
library(ggplot2)

casos_covid19 <- read_csv("casos_covid19-2.csv")
head(casos_covid19)

# Aunque la variable se llama marzo de analizó el mes de abril.

marzo <- casos_covid19[casos_covid19$fecha_clasificacion %like% "APR2021", ]

marzo_conf <- subset(marzo, marzo$clasificacion== "confirmado")


ggplot(data=marzo_conf, aes(marzo_conf$edad)) + 
  geom_histogram()+
  labs(x="Edad", y="N de casos") +
  xlim(0,100)+
  geom_vline(xintercept = 37, colour = "blue") + 
  geom_vline(xintercept = 39, colour = "red")

summary(marzo_conf$edad)

mayor <- subset(marzo_conf, marzo_conf$edad > 39)
summary(mayor)

menor <- subset(marzo_conf, marzo_conf$edad < 39)
summary(menor)

qqnorm(marzo_conf$edad, pch = 1, frame = FALSE)

summary(marzo_conf)
