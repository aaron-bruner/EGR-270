%have students predict the output of this script at the board
fid=fopen('outputfile.txt','w');
Q=[9 6 8; 3 5 2; 6 0 0; 1 1 5];
fprintf(fid,'%5.2f %5.2f %5.2f\n',Q);
fclose(fid);