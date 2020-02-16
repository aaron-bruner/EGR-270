%Script myread

%open file
fid=fopen('mydata.txt','r');

%read one text string from the file and convert to real number
mypi=fscanf(fid,'%f')

%close the file
fclose(fid);