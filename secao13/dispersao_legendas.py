import pandas as pd
import matplotlib.pyplot as plt


# Carregando a base de dados 
def carrega_base(base, sep=";"):
    base = pd.read_csv(base, sep=sep)
    return base

# Criando duas variáveis para cada atributo
base = carrega_base('data/raw/co2.csv', sep=",")
x = base['conc']
y = base['uptake']

# Retirna valores únicos dos atributos
unicos = list(set(base['Treatment']))

for i in range(len(unicos)):
    indice = base['Treatment'] == unicos[i]
    plt.scatter(x[indice], y[indice], label=unicos[i])
plt.legend(loc = 'lower right')
plt.show()

# Vários gráficos de dispersão juntos
plt.figure(1)
plt.subplot(2,2,1)
plt.scatter(base['Girth'], base[''])

