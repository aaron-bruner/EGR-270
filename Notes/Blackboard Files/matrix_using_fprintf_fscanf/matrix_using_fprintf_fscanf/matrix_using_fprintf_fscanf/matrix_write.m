%script matrix_write

a=[
    1 2 7;
    3 4 8;
    5 6 9;
    ];
fid=fopen('mymatrix.txt','w');
fprintf(fid,'%8s %8s\n','x','y');
fprintf(fid,'%8.2f %8.2f\n',a');
fclose(fid);