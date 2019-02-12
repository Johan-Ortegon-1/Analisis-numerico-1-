import matplotlib.pyplot as plt
#MODULO PARA ACCIONES GRAFICAS
from pylab import *
#MODULO PARA EL MANEJO DE OPERACIONES MATEMATICAS Y MODULOS
from sympy import *
from array import array
t =  symbols('t')
PosX = 2*cos(t) - 2
PosY = sin(t) - 1
derivadaX = PosX.diff(t)
derivadaY = PosY.diff(t)
#Declaracion del X y Y inicial
X0 = 5
Y0 = 0
#Declarciond e la tolerancia
Tol = 0.0001
cont_iteraciones = 0.0
err = 1.0
#Arreglos comportamiento de Newton
ArrayX = []
ArraYNumIteraciones = []

ArrayY = []
ArraYNumIteracionesY = []
#Ciclo del algoritmo (Iteraciones)
while (err > Tol) & (cont_iteraciones < 50.0):

    modificar = PosX.evalf(subs={t: X0})/derivadaX.evalf(subs={t: X0})
    X1 = X0 - modificar
    err = abs(X1 - X0)
    print("{:^10}{:.3f}{:^10}{:.4f}{:^10}{:.4f}{:^10}{:.4f}".format('#iteracion: ', cont_iteraciones,'\t X1: ' ,X1, 'error: ', err, 'Modificar: ', modificar))
    ArrayX.append(err)
    ArraYNumIteraciones.append(cont_iteraciones)
    X0=X1
    cont_iteraciones = cont_iteraciones+1
#REINICIAR VARIABLES
err = 1
cont_iteraciones = 0
while (err > Tol) & (cont_iteraciones < 20.0):

    modificar = PosY.evalf(subs={t: Y0})/derivadaY.evalf(subs={t: Y0})
    Y1 = Y0 - modificar
    err = abs(Y1 - Y0)
    print("{:^10}{:.3f}{:^10}{:.4f}{:^10}{:.4f}{:^10}{:.4f}".format('#i: ', cont_iteraciones, 'Y1: ', Y1, 'E: ', err, ' Modificar: ', modificar))
    ArrayY.append(err)
    ArraYNumIteracionesY.append(cont_iteraciones)
    Y0=Y1
    cont_iteraciones = cont_iteraciones+1


plt.plot(ArraYNumIteracionesY,ArrayY)
plt.ylabel("Error")
plt.xlabel("Número de iteraciones")
plt.show()
