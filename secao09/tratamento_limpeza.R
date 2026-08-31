# Tratamento e limpeza dos dados
dados = read.csv("data/raw/Churn.csv", sep = ";", na.strings = "", stringsAsFactors = T)

# Colunas
# Dar nomes às colunas
colnames(dados) <- c("Id", "Score", "Estado", "Genero", "Idade", "Patrimônio", 
                     "Saldo", "Produtos", "TemCartCredito", "Ativo", "Salario", 
                     "Saiu")


head(dados)

dados[!complete.cases(dados),]


# Tratar salários ---------------------------------------------------------

dados[is.na(dados$Salario),]$Salario <- median(dados$Salario, na.rm = T)
# Checando
dados[!complete.cases(dados$Salario),]

# Tratar gênero -----------------------------------------------------------

summary(dados$Genero)
# Substituir
# Fem e F = Feminino
# M = Masculino
# NA's = moda = Masculino
dados[is.na(dados$Genero) | dados$Genero == "M", ]$Genero <- "Masculino"
dados[dados$Genero == "F" | dados$Genero == "Fem", ]$Genero <- "Feminino"
# Checando
dados[!complete.cases(dados$Genero),]
# Remover levels  que não estão sendo utilizados
summary(dados$Genero)
dados$Genero <- factor(dados$Genero)
summary(dados$Genero)

# Tratar idade ------------------------------------------------------------

summary(dados$Idade)
#Quantidade de idades fora do domínio
dados[dados$Idade<0 | dados$Idade> 110,]$Idade
# Verificando NAs
dados[is.na(dados$idade),]
# Substituindo valores pela mediana da idade
dados[dados$Idade<0 | dados$Idade> 110,]$Idade <- median(dados$Idade, na.rm = T)
summary(dados$Idade)
