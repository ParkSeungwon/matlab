x = linspace(0,1,1001);
y = x.**2.*exp(x);
z = y(1:1000).*diff(x);
plot(x(1:1000),z)
