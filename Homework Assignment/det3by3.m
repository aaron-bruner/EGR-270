function d3=det3by3(A)
x=A(2:3,2:3);
y=A(2:3,[1 3]);
z=A(2:3,1:2);
d3=A(1,1)*det2by2(x)-A(1,2)*det2by2(y)+A(1,3)*det2by2(z);