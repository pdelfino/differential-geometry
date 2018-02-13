%helicoide

syms t u 

x_E = u*sin(t);
y_E = u*cos(t);
z_E = t;

ezsurf(x_E, y_E, z_E, [-pi, pi, -1, 1])
title('Helicoide')