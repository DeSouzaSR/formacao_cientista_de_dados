#%%
import pandas as pd

#%%
# Import
dados = pd.read_csv(r"../data/raw/Credit.csv")

#%%
# Formato
dados.shape

#%%
# Resumo estatístico de colunas numéricas
dados.describe()

#%%
# Primeiros registros
dados.head()

#%%
# Filtrar por nome de coluna
dados[['residence_since']]

#%%
# Filtrar por linhas e colunas como no Numpy. Linhas 1 e 3
dados.loc[[1,3]]

#%%
# Filtro 1
dados.loc[dados['purpose'] == 'radio/tv']

#%%
# Filtro 2
dados.loc[dados['credit_amount'] > 18000]

#%%
# Filtrando algumas colunas e linhas
credito3 = dados[['checking_status', 'duration']].loc[dados['credit_amount'] > 18000]
print(credito3)
# %%
# Renomear as colunas 
dados.rename(columns={'duration':'duracao', 'purpose':'proposito'}, inplace=True)
# %%
# Excluir coluna 
dados.drop('checking_status', axis=1, inplace=True)
# %%
