x = [5 9 2 0];
n = length(x);
for PASS = 1:n-1
    for BLUE =1:n-PASS
        if x(BLUE) > x(BLUE+1)
            TEMP = x(BLUE+1);
            x(BLUE+1)=x(BLUE);
            x(BLUE)=TEMP;
        end
    end
end
