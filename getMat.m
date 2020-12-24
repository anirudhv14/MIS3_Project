function T = getMat(a, alp, d, the)
T = [cos(the), -sin(the), 0, a;
     cos(alp)*sin(the), cos(alp)*cos(the), -sin(alp), -d*sin(alp);
     sin(alp)*sin(the), sin(alp)*cos(the), cos(alp), d*cos(alp);
     0, 0, 0, 1];
end