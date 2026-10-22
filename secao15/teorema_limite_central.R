library(semTools) # Pacote para criar uma distribuição não normal (enviesada)

# Inicializa vetor
z = rep(0, 500)

# Gera amostras
for (i in 1:500){
  m = mvrnonnorm(1000, c(1,2), matrix(c(10, 2, 2, 5), 2, 2),
                 skewness = c(5,2), kurtosis = c(3, 3))
  # Grava a média da amostra
  z[i] = mean(m)
  
  # Imprime as 3 primeiras
  if (i<4){
    hist(m, breaks = 50, main = paste0("Histrograma ", i))
  }
}

# Imprime a distribuição da média das amostras
# Se é válido o Teorema Central do Limite, deve 
# ser uma distribuição normal

hist(z)
