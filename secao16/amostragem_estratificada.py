#%% Importação das bibliotecas
import numpy as np
import pandas as pd
from math import ceil

#%% Parâmetros
populacao = 150
amostra = 15
k = ceil(populacao / amostra) 
# %% 
np.random.seed(42)
r = np.random.randint(low=1, high=k+1, size=1)
# %%
acumulador = r[0]
sorteados = []

for i in range(amostra):
    sorteados.append(acumulador)
    acumulador += k

print(sorteados)

#%% 
# Base final com os valores sorteados
base = pd.read_csv(r'data/raw/iris.csv')
base_final = base.loc[sorteados]

# %%
