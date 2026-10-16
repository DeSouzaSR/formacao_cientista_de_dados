#%%
import pandas as pd
import numpy as np

#%%
base = pd.read_csv(r'data/raw/iris.csv')
# %%
base.shape
# %%
# Seelcionar amostra
# Garantir reprodutibilidade
np.random.seed(2345)

amostra = np.random.choice(a=[0, 1], size=150, replace = True, p = [0.7, 0.3])

# %%
base_final = base.loc[amostra == 0]
# %%
