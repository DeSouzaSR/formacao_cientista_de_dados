import matplotlib.pyplot as plt
import pandas as pd
pd.set_option("display.max_columns", None)
import seaborn as sns
import statistics as sts


def cbc(title):
    print("\n" + "-"*80)
    print(title)
    print("-"*80)


def explorer(title, column):
    outputbox = 'figures/boxplot_' + title + '.png'
    outputhist = 'figures/histogram_' + title + '.png'
    cbc(title)
    print(dataset[column].describe())
    plt.figure()
    sns.boxplot(dataset[column]).set_title(title)
    plt.savefig('figures/boxplot_'+title+'.png')
    print('Figura: ' + outputbox)
    plt.figure()
    sns.histplot(dataset[column], kde=True).set_title(title)
    plt.savefig('figures/histograma_'+title+'.png')
    print('Figura: ' + outputhist)
    

dataset = pd.read_csv('data/raw/Churn.csv', sep=";")
cbc("Conhecendo a base de dados")
print(dataset.head())

cbc("Tamanho...")
print(dataset.shape)

# Dar nomes às colunas 
cbc('Renomeando colunas...')
dataset.columns = ["Id", "Score", "Estado", "Genero", "Idade", "Patrimônio", 
                     "Saldo", "Produtos", "TemCartCredito", "Ativo", "Salario", 
                     "Saiu"]

print(dataset.head())

# ---- Explorar dados categóricos
# Estados
print("\nExplorar dados Categóricos")
print("="*80)

cbc("Agrupando por estado")
agrupado = dataset.groupby(['Estado']).size()
print(agrupado)

# Inputar valores RP, SP E TD

cbc("Figura - agrupamento por estado")
plt.figure()
agrupado.plot.bar(color = 'gray')
plt.savefig("figures/agrupado_por_estado.png")

# Gênero
cbc("Agrupando por gênero")
agrupado = dataset.groupby(['Genero']).size()
print(agrupado)

# Vamos ter que inputar


# ---- Colunas numéricas ----

print("\nExplorar colunas numéricas")
print('='*80)

explorer("Score", "Score")
explorer('Idade', 'Idade')
explorer('Saldo', 'Saldo')
explorer('Salario', 'Salario')


# ---- Checar NAs

cbc('Checagem de dados nulos')
print(dataset.isnull().sum())
