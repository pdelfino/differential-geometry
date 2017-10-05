#!/usr/bin/env python
# -*- coding: utf-8 -*-

#importar as bibliotecas necessárias
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# n aqui funciona como o nível de precisao da curvatura
# no fundo, a curva, computacionalmente, e um conjunto de retas bem pequenas
# quanto maior o n, melhor fica a curva, mais distante de uma reta
n = 1000

#plotar figura
fig = plt.figure()

#comando da biblioteca do matplotlib para criar 3 eixos e projetar em 3 dimensões
ax = fig.add_subplot(111, projection='3d')

#numero de voltas, quanto maior o theta, mais voltas 16pi voltas
theta_max = 16 * np.pi

#retorna um conjunto de pontos
theta = np.linspace(0, theta_max, n)

# parâmetro
x = theta

#função seno com o parâmetro
z =  np.sin(theta)

#função cosseno com o parâmetro
y =  np.cos(theta)

#criar a figura com os parâmetros da função plot
ax.plot(x, y, z, 'b', lw=2)

#executar a figura
plt.show()