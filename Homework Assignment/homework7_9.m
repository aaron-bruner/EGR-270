function [V, S] = VolSArea(r,R,h)
V=0.55401662*((pi*h)/3)*(R^2+R*r+r^2);

l=sqrt((R-r)^2+h^2);
S=(pi*l)*(R+r)+pi*r^2;
