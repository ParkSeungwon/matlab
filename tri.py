import numpy as np
import matplotlib.pyplot as plt

t = np.arange(0, np.pi, 0.01)
y = np.cos(5 * t)
plt.grid()
plt.plot(t, y)
plt.show()

t = np.arange(0, 1, 0.0001)
ct = np.cos(2 * np.pi * 200 * t)
mt = np.cos(2 * np.pi * 10 * t)
plt.plot(t[0:3000], mt[0:3000])
plt.show()
plt.plot(t[0:3000], ct[0:3000])
plt.show()

xc = mt * ct
plt.plot(t[0:3000], xc[0:3000])
plt.show()

spec = np.abs(np.fft.fft(xc))
N = spec.shape[0] / 2
plt.plot(spec[0:700]/N)
plt.show()

xi = xc * ct
plt.plot(t[0:3000], xi[0:3000])
plt.show()

spec2 = np.abs(np.fft.fft(xi))
N = spec2.shape[0] / 2
plt.plot(spec2[0:700]/N)
plt.show()
