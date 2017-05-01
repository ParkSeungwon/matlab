k = 1
delta = 0.01
h(1) = 10
A = 10
qmi = 25
r = 2
R = 5
for t = [0:delta:1000]
	h(k+1) = delta / A * (qmi / r - h(k) / R) + h(k);
	k = k + 1;
end
t = [0:delta:1000];
plot(t, h(1:end-1))
print -depsc tt.eps
