syms t u

x = t^2;
y = u/(1+t^2)^(1/2);
z = t*u/(1+t^2)^(1/2);

ezsurf(x, y, z, [-1, 1, -1, 1])
title('Guarda-chuva de Whitney')