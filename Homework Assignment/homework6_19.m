for a=1:9
    for b=0:9
        for c=0:9
            sum = a*b*c;
            if sum == (6*(a+b+c))
                fprintf('%i%i%i\n', a,b,c);
            end
        end
    end
end