x = linspace(0, 2*pi, 101);
y = cos(x);
yp = diff(y)./diff(x);
plot(x(1:100),y(1:100),x(1:100),yp)
