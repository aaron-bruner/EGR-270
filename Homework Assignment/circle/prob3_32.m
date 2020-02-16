a = magic(5);
fprintf('sum of colums : %i %i %i %i %i\n', sum(a));
fprintf('sum of rows : \n%i\n%i\n%i\n%i\n%i\n', sum(a')');
fprintf('sum of forward diagonal: %i\n', sum(diag(a)));
fprintf('sum of backwar diagonal: %i\n', (sum(diag(fliplr(a)))));