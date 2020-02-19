g = 9.81; %m/s^2
theta = 15:10:75;
v0 = 260;
s = v0^2/g*sind(2*theta); % Maximum Distance
h = v0^2*sind(theta).*sind(theta)/2*g; % Minimum Distance

fprintf('%-12.2f %-12.2f\n', max(s), min(h));