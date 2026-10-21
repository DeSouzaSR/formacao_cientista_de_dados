library(TeachingSampling)

# Amostra sistemática de tamanho 150, 10 grupos
amostra <- S.SY(150, 10)
amostra

# Usando esta amostra para filtra da base iris
amostrairis <- iris[amostra,]
amostrairis
