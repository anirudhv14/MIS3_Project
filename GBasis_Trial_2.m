clear all;clc;
format bank
syms l1 l2 px pz s1 c1 s2 c2 py
F = [l2*c1*c2 - px, l2*s1*c2-py, l2*s2+l1-pz, c1^2+s1^2-1, c2^2+s2^2-1];
G = gbasis(F, [s1 c1 s2 c2 py],'MonomialOrder', 'lexicographic');
ww = size(G);
for i=1:ww(2)
    disp(G(i))
end
GG1 = subs(G(5), [l1, l2, px, pz], [30, 45, 45*sqrt(6)/4, 45*sqrt(2)/2+30]);
SSS = solve(GG1 , py,'ReturnConditions',true);
disp(vpa(SSS.py,7))
%GG2 = subs(G(3), [l2, l1, pz], [45, 30, 45*sqrt(2)/2+30]);
%SS2 = solve(GG2 , s2,'ReturnConditions',true);
%disp(rats(SS2.s2))