import numpy as np
A = np.array([3, -2, 5])
B = np.array([-1, 7, 2])
print "노말 A = ", np.linalg.norm(A)
print B / np.linalg.norm(B)
C = 3 *  A - 2 * B
print C
print np.dot(A, B)
print np.arccos(np.dot(A,B) / (np.linalg.norm(A) * np.linalg.norm(B)))
