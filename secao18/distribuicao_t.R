# Uma pesquisa mostra que cientistas de dados ganham R$75,00 por hora. Uma
# amostra de 9 cienistas é selecionada e perguntado o salário. O desvio da 
# amostra é 10. Qual a probalbilidade do salário ser menor que R$80,00?

X_barra <- 80
mu_0 <- 75 # Média da população
S <- 10 # Desvio padrão
n <- 9 # Tamanho da amostra
t_0 <- n - 1

# Cálculo de t
t <- (X_barra - mu_0)/(S / sqrt(n))
cat("Valor de t: ", t)

# Cálculo da probabilidade para 80%, alca à esquerda
p_80 <- pt(1.5, 8)
cat(sprintf("Probabilidade de ganhar menos de 80/h: %.1f%%", p_80 * 100))
