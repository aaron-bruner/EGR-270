function [] = homework12_25()

%initial guesses
x = [10 10 10]; %x1, x2, x3

%find x1 and x2 and x3
[x, z] = fminsearch(@my_equations, x);

fprintf('x1 = %.4f x2 = %.4f x3 = %.4f\n', x);
fprintf('z = %.16f\n', z);

end

function [z] = my_equations(x)

f = x(3)*(sinh(x(2)/x(3))-sinh(-30/x(3)))-100;
g = x(3)*(cosh(x(1)/x(3))-cosh(-30/x(3)))-20;
h = x(1)+30-x(2);

z = f^2 + g^2 + h^2;

end