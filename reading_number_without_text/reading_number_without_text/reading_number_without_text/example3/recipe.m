filename = input('recipe file : ','s');
fid = fopen(filename,'r');
fscanf(fid,'%s',1); %hop "batches"
batches = fscanf(fid,'%d');
fgetl(fid);
%first ingredient:  this is the most efficient way to do it
first_name = fscanf(fid,'%s',1);
first_vec = fscanf(fid,'%f');
%2nd ingredient: we'll do it differently just to show we can
second_name = fscanf(fid,'%s',1)';
second_vec(1) = fscanf(fid,'%f',1); %just get one
second_vec(2) = fscanf(fid,'%f'); %don't need the 1 here, as the next item isn't digits
%3rd ingredient, like the first, but putting a 1 on the last fscanf
third_name = fscanf(fid,'%s',1)';
third_vec(1) = fscanf(fid,'%f',1); %just get one
third_vec(2) = fscanf(fid,'%f',1); %the 1 doesn't hurt
fclose(fid);

%update the quantities and costs
first_vec(1)  = first_vec(1) * batches;
second_vec(1) = second_vec(1)* batches;
third_vec(1)  = third_vec(1) * batches;
first_vec(2)  = first_vec(1) * first_vec(2);
second_vec(2) = second_vec(1)* second_vec(2);
third_vec(2)  = third_vec(1) * third_vec(2);


fprintf('%d %s at total cost of $%.2f\n', first_vec(1), first_name, first_vec(2));
fprintf('%d %s at total cost of $%.2f\n', second_vec(1), second_name, second_vec(2));
fprintf('%d %s at total cost of $%.2f\n', third_vec(1), third_name, third_vec(2));

fprintf('total cost is %.2f\n', first_vec(2)+second_vec(2)+third_vec(2));
