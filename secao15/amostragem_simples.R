# ---- Amostragem simples ----
# 150 amostras, de zero e um, como reposição, probabilidades equivalentes
amostra <- sample(c(0,1), 150, replace = TRUE, prob = c(0.5, 0.5))
summary(as.factor(amostra))

# 150 amostras, de zero e um, como reposição, mais chances para o zero
amostra <- sample(c(0,1), 150, replace = TRUE, prob = c(0.7, 0.3))
summary(as.factor(amostra))

# 150 amostras, de 1 a 1000, sem reposição, prob. equivalentes
amostra <- sample(c(1:1000), 150, replace = FALSE)
amostra

# Separar 70% dos dados de iris
amostra <- sample(c(0,1), 150, replace = TRUE, prob = c(0.7, 0.3))
summary(as.factor(amostra))

# Gerar a amostra de iris
amostri_iris <- iris[amostra == 1,]

# Garantindo a reprodutibilidade
set.seed(42)
sample(c(1000), 1
)
