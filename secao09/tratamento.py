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

# Dar nomes às colunas 
cbc('Renomeando colunas...')
dataset.columns = ["Id", "Score", "Estado", "Genero", "Idade", "Patrimônio", 
                     "Saldo", "Produtos", "TemCartCredito", "Ativo", "Salario", 
                     "Saiu"]

print(dataset.head())

# Tratamentos
## Salário
mediana = sts.median(dataset['Salario'])
dataset['Salario'] = dataset['Salario'].fillna(mediana)

## Gênero
### Substituir NAs por "Masculino"
dataset['Genero'] = dataset['Genero'].fillna('Masculino')

### Padronização
dataset.loc[dataset['Genero'] == 'M', 'Genero'] = 'Masculino'
dataset.loc[dataset['Genero'].isin(['Fem','F']), 'Genero'] = 'Feminino'

## Idades
### Idades fora do domínio
mediana = sts.median(dataset['Idade'])
dataset.loc[(dataset['Idade'] < 0) | (dataset['Idade'] > 120), 'Idade'] =  mediana


## Dados duplicados
### Excluindo id 
dataset.drop_duplicates(subset="Id", keep="first", inplace=True)


