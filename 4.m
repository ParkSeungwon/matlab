X = [2;1]
plot(X(1,1),X(2,1),'r*'),axis([-10 10 -10 10])
A = [cos(pi/4) -sin(pi/4);sin(pi/4) cos(pi/4)]
hold on
Y = A * X
plot(Y(1,1),Y(2,1),'bo')
[vec, val] = eig(A)
print -depsc 4.eps
