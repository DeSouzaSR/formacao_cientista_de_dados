# Análise Exploratória de Dados - Atividade 81 - Seção 12

# Explorar uma base de dados com dados de municípios contendo nome, id, PIB e
# valor de empenho.

library(dplyr)
library(ggplot2)

# Passo 1: Leitura do Dataset e Inspeção Estrutural Inicial ---------------

# Importação
dados <- readr::read_csv2("data/raw/dados.csv", )

# Dimensões
glimpse(dados) # 187 x 4

# Passo 2: Estatísticas Descritivas e Verificação de Valores Ausen --------
summary(dados)

# Municípos com nomes iguais. Verifica
municipos_mesmo_nome <- dados |>
  group_by(MUNICIPIO) |>
  summarize(qtd = n()) |>
  filter(qtd > 1)

# convertendo id para fator

dados <- dados |>
  mutate(CODIGO = as.factor(CODIGO))

# Consolida registros duplicados calculando a média do PIB e mantendo as chaves e o empenho constantes
dados_consolidados <- dados |>
  group_by(CODIGO, MUNICIPIO, VALOREMPENHO) |>
  summarize(PIB = mean(PIB, na.rm = TRUE), .groups = "drop")

# Histograma do PIB
ggplot(dados_consolidados) +
  aes(x = PIB) +
  geom_histogram(
    aes(y = after_stat(density)),
    bins = 30,
    fill = "steelblue",
    color = "white"
  ) +
  geom_density(color = "darkred", linewidth = 1) +
  scale_x_log10()


# Diagrama de dispersão PIB x Valor de Empenho
ggplot(dados_consolidados) +
  aes(x = PIB, y = VALOREMPENHO) +
  geom_point() +
  geom_smooth() +
  scale_x_log10() +
  scale_y_log10()

# Para concluir a nossa análise exploratória, podemos sintetizar os principais achados
# metodológicos e estatísticos obtidos ao longo do processo. Iniciámos com a importação
# e o diagnóstico estrutural do conjunto de dados, o que permitiu identificar e tratar
# adequadamente os registos duplicados através da agregação pela média do PIB,
# preservando a consistência do valor de empenho.

# Em seguida, a análise univariada com recurso a transformações logarítmicas evidenciou
# uma clara assimetria e uma estrutura bimodal na distribuição do PIB municipal,
# sugerindo a existência de subpopulações com dinâmicas económicas distintas entre os
# pequenos municípios e os grandes centros produtivos. Por fim, o diagrama de dispersão
# bivariado em escala logarítmica demonstrou que o valor de empenho não escala de
# forma linear com o produto interno bruto, revelando uma dispersão acentuada nas
# faixas intermédias e uma maior volatilidade na cauda superior devido à menor densidade
# de observações.
