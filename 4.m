t = [0:0.0001:0.1];
xt = 1 + exp(-0.1 * 2* pi * 100 * t) .* sin(sqrt(1-0.01) * 2* pi * 100 * t - pi/3);
xt2 = 1 .+ (t +1 ) .* exp(t * -2 * pi * 10);
xt3 = 1 .+ 2 .* exp(t * -2 * pi * 10);
plot(t, xt, t, xt2, t, xt3)

