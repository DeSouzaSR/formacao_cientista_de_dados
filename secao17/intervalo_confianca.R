
# Exemplo 1 - Intervalo de Confiança para a média -------------------------

# Salário medio de um cientista de dados
# Pesquisados
n <- 100

# Intervalo de confiança 95%
z <- 1.96

# Desvio padrão
desv <- 1100

# Média
xbar <- 5800

# Margem de erro
error <- z * desv/sqrt(n)

cat('Salário médio: ', xbar - error, " a ", xbar + error)

# Exemplo 2 - Intervalo de Confiança para a média -------------------------

# Salário medio de um cientista de dados
# Pesquisados
n <- 100

# Intervalo de confiança 99%
z <- 2.58

# Desvio padrão
desv <- 1100

# Média
xbar <- 5800

# Margem de erro
error <- z * desv/sqrt(n)

cat('Salário médio: ', xbar - error, " a ", xbar + error)

# Exemplo 3 - Intervalo de Confiança para proporção -----------------------
# Eleitores que vão votar em Maria

# 1000 pesquisados
n <- 1000

# IC 95%
z = 1.96

# Eleitores de Maria 650
p <- 650 / 1000

error <- z * sqrt(p*(1 - p)/n)

lim_inf <- (p - error) * 100
lim_sup <- (p + error) * 100
cat(sprintf('Percentual para Maria: %.2f a %.2f', lim_inf, lim_sup))

