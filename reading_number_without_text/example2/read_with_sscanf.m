fid = fopen('myfile.txt','r');
line = fgetl(fid); %skip over fred
line = fgetl(fid); %get barney
numbers = sscanf(line,'%f'); %get both numbers
fprintf('numbers are : ');
fprintf('%i   ', numbers);
fprintf('\n'); %newline
fclose(fid);
