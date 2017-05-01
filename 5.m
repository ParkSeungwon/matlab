k = 1
h(1) = 10
delta = 0.01
for t = [0:delta:1]
	h(k+1) = 0.5* h(k) + delta;
	k += 1;
end
t = [0:delta:1];
plot(t, h(1:end-1))
print -depsc tt.eps
hold on
