import numpy as np
import matplotlib.pyplot as plt

f = [5, -3, 1]
x = [-1, 0, 1]#or np.arange(-1,2)
print np.polyval(f, x)
print np.roots(f)
x = np.arange(-1, 1.1, 0.1)
y = np.polyval(f, x)
print y
plt.xlabel('X')
plt.ylabel('F(x)')
plt.grid()
plt.plot(x, y)
plt.show()
f = [1, -5, 1]
g = [1, -3, 7]
h = np.polymul(f, g)
print h
h = np.polydiv(f, g)
print h
