function F = fourier(w)
t = [-4:0.01:4];
F = cumsum(exp(-j * w .* t)) * 0.01;
end

w = linspace(-2*pi, 2*pi, length(t));
y = fourier(w);
plot(w, abs(y));

