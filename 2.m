f = [10:50:100000];
w = 2*pi*f;
h = abs(1 ./ sqrt((4 - w.^2).^2 .- (25 * w.^2)));
semilogx(w, h)
