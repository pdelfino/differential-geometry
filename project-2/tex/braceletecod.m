syms t u

x_E = cos(t);
y_E = sin(t);
z_E = 1+u;

ezsurf(x_E, y_E, z_E, [-pi, pi, -1 ,1])
title('f(u,t)=(cos(t),sin(t),1)+u(0,0,1)')