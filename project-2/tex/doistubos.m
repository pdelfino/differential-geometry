syms v u

f = [6*cos(u/sqrt(37)) 6*sin(u/sqrt(37)) u/sqrt(37)]

g = [cos(u/sqrt(2)) sin(u/sqrt(2)) u/sqrt(2)]

tubo(f, [0 100], 1)
hold on
tubo(g, [0 25], 1)