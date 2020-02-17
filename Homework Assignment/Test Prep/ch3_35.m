syms a b c d e f
eqn1 = 25*a + 40*b + 60*c + 70*d + 32*e + 0*f == 4897000;
eqn2 = -c + b == 11000;
eqn3 = b + d - 10*e == 0;
eqn4 = b + c - a == 0;
eqn5 = c + a - 4*f - 4*e ==0;
eqn6 = a + b + c + d + e + f == 100000;

[A,B] = equationsToMatrix([eqn1, eqn2,eqn3,eqn4,eqn5,eqn6],[a,b,c,d,e,f]);
X = linsolve(A,B)