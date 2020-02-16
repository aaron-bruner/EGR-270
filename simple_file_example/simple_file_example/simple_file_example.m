name='Marge';
age=40;
fid = fopen('mysimpsons.txt','w');
fprintf(fid, 'My name is %s Simpson.  I am %i years old.\n', name, age);
fclose(fid);