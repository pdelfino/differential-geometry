function tubo(curva, inter, r)
    syms theta
    t = diff(curva)
    Naux = diff(t);
    N = Naux/norm(Naux);
    B = cross(N,t);
    x_E = curva(1) + sqrt(r)*cos(theta)*N(1) + sqrt(r)*sin(theta)*B(1);
    y_E = curva(2) + sqrt(r)*cos(theta)*N(2) + sqrt(r)*sin(theta)*B(2);
    z_E = curva(3) + sqrt(r)*cos(theta)*N(3) + sqrt(r)*sin(theta)*B(3);
    fsurf( x_E, y_E, z_E, [0, 2*pi,inter(1),inter(2)]);
    camlight
    axis equal
end