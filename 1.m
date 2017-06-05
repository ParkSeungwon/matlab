a1 = 1/3;
max_limit = 10;
for n=[0:max_limit-1]
	x1(n+1) = a1^n;
end

n = [0:max_limit-1];
Wmax = 2*pi;
W =  n*Wmax/ max_limit;
L = length(W);
clear XW;
for k=[1:1:L]
	XW(k) = x1 * exp(-j*n'*W(k));
end

plot(W, abs(XW), W, angle(XW))
