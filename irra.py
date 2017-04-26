import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

c1 = 4 + 5j
c2 = 1 - 6j
a = c1 - c2
b = c1 * c2
c = c1 / c2
print a, b, c
np.abs(c1)
np.angle(c2)

t = np.arange(0, 5, 0.01)
w = 10 * np.pi
p1 = 2 * np.e ** (1j * (w*t+np.pi/3))
p2 = 5 * np.e ** (1j * w * t + np.pi/4)
fig = plt.figure()
ax = Axes3D(fig)
ax.plot(np.real(p1), np.imag(p1), t)
ax.plot(np.real(p2), np.imag(p2), t)
p3 = p1 + p2
ax.plot(np.real(p3), np.imag(p3), t)
plt.show()
