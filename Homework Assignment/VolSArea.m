function [V, S] = VolSArea(r,R,h)
V=(((pi*h)/3)*(R^2+R*r+r^2))/1.805;

l=sqrt((R-r)^2+h^2);
S=(pi*l)*(R+r)+pi*r^2;