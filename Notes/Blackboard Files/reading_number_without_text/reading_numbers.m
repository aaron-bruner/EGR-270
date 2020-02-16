% Aaron Bruner
% Reading Numbers Without Text
% EGR-270-102

filename = input('Please enter the file name : ','s');
fid = fopen(filename,'r');

%Moving cursor over first two lines
fgetl(fid);
fgetl(fid);

%Scanning for score on line 3
eagles_score = fscanf(fid, '%i');

%Moving cursor to line 8
fgetl(fid);
fgetl(fid);
fgetl(fid);
fgetl(fid);
fgetl(fid);
%Scanning for the score on line 8
cardinals_score = fscanf(fid, '%i');

%Closing File
fclose(fid);

%Creating new output file
output = input('Please enter output file name : ','s');
out = fopen(output,'w');

%Printing score to output file
fprintf(out, 'Eagles:  %i\n', eagles_score);
fprintf(out, 'Cardinals:  %i\n', cardinals_score);

fclose(out);
