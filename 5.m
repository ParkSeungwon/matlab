t = [0:0.01:2*pi];
x = exp(j * t);
B = [1 3;2 4]
plot(real(x), imag(x), '-r*')
cx = [real(x); imag(x)];
z = B * cx;
hold on
plot(z(1,:), z(2,:))
