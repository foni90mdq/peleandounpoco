library(readr)
library(data.table)
library(ggplot2)
library(nortest)
library(ggpubr)
library(car)

casos_covid19 <- read_csv("casos_covid19-2.csv")
head(casos_covid19)

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
qqline(marzo_conf$edad, col = "steelblue", lwd = 2)

qqPlot(marzo_conf$edad)

summary(marzo_conf)
