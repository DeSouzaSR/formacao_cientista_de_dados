# Uma variável
boxplot(trees$Height, main="Árvores", xlab="Altura")

# Múltiplas variáveis
boxplot(trees)

# Agregação e gráficos de barras
spray = aggregate(. ~ spray, data=InsectSprays, sum)
barplot(spray$count, col=gray.colors(6), xlab="Spray", ylab="Total", names.arg=spray$spray)
