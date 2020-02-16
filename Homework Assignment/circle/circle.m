% Aaron Bruner
% EGR-270-102
% Find a Circle
 
%       INPUT FILE          %
file = input('Input file name: ', 's');
fid = fopen(file, 'r');
 
%       Sipping header      %
fgetl(fid);
Table = fscanf(fid, '%f', [2 inf])';
fclose(fid);

%       Creating LHS Matrix 	%
c = [ 1 1 1 ]';
x = Table(:,1);
y = Table(:,2);
lhs = [c -2*x -2*y];

%       Creating RHS Matrix     %
rhs = -(x.^2 + y.^2);

%       Calculating Unknown Values    %
a = lhs \ rhs;
radius = sqrt(-a(1)+a(3)^2+a(2)^2);

%       OUTPUT FILE         %
output = input('Output file name: ', 's');
fid1 = fopen(output, 'w');
 
fprintf(fid1, '%15s%15s\n', 'x', 'y');
fprintf(fid1, '%15.4f%15.4f\n', Table');
fprintf(fid1, '%.4f %.4f center\n', a(2:3));
fprintf(fid1, '%.4f radius', radius);
 
fclose(fid1);