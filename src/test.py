import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 1000)
y = np.sin(x) * np.sin(7*x)

plt.plot(x, y)
plt.show()