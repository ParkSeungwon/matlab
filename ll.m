x = [-1:0.1:1];
y = 10*x.**4;
yp = diff(y)/0.1;
x = x(1:20);
y= y(1:20)
plot(x,y,x,yp,'r')
