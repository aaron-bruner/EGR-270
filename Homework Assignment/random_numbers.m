%Aaron Bruner
%EGR-270-102
%In-Class Assignment

fid = fopen('outputfile.txt', 'r');

A = fscanf(fid, '%f', [3 inf]);
fprintf('%5.2f %5.2f %5.2f\n', A);

fclose(fid);