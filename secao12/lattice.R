library(lattice)

# Boxplot

bwplot(trees$Volume)
bwplot(trees$Volume, main="Árvores", xlab="Volume")

# Hitograma
histogram(trees$Volume, main="Árvores", xlab="Volume", aspect=1, type="percent",
          nint=5)

# Histrograma condicional
chickwts # base de dados de peso de frangos alimentados com diferentes proteínas

# Histograma padrão
histogram(chickwts$weight)

#  Agrupando
aggregate(chickwts$weight, by=list(chickwts$feed), FUN=sum)

#Histograma condicional
histogram(~weight | feed, data=chickwts)

# Gráficos de dispersão condicionais
CO2

xyplot(CO2$conc ~ CO2$uptake) # Padrão
xyplot(CO2$conc ~ CO2$uptake | CO2$Type) # Condicionado ao tipo
xyplot(CO2$conc ~ CO2$uptake | CO2$Treatment) # Condicionado ao tratamento


# Gráficos condicionais para cancer no esôfago
head(esoph)
dotplot(esoph$alcgp ~ esoph$ncontrols, data = esoph)
dotplot(esoph$alcgp ~ esoph$ncontrols | esoph$tobgp)

# Matriz de dispersão
splom(~CO2[4:5] | CO2$Type, CO2)

# Densidade condicional
densityplot(~CO2$conc | CO2$Treatment, plot.points=FALSE)
densityplot(~CO2$conc)
densityplot(~CO2$conc | CO2$Treatment, plot.points=TRUE)

# Gráficos 3D
OrchardSprays # Sprays contra abelhas
cloud(decrease ~ rowpos * colpos, data=OrchardSprays)
cloud(decrease ~ rowpos * colpos, groups=treatment, data=OrchardSprays)

# Level plot 
levelplot(Girth ~ Height * Volume, data=trees)
