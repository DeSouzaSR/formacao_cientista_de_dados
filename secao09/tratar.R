# Importação dos dados
dados <- read.csv("data/raw/Churn.csv", sep = ";", na.strings = "", stringsAsFactors = T)

# Nomear colunas ----------------------------------------------------------

colnames(dados) <- c("Id", "Score", "Estado", "Genero", "Idade", "Patrimônio", 
                     "Saldo", "Produtos", "TemCartCredito", "Ativo", "Salario", 
                     "Saiu")

# Tratar dados e colunas categóricas ------------------------------------

# Estados
counts <- table(dados$Estado)
barplot(counts, main = "Estados", xlab = "Estado")

# **** Problema ****
# Há estados fora do domínio ou inexistentes
# RP, SP e TD

# **** Solução ****
# Preenchar com a moda
dados[!dados$Estado %in% c("RS", "SC", "PR"),]$Estado <- "RS"
dados$Estado <- factor(dados$Estado)

# Gênero
counts <- table(dados$Genero)
barplot(counts, main = "Gênero", xlab = "Gênero")

# **** Problemas ****
# Falta de padronização nos valores e presença de NA's
# F       Fem  Feminino         M Masculino 
# 2         1       461         6       521

# **** Solução ****
# Substituir pela moda os NAs e padronizar para "Masculino" e "Feminino"
dados[is.na(dados$Genero) | dados$Genero == "M", ]$Genero <- "Masculino"
dados[dados$Genero == "F" | dados$Genero == "Fem", ]$Genero <- "Feminino"
dados$Genero <- factor(dados$Genero)

# Explorar colunas numéricas ----------------------------------------------

# Idade
summary(dados$Idade)
boxplot(dados$Idade)
hist(dados$Idade)

# **** Problemas ****
# Há idades fora do domínio. Ex: -20, 140.

# **** Solução ****
# Definir o domínio (0, 110), subtituindo pela mediana
dados[dados$Idade<0 | dados$Idade>110, ]$Idade <- median(dados$Idade)

# Salário
summary(dados$Salario)
boxplot(dados$Salario)
hist(dados$Salario)

# **** Problemas ****
# Há valores faltantes e outliers

# **** Solução ****
# Substituir NAs e outliers pela mediana
dados[is.na(dados$Salario), ]$Salario <- median(dados$Salario, na.rm = T)
summary(dados$Salario)

desv <- sd(dados$Salario, na.rm = T)
dados[dados$Salario >= 2*desv, ]$Salario <- median(dados$Salario)

# Dados duplicados --------------------------------------------------------

# **** Problema ****
# Pelo Id há dados duplicados

dados[duplicated(dados$Id),]

# **** Solução ****
# Remover a segunda linha duplicada, pelo campo id
dados <- dados[-c(82),]

