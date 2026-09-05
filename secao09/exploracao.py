import pandas as pd
pd.set_option("display.max_columns", None)
import seaborn as sns
import statistics as sts

dataset = pd.read_csv('data/raw/Churn.csv', sep=";")
print("Conhecendo a base de dados")
print(dataset.head())

print("Tamanho...")
print(dataset.shape)

# Dar nomes às colunas 
print('Renomeando colunas...')
dataset.columns = ["Id", "Score", "Estado", "Genero", "Idade", "Patrimônio", 
                     "Saldo", "Produtos", "TemCartCredito", "Ativo", "Salario", 
                     "Saiu"]

print(dataset.head())

# ---- Explorar dados categóricos
# Estados
print("Agrupando...")
agrupado = dataset.groupby(['Estado']).size()
print(agrupado)
