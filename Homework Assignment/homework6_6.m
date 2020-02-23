rows = input('Enter the number of rows ');
colu = input('Enter the number of columns ');
for x=1:rows
    for y=1:colu
        A(x,y)=x*2-y*3;
    end
end
disp(A);