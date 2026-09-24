library(ggplot2)

# Usar dados tree do R
trees

# Histograma
hist(trees$Height) # Altura
hist(trees$Height, main = 'Árvores', ylab = 'Frequência', xlab = 'Altura',
     col = 'blue')
hist(trees$Height, main = 'Árvores', ylab = 'Frequência', xlab = 'Altura', 
     col = 'black', density = 50, breaks = 10)

# Densidade
# Densidade simples
densidade <- density(trees$Height)
plot(densidade)

# Sobrepor os dois gráficos
hist(trees$Height, main = NULL, ylab = NULL, xlab = NULL,
     col = 'black', density = 50, breaks = 10)
par(new = TRUE)
plot(densidade, main = "Árvores", ylab = 'Frequência', xlab = 'Altura', lwd = 2)

# Os mesmos dois gráficos usando ggplot2
ggplot(trees) +
  aes(x = Height) +
  geom_histogram(aes(y = after_stat(density)), bins = 10) +
  geom_density() +
  labs(title = 'Árvores',x = 'Altura',y = 'Densidade')

