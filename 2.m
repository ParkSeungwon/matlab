delta = 0.01
t = [0:delta:10];
z(1) = 3;
y(1) = 1;
k = 1
for x  = [0:delta:10]
	y(k+1) = delta * z(k) + y(k);
	z(k+1) = -delta * (2 * z(k) + y(k)) + z(k);
	k = k+1;
end
plot(t, y(1:end-1))
print -depsc tt.eps
