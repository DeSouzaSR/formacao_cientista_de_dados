#%% Visão do dataset
import pandas as pd
import seaborn as srn
import statistics as sts

# %%
# Importar dados
dataset = pd.read_csv(r'../data/raw/Churn.csv', sep=";")
dataset.head()
# %%
# Dar nomes às colunas
dataset.columns = ["Id", "Score", "Estado", "Genero", "Idade", "Patrimonio",
                   "Saldo", "Produtos", "TemCartCredito", "Ativo", "Salario",
                   "Saiu"]
dataset.head()
# %%
