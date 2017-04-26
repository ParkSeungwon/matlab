import numpy as np
import matplotlib.pyplot as plt
from sympy import *

x = Symbol('x')
y = 10 * x ** 4
init_printing()
diff(y)

x = np.arange(-1, 1, 0.1)
y = 10 * x ** 4
yp = np.diff(y) / 0.1
plt.plot(x[0:-1], y[0:-1], x[0:-1], yp)
plt.show()

x = np.arange(0, 1, 0.01)
y = x ** 2 * np.e ** x
plt.plot(x, y)
plt.show()

z = y * 0.01
plt.plot(x, z)
plt.show()

x = np.arange(0, 2 * np.pi, 0.01)
y = np.cos(x)
yp = np.diff(y) / np.diff(x)
plt.plot(x[0:-1], y[0:-1], x[0:-1], yp)
plt.show()

t = np.arange(0, 2.1, 0.1)
a = np.array([0, 9.05, 16.37, 22.22, 26.81, 30.33, 32.93, 34.76, 35.95, 36.59, 36.79, 36.62, 36.14, 35.43, 34.52, 33.47, 32.30, 31.06, 29.75, 28.42, 27.07])
v = 0.1 * np.cumsum(a)
s = 0.1 * np.cumsum(v)
plt.plot(t,a,t,v,t,s)
plt.show()
