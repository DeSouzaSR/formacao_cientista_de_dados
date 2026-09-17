# Importação dos dados
dados <- read.csv("data/raw/Churn.csv", sep = ";", na.strings = "", stringsAsFactors = T)
head(dados)


# Nomear colunas ----------------------------------------------------------

colnames(dados) <- c("Id", "Score", "Estado", "Genero", "Idade", "Patrimônio", 
                     "Saldo", "Produtos", "TemCartCredito", "Ativo", "Salario", 
                     "Saiu")

head(dados)

# Explorar dados e colunas categóricas ------------------------------------

# Estados
counts <- table(dados$Estado)
barplot(counts, main = "Estados", xlab = "Estado")

# **** Problema ****
# Há estados fora do domínio ou inexistentes
# RP, SP e TD

# Gênero
counts <- table(dados$Genero)
barplot(counts, main = "Gênero", xlab = "Gênero")

# **** Problemas ****
# Falta de padronização nos valores
# F       Fem  Feminino         M Masculino 
# 2         1       461         6       521 


# Explorar colunas numéricas ----------------------------------------------

# Score
summary(dados$Score)
boxplot(dados$Score)
hist(dados$Score)

# Idade
summary(dados$Idade)
boxplot(dados$Idade)
hist(dados$Idade)

# **** Problemas ****
# Há idades fora do domínio. Ex: -20, 140.

# Saldo
summary(dados$Saldo)
boxplot(dados$Saldo)
hist(dados$Saldo)

# Salário
summary(dados$Salario)
boxplot(dados$Salario)
hist(dados$Salario)

# **** Problemas ****
# Há valores faltantes 

