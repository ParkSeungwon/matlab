t = linspace(-pi, pi, 201);
%fn = zeros(1,201);
for N = 1:2:100
	fn = fn + 4 / pi * sin(N*t)/N;
end
plot(t, fn)
	
