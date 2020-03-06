%Pascals Triangle CH6_11
function [C] = ch6_11(n)
x=zeros(n);
x(:,1)=1;
for col=2:n
    for row=col:n
        x(row,col)=x(row-1,col-1)+x(row-1,col);
    end
end
disp(x);