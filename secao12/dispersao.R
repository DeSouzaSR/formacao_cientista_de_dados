library(ggplot2)

# Usar dados tree do R
trees

# Gráficos de dispersão
# simples
plot(trees$Girth, trees$Volume) 

# Mudando elementos
plot(trees$Girth, trees$Volume, ylab='Circunferência', xlab='Volume',
     col='blue', main='Árvores', pch=20)

# Usando linhas
plot(trees$Girth, trees$Volume, ylab='Circunferência', xlab='Volume',
     col='blue', main='Árvores', pch=20, type='l')


#Tratando a sobreposição
plot(jitter(trees$Girth), trees$Volume) # Dá um pequeno deslocamento nos pontos


