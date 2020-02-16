%Aaron Bruner
%IN-CLASS PRACTICE

%Part A
mu = 0.35; % Friction coefficient
theta = 0:5:35;
F = 70*mu ./ (mu*sind(theta)+cosd(theta))

%Part B
theta = 5:0.01:35; % Angles
F = 70*mu ./ (mu*sind(theta)+cosd(theta));

[Fmin, where] = min(F);
thetaMin = theta(where)