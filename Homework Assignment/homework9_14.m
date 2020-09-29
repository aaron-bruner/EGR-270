%given constant values
x0=0;
x=25;

%anonymous function
f=@(x) -(x.*(25-x).^2*sqrt(3)/4);

% https://www.mathworks.com/help/matlab/ref/fminbnd.html
[x,fval]= fminbnd(@(x) f(x),x0,x);

fprintf('The best x values is: %1.4f in. \nThe maximum volume is %1.4f in^3.\n',x,abs(fval))