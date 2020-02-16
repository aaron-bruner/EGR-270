%Script mywrite
%open the file
fid=fopen('mydata.txt','w');
number=pi;
%convert from real number to text and write to file
fprintf(fid,'%12.5f\n',number);
fclose(fid); %close the file