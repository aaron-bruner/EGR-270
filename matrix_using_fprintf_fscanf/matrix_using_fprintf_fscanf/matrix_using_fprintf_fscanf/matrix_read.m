%script matrix_read

%open the file for reading
fid=fopen('mymatrix.txt','r');
%read in the header line and trash it
line=fgetl(fid);
%read the matrix
a=fscanf(fid,'%f', [2 inf])';
%a = fscanf(fid, '%f', [2 3]);
%unhook mymatrix.txt
fclose(fid);