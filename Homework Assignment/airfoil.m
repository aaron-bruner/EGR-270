% Aaron Bruner
% EGR-270-102
% Calculating Airfoil

file = input('Please input file name : ', 's');
fid = fopen(file, 'r');


length = fscanf(fid, '%f');
length_measurment = fscanf(fid, '%s', 1);

thickness = fscanf(fid, '%f');
thickness_measurment = fscanf(fid, '%s', 1);

increment = fscanf(fid, '%f');
increment_measurment = fscanf(fid, '%s', 1);

%Moving Cursor over line 4
fgetl(fid);

x0 = fscanf(fid, '%f');
y0 = fscanf(fid, '%f');

x1 = fscanf(fid, '%f');
y1 = fscanf(fid, '%f');

fclose(fid);

fprintf('%f %f %f %f\n', x0,y0,x1,y1);

