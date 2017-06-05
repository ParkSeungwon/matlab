x = [0,0,0,0,0,1,1,1,1,1,0,0,0,0,0]
n = [-7:1:7]
W = linspace(0, 2*pi, 15)

L=length(W);
clear XW;
for k=[1:1:L]
   XW(k) = x * exp (-j*n'*W(k)) ;
end

plot(W, abs(XW), W, angle(XW))
