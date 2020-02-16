%script writer for xlswrite
a=[
    1   2;
    3   4;
    5   6;
    ];
b=[
    7   8   9;
    10  11  12;
    ];
xlswrite('junk.xlsx',a,'matrix1','c5');
xlswrite('junk.xlsx',b,'matrix2','d10');