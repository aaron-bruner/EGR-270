days = [7 21 35 49 63 77 91];
heights = [8.5 21 50 77 89 98 99];
num_of_days = length(days);
const_H = 102;

lhs = -ones(num_of_days,2);
lhs(:,2) = -days;
rhs = log(const_H./heights - 1)';
X = lhs \ rhs;
a = X(1); b = X(2);
fprintf('a = %.4f, b = %.4f \n', a, b);

height_at_day40 = const_H / (1 + exp(-(a+b*40)));
fprintf('Height (for Day = 40) = %.4f \n', height_at_day40);

day_plot = 7:0.1:91;
height_plot = const_H ./ (1 + exp(-(a+b*day_plot)));
scatter(days,heights); hold on
plot(day_plot,height_plot)
xlabel('Day'), ylabel('Height')
title('Best Fit Plot');
legend('Days', 'Best Fit');