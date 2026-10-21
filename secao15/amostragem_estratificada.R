library(sampling)

# Para balancear a amostragem
proporcao <- 25

amostra_iris2 <- strata(data=iris, stratanames = c("Species"), size = c(rep(proporcao, 3)), method = "srswor")
summary(amostra_iris2)
summary(iris)


# Dados de infertilidade
infert
summary(infert)

amostra <- strata(data = infert, stratanames = c("education"), size = c(5, 48, 47), method = "srswor")
amostra
summary(amostra)
