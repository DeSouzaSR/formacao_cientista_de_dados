library(ggplot2)

# Usar dados tree do R
trees

# Gráficos de dispersão
# simples
plot(trees$Girth, trees$Volume)

# Mudando elementos
plot(
     trees$Girth,
     trees$Volume,
     ylab = 'Circunferência',
     xlab = 'Volume',
     col = 'blue',
     main = 'Árvores',
     pch = 20
)

# Usando linhas
plot(
     trees$Girth,
     trees$Volume,
     ylab = 'Circunferência',
     xlab = 'Volume',
     col = 'blue',
     main = 'Árvores',
     pch = 20,
     type = 'l'
)


#Tratando a sobreposição
plot(jitter(trees$Girth), trees$Volume) # Dá um pequeno deslocamento nos pontos

# Gráficos de dispersão com variáveis categóricas
CO2
plot(CO2$conc, CO2$uptake, pch = 20, col = CO2$Treatment)
legend(
     "bottomright",
     legend = c("nonchilled", "chilled"),
     cex = 1,
     fill = c("black", "red")
)


# Divisão de tela
split.screen(figs = c(2, 2))
screen(1)
plot(trees$Girth, trees$Volume)
screen(2)
plot(trees$Girth, trees$Height)
screen(3)
plot(trees$Height, trees$Volume)
screen(4)
hist(trees$Volume)
close.screen(all = TRUE)
