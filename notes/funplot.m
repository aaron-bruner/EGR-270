function [y] = funplot(Fun, a, b)

x=linspace(a,b,100);
y = Fun(x);
plot(x,y);
xlabel('x'); ylabel('y');