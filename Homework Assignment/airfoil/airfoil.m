% Aaron Bruner
% EGR-270-102
% Calculating Airfoil

file = input('Please input file name : ', 's');
fid = fopen(file, 'r');

c = fscanf(fid, '%f');
fgetl(fid);
t = fscanf(fid, '%f');
fgetl(fid);
i = fscanf(fid, '%f');
fgetl(fid);
xm = fscanf(fid, '%s', 1);
ym = fscanf(fid, '%s', 1);
x1 = fscanf(fid, '%f', 1);
fgetl(fid);
x2 = fscanf(fid, '%f', 1);
fgetl(fid);
x3 = fscanf(fid, '%f', 1);
fgetl(fid);
x4 = fscanf(fid, '%f', 1);
fgetl(fid);
x5 = fscanf(fid, '%f', 1);

a0=1;a1=1;a2=2;a3=3;a4=4;

%Calculation
y1= t*c/0.2*(a0*sqrt(x1/c)+a1*x1/c+a2*(x1/c)^2+a3*(x1/c)^3+a4*(x1/c)^4);
y2= t*c/0.2*(a0*sqrt(x2/c)+a1*x2/c+a2*(x2/c)^2+a3*(x2/c)^3+a4*(x2/c)^4);
y3= t*c/0.2*(a0*sqrt(x3/c)+a1*x3/c+a2*(x3/c)^2+a3*(x3/c)^3+a4*(x3/c)^4);
y4= t*c/0.2*(a0*sqrt(x4/c)+a1*x2/c+a2*(x4/c)^2+a3*(x4/c)^3+a4*(x4/c)^4);
y5= t*c/0.2*(a0*sqrt(x5/c)+a1*x1/c+a2*(x5/c)^2+a3*(x5/c)^3+a4*(x5/c)^4);

fclose(fid);

output = input('Please input output file name : ', 's');
fid1 = fopen(output, 'w');
xvect = [0:i:c];
yvect = [0:i:c];
xm = 'x(m)';ym = 'y(m)';
outvect = [xvect;yvect]';
fprintf(fid1,'%15s%15s\n',xm,ym);
fprintf(fid1,'%15.4f%15.4f\n', outvect');

fclose(fid1);
