import pandas as pd
import seaborn as sns
import statistics as sts
import matplotlib.pyplot as plt

dataset = pd.read_csv(r'../Formacao_CD/10.Limpeza e tratamento de Dados - Prática em Python/Churn.csv', sep=';')

print('\nVisualização')
print(dataset.head())

# Renomear
print('\nRenomear')
dataset.columns = ['Id', 'Score', 'Estado', 'Genero', 'Idade', 'Patrimonio', 'Saldo', 'Produtos', 'TemCartCredito',
                   'Ativo', 'Salario', 'Saiu']
print(dataset.head())

print('\nAnálise Exploratória')

print('Estados:')
agrupado = dataset.groupby(['Estado']).size()
print(agrupado)
agrupado.plot.bar(color = 'gray')
plt.show()

print('Gênero:')
agrupado = dataset.groupby(['Genero']).size()
print(agrupado)

agrupado.plot.bar(color = 'gray')
plt.show()

print('Describe')
print(dataset['Score'].describe())