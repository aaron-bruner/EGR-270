x = [20, 26, 32, 38, 44, 50, 56, 62, 68];

A = 8*pi/180; % aplha degrees to radians

vb = sqrt( (x.^2) + (x.*tan(A) - 8).^2 );

vt = sqrt( (x.^2) + (x.*tan(A) - 30).^2 );

theta = acos( (vb.^2 + vt.^2 - 484) ./ (2 .* vb .* vt));

theta = theta .* 180/pi; %converting to degrees

matrix = zeros(length(x),2);

for i=1:length(x)

matrix(i,1) = x(i);

matrix(i,2) = theta(i);

end

disp(matrix);