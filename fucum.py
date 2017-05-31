import numpy as np
import matplotlib.pyplot as plt

dt = 0.01
t = np.arange(-5, 5, dt);
x = np.e **(-5 * abs(t));
def fourier(w):
    return np.sum(x * np.e**(-1j * w * t)) * dt

l = t.size;
w = np.linspace(-2 * np.pi, 2 * np.pi, l);
y = w;
for i in range(l):
    y[i] = abs(fourier(y[i]));

plt.plot(w, y);
plt.show();
