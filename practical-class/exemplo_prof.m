clc
clear all
%ponto antes de operador faz retornar um vetor
t1 = 0:(2*pi./100):2*pi

x = sin(t1)
y=cos(t1)

dx = cos(t1)
dy = -sin(t1)

for i=1:size(t1,2)
    P = [x(i),y(i)]
    Q = [x(i)+dx(i), y(i)+dy(i)]
    plot3(x,y,t1)
    hold on
    axis([-3 3 -3 3])
    axis equal
    k=0:1./20:1
    Lx=P(1)+(Q(1)- P(1)).*k
    Ly=P(2)+(Q(2)- P(2)).*k
    plot(Lx,Ly)
    pause(0.2)
    hold off
end

