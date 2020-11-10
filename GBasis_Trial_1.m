clear all;close all;clc
syms x y z
p = [x^2+x*y-10, x^3+x*y^2-26, x^4+x*y^3-70];
gbasis(p);
q = [x^2*z - y, x^2 + x*y - y*z, x*z^2 + x*z - x];
gbasis(q);
r = [x*y-1, y^2-1];
G = gbasis(r);
Gd = [G(1,2) G(1,1)]