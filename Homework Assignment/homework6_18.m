n = 1;
for h=1:50
    for k=1:50
        j=sqrt(h^2+k^2);
        if j==round(j)
            if j<=50
                a(n)=h;
                b(n)=k;
                c(n)=j;
            n=n+1;
            end
        end
    end
end
for i=1:length(a)
    if b(i)>a(i) && c(i)>b(i)
      fprintf('%2d %2d %2d\n',a(i),b(i),c(i))
    end
end