v = input('Enter A Vector : ');
POS=[];
for i=1:length(v)
    if v(i)>0
        POS=[POS v(i)];
    end
end
fprintf('%d ',v); fprintf('\n');
fprintf('%d ',POS); fprintf('\n');
fprintf('%d\n', length(v) - length(POS));