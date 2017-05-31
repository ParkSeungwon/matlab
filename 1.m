w = [-2*pi:0.005:2*pi];
y = 20*sin(5*w)./w;
z = 20*sin(25*w)./w;
plot(w, y, w, z)
