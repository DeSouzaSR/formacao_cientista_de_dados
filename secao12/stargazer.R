# Script para usar o pacote stargazer, para formatação de tabela

library(stargazer)


# Latex
stargazer(iris)

# Html
stargazer(iris, type = "html")

# Texto
stargazer(iris, type = "text")


# Salvar em disco
stargazer(women, out="women.tex", summary = FALSE)
