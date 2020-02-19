filename = input('Enter scores file please: ', 's');
fin = fopen(filename, 'r');
fgetl(fin);
 A = fscanf(fin, '%s', 1);
val1 = fscanf(fin, '%f', [6 1])';
 B = fscanf(fin, '%s', 1);
val2 = fscanf(fin, '%f', [6 1])';
 C = fscanf(fin, '%s', 1);
val3 = fscanf(fin, '%f', [6 1])';
 D = fscanf(fin, '%s', 1);
val4 = fscanf(fin, '%f', [6 1])';
fclose(fin);

lhs = [val1([1:2,4:5]); val2([1:2,4:5]); val3([1:2,4:5]); val4([1:2,4:5])];
rhs = [val1(6);val2(6);val3(6);val4(6)];
a = lhs \ rhs;

filename = input('Enter output file name: ', 's');
fout = fopen(filename, 'w');
fprintf(fout, '%7s%7.1f\n', 'Eagles', a(1,:));
fprintf(fout, '%7s%7.1f\n', 'Birdies', a(2,:));
fprintf(fout, '%7s%7.1f\n', 'Bogeys', a(3,:));
fprintf(fout, '%7s%7.1f\n', 'Doubles', a(4,:));
fclose(fout);