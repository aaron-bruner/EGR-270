x = [-2:0.01:4];
y = 3*x.^3-26*x+6;
yd= 9*x.^2-26;
ydd=18*x;
hold on
plot(x,y,'-b');
plot(x,yd,'--r');
plot(x,ydd,':k');
hold off
xlabel('\fontsize{12}time [s]');
ylabel('\bfy[m], ydot\rm[m/s], yddot[m/s^2]');
title('\fontname{courier}Flight of a projectile');
text(-1.5, 39, 'maximum');
legend('y','ydot','yddot','location','b');