name=input('Enter your name : ','s');
age=input('Enter your age : ');
fid = fopen('mysimpsons.txt','w');
fprintf(fid, 'My name is %s Simpson.  I am %i years old.\n', name, age);
fclose(fid);