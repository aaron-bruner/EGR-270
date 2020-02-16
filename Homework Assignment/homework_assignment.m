%Aaron Bruner
%EGR-270-102
%Homework

%Creating matrix A
A = [7 5 2 -3 6;
    5 9 2 7 3;
    8 -1 2 0 -9];

%Printing matrix A to the command window with two character spacing
%avaliable.
fprintf('%2i %2i %2i %2i %2i\n', A'); 
%                                 ^
% The assignment didn't state whether it needed to be exactly like the
% matrix provided. If it does not need to be then the matrix transpose
% operator can be removed.










%%% Practice Code %%%

%Using fid to print answer to a file in the format txt.
%fid = fopen('homework.txt','w');
%fprintf(fid,'%i %2i %2i %2i %2i\n', A'); 
%fclose(fid);

%Using xlswrite to transfer matrix A into an Excel file
%xlswrite('homework.xlsx',A,'homework','a1');