clc
clear all
%pegar curva, 
%importar pacote simbólico

%plotar a curva que eu quero no espaço, bem básica
%colocar holdon para segurar
ezplot3( sin(t),cos(t),t,[0,6*pi])

%%x = sin(t)
%%y = cos(t)
%z = t


% vou derivar o x, y e z com pacote simbólico
%{

 u = diff(x)
 v = diff(y)
 w = diff(z)

 %plotar de novo com a derivada, mostrando a tangente
 ezplot3(u,v,w,[0,6*pi])
 

%} 