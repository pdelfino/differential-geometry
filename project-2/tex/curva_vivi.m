syms t u

x = (1 + cos(t)- u*sin(t));
y = (sin(t)+ u*cos(t));
z = (2*sin(t/2)+ u*cos(t/2));

ezsurf(x, y, z, [0, 4*pi, -4 , 4])
title('Curva de Viviani')