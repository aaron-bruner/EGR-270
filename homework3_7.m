%Aaron Bruner
%EGR-270-102
%Problem 3.7

L = 100000; %L is the initial loan amount.
n = 30; %n is the years mortgage.
x = 0:5:30; %x represents the years 0 through 30.
r = 0.06; %r is the fixed interest rate of 6%

B = L*((1+r/12)^(12*n)-(1+r/12 ).^(12*x)) / ((1+r/12)^(12*n)-1);

C=[x;B]