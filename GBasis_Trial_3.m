clear all;close all;clc
syms th1 th2 th3
the = [th1, pi/4, th2, th3, 0];
d = [8, 0, 0, 0, 0];
alp = [0, pi/2, 0, 0, 0];
a = [0, 0, 16, 16, 16];
T0_1 = getMat(a(1), alp(1),d(1),the(1));
T1_2 = getMat(a(2), alp(2),d(2),the(2));
T2_3 = getMat(a(3), alp(3),d(3),the(3));
T3_4 = getMat(a(4), alp(4),d(4),the(4));
T4_5 = getMat(a(5), alp(5),d(5),the(5));
T0_5 = T0_1*T1_2*T2_3*T3_4*T4_5;
x = 4;y = 9;z = 4;
EP = [x ; y ; z];

syms c1 s1 c2 s2 c3 s3
f1 = 8*sqrt(2)*c1*(c2+c3*(c2-s2)-s2-s3*(c2+s2)+1) - x;
f2 = 8*sqrt(2)*s1*(c2+c3*(c2-s2)-s2-s3*(c2+s2)+1) - y;
f3 = 8*sqrt(2)*(c2+c3*(c2+s2)+s2+s3*(c2-s2)+1) + 8 - z;
f4 = s1^2 + c1^2 - 1;
f5 = s2^2 + c2^2 - 1;
f6 = s3^2 + c3^2 - 1;

F = [f1,f2,f3,f4,f5,f6];
G = gbasis(F,[c1 c2 s1 s2 c3 s3],'MonomialOrder','lexicographic');