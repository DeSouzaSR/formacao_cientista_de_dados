import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

base = pd.read_csv("data/raw/trees.csv", sep=',')

# Criação do histograma
h = np.histogram(base.iloc[:,1], bins=6)
# h é uma tupla com dois arrays. Um para o tamanho das barras e outro com a os valores para as barras 
# no eixo x

# Visualização
plt.figure()
plt.hist(base.iloc[:,1], bins=10)
plt.title('Árvores')
plt.ylabel("Frequência")
plt.xlabel('Altura')
plt.show()
