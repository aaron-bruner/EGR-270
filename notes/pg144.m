x=[-2:0.01:4];
y=3*x.^3-26*x+6
yd=9*x.^2-26;
ydd=18*x;
plot(x,y,'LineStyle','-','color','b');
line(x,yd,'LineStyle','--','color','r');
line(x,ydd,'LineStyle',':','color','k');