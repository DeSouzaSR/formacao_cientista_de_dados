library(semTools)

# Teste de Normalidade

set.seed(123)
x = rnorm(1000)

# Gráfico qqplot
qqnorm(x)
qqline(x)

# Teste de Shapiro
# Valor de p acima de 0.05, não há indício para a não confirmar a hipótese
# nula de dados normalmente distribuidos
shapiro.test(x)

# Histograma com linha de densidade
hist(x, main="")
par(new = TRUE)
plot(density(x), ylab = "", axes = F, lwd = 2.5)

# Dados não normalmente distribuidos
m = mvrnonnorm(1000, c(1, 2), matrix(c(10, 2, 2, 5), 2, 2),
               skewness = c(5, 2), kurtosis = c(3, 3))

qqnorm(m)
qqline(m)

# Shapiro
shapiro.test(m)

# Histrograma e densidade
hist(m, main="")
par(new = TRUE)
plot(density(m), ylab = "", axes = F, lwd = 2.5)
