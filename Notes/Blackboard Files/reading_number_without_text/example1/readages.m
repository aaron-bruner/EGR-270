filename=input('Enter filename : ','s'); %the s means I'm entering a string
fid=fopen(filename,'r');
if fid==-1
    fprintf(2,'File %s not found\n',filename)
    return
end

line=fgetl(fid); %read the first line of the file
barts_age=fscanf(fid,'%f');
fgetl(fid); %read the remainer of the 2nd line
line=fgetl(fid); %read line 3
marges_age=fscanf(fid,'%f');
fclose(fid);

outputfile=input('Enter output filename : ','s');
fout=fopen(outputfile,'w');
if fout == -1
    fprintf(2,'File %s could not be opened for writing\n',outputfile);
    return
end

fprintf(fout,'Bart is %i years old.\n',barts_age);
fprintf(fout,'Marge is %i years old.\n',marges_age);
fclose(fout);
