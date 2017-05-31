function F = fourier(w)
t = [-5:0.01:5];
x = exp(-5 * abs(t));
F = sum(x .* exp(-j * w * t)) * 0.01;
end

l = length(t)
w = linspace(-2*pi, 2*pi, l);
y = w;
for n= [1:l]
y(n) = fourier(w(n));
end
plot(w, abs(y));

