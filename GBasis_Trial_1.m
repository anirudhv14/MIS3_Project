clear all;close all;clc
syms x y z
p = [x^2+x*y-10, x^3+x*y^2-26, x^4+x*y^3-70];
gbasis(p);
q = [x^2*z - y, x^2 + x*y - y*z, x*z^2 + x*z - x];
gbasis(q);
r = [x*y-1, y^2-1];
G = gbasis(r);
Gd = [G(1,2) G(1,1)]


syms x y
f = x*y^2-y^3+x^2-1;
d1 = [x*y - 1, y^2 - 1];
d2 = [y^2 - 1, x*y - 1];
[r1,q1] = polynomialReduce(f,d1)
[r2,q2] = polynomialReduce(f,d2)
r = [x*y-1, y^2-1];
G = gbasis(r);
Gd = [G(1,2) G(1,1)]