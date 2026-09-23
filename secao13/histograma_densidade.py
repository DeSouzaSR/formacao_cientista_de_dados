from matplotlib.pyplot import title
from pandas import col
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns

# Leitura dos dados
base = pd.read_csv('data/raw/trees.csv')

# Visualização
plt.figure()
plt.hist(base.iloc[:,1], bins=6)
plt.show()

# Histograma usando seaborn
plt.figure()
sns.histplot(base.iloc[:,1], kde=False, bins=6, color='blue').set(title='Árvores')
plt.show()

# Histograma com apenas a densidade
plt.figure()
sns.kdeplot(base.iloc[:,1], color='blue').set(title='Árvores')
plt.show()

# Histograma com linha de densidade
plt.figure()
sns.histplot(base.iloc[:,1], kde=True, bins=6, color='blue').set(title='Árvores')
plt.show()