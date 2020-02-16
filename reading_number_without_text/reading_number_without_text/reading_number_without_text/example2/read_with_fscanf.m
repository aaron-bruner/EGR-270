fid = fopen('myfile.txt','r');
fgetl(fid);
barneys_numbers = fscanf(fid,'%f');
name = fscanf(fid,'%s',1); %get string barney
fprintf('name = %s\n', name);
ethels_numbers = fscanf(fid,'%f');
fclose(fid);
fprintf('%i  ',barneys_numbers);
fprintf('\n');
fprintf('%i  ',ethels_numbers);
fprintf('\n');
