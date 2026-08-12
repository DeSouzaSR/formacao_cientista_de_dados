import pandas as pd
import seaborn as sns
import statistics as sts
import matplotlib.pyplot as plt

dataset = pd.read_csv(r'..\data\raw\Churn.csv', sep=";")


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

# Colunas numéricas
print('Describe')
print(dataset['Score'].describe())

# Boxplot para Score
sns.boxplot(dataset['Score']).set_title("Score")
plt.show()

# Gráfico de densidade
sns.histplot(dataset['Score'], kde=True)
plt.show()

#----Idade----
dataset['Idade'].describe()

# Boxplot
sns.boxplot(dataset['Idade']).set_title("Idade")
plt.show()

# Gráfico de densidade
sns.histplot(dataset['Idade'], kde=True)
plt.show()

#----Salário----
dataset['Salario'].describe()

# Boxplot
sns.boxplot(dataset['Salario']).set_title("Salario")
plt.show()

# Gráfico de densidade
sns.histplot(dataset['Salario'], kde=True)
plt.show()

# Nulos
dataset.isnull().sum()
