# Calcular a probabilidade binomial
# x = evento
# p = propabilidade
# size = eventos

# Se jogar uma moeda 5 vezes, qual a prob. de dar cara 3 vezes?
dbinom(x = 3, size = 5, prob = 0.5) # probabilidade de dar 3

# Se eu passar 4 sinais de quatro tempos cada, qual a probabilidade de eu pegar
# 0, 1, 2, 3 e 4 sinais verdes?

pbinom(q = 4, size = 4, prob = 0.25)

# Se você fizer a prova de um concurso com 12 questões, chutando todas as
# questões, qual é a probabilidade de acertar 7 questões? Considere 
# 4 alternativas para cada questão.

dbinom(x = 7, size = 12, prob = 0.25)


# Se eu passar 4 sinais de quatro tempos cada, qual é a probabilidade de eu 
# pegar 3 ou mais sinais verdes.

1 - pbinom(q = 2, size = 4, prob = 0.25)

# diretamente
pbinom(q = 2, size = 4, prob = 0.25, lower.tail = FALSE)
