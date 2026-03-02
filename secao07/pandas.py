import pandas as pd

# Import
dados = pd.read_csv(r"D:\workspace\study\formacao_cientista_de_dados\data\raw\Credit.csv")

# Formato
dados.shape

# Resumo estatístico de colunas numéricas
dados.describe()

# Primeiros registros
dados.head()

# Filtrar por nome de coluna
dados[['residence_since']]

# Filtrar por linhas e colunas como no Numpy. Linhas 1 e 3
dados.loc[[1,3]]

# Filtro 1
dados.loc[dados['purpose'] == 'radio/tv']

# Filtro 2
dados.loc[dados['credit_amount'] > 18000]

# Filtrando algumas colunas e linhas
credito3 = dados[['checking_status', 'duration']].loc[dados['credit_amount'] > 18000]
print(credito3)