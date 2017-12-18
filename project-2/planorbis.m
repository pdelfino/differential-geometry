%=== Helice espiral ===%

syms t theta

x1 = t*cos(t);
y1 = t*sin(t);
z1 = t;

%ezplot3(x1,y1,z1, [-10*pi, 0])


%=== Concha gerada a partir da helice ===%

dx1 = diff(x1);
dy1 = diff(y1);
dz1 = diff(z1);

% Vetor tangente a helice em (x1, y1, z1)
T = [dx1,dy1,dz1];

d2x1 = diff(dx1);
d2y1 = diff(dy1);
d2z1 = diff(dz1);

nx1 = d2x1/norm([d2x1,d2y1,d2z1]);
ny1 = d2y1/norm([d2x1,d2y1,d2z1]);
nz1 = d2z1/norm([d2x1,d2y1,d2z1]);

% Vetor normal a helice em (x1, y1, z1)
N = [nx1,ny1,nz1];

%Vetor binormal a helice em (x1, y1, z1)
B = cross(N,T);

bx1 = B(1);
by1 = B(2);
bz1 = B(3);

%Pontos da elipse de centro (x1, y1, z1)
X = x1 + (t*cos(theta)*nx1 + sin(theta)*bx1);
Y = y1 + (t*cos(theta)*ny1 + sin(theta)*by1);
Z = z1 + (t*cos(theta)*nz1 + sin(theta)*bz1);

ezsurf(X, Y, Z, [-6*pi, 0, 0, 2*pi])
title('Planorbis seashell');

