import numpy as np
import matplotlib.pyplot as plt

print np.log10(10000)
print np.log(np.e**20)

x = np.arange(0.1, 10, 0.1)
y = pow(x, 10)

plt.plot(x, y)
plt.show()
plt.plot(x, np.log10(y))
plt.show()
