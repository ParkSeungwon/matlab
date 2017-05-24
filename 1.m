t = linspace(-pi, pi, 201);
a1 = (4/pi) * sin(t);
plot(t, a1)
a3 = (4/pi)*(1/3)*sin(3*t);
hold on
plot(t, a3, 'y')
f2 = a1+a3;
plot(t,f2,'m');
a5 = (4/pi)*sin(5*t)/5;
plot(t,a5,'r')
f3 = f2 + a5;
plot(t, f3, 'g')

