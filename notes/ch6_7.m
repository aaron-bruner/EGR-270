sum = 0;
m = randi([-20,20],1,30);
    for j=1:length(m)
        if rem(m(j),3)==0
            sum = j + sum;
        end
    end
    
% v = randi([-20 20], 1,30);
% fprintf('sum is %i\n',sum(v(rem(v,3)==0)));