dados <- read.csv("data/raw/tempo.csv", sep=";")
head(dados)
summary(dados)


# Aparência ---------------------------------------------------------------
summary(dados$Aparencia)
# ****Problema****
# Valor fora do domínio
table(dados$Aparencia)

# **** Solução ****
# Substituir valor pela moda
dados[dados$Aparencia == "menos",]$Aparencia <- "chuva"

# Temperatura -------------------------------------------------------------
summary(dados$Temperatura)
boxplot(dados$Temperatura)
hist(dados$Temperatura)

# **** Problemas ****
# Valores fora do domínio

# **** Solução ****
# Substituir valores pela mediana
dados[dados$Temperatura < -130 | 
      dados$Temperatura > 130, ]$Temperatura <- median(dados$Temperatura)

# Remover fatores não utilizados
dados$Aparencia =   factor(dados$Aparencia)

# Umidade -----------------------------------------------------------------
summary(dados$Umidade)
boxplot(dados$Umidade)
hist(dados$Umidade)

# **** Problemas ****
# Valores fora do domínio e possui NA's

# **** Solução ****
# Substituir dados faltantes e valores fora do domíno pela mediana
dados[is.na(dados$Umidade) | dados$Umidade > 100, ]$Umidade <- median(dados$Umidade, na.rm=T)

# Jogar -------------------------------------------------------------------
summary(dados$Jogar)
table(dados$Jogar)

