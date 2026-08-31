# Exploração dos dados

dados = read.csv("data/raw/Churn.csv", sep = ";", na.strings = "", stringsAsFactors = T)
head(dados)
summary(dados)

# Colunas
# Dar nomes às colunas
colnames(dados) <- c("Id", "Score", "Estado", "Genero", "Idade", "Patrimônio", 
                     "Saldo", "Produtos", "TemCartCredito", "Ativo", "Salario", 
                     "Saiu")

head(dados)

# Explorar dados categóricos
## Estados
counts <- table(dados$Estado)
barplot(counts, main="Estado", xlab = "Estado")

## Gênero
counts <- table(dados$Genero)
barplot(counts, main="Gêneros", xlab = "Gêneros")

# Explorar dados numéricos
## Score
summary(dados$Score)
boxplot(dados$Score)
hist(dados$Score)

## Idade
summary(dados$Idade)
boxplot(dados$Idade)
hist(dados$Idade)

## Saldo
summary(dados$Saldo)
boxplot(dados$Saldo)
hist(dados$Saldo)

# Salário
summary(dados$Salario)
boxplot(dados$Salario)
hist(dados$Salario)

