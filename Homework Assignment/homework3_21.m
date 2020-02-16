%Aaron Bruner
%Practice problem 3-21

g = 9.81; %m/s^2
theta = [15:10:75]; %Angles in degrees
v0 = 260; %m/s

%Calculate the heights based on the input of different angles
s = v0^2/g * sind(2*theta);
h = v0^2 / 2*g * sind(theta).^2;

%Maximum distance of s and maximum height of h
[maxh, hwhere] = max(h);
[maxs, swhere] = max(s);

%Greatest angle of s & h
theta_biggest_s = theta(swhere)
theta_biggest_h = theta(hwhere)