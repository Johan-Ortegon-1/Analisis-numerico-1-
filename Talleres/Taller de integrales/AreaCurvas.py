import matplotlib.pyplot as plt
from scipy.interpolate import lagrange
from sympy import *
#Coordenadas de la funciones F(x) y G(x)
x_f = [3, 0.5, -2]
y_f = [0, 6.25, 0]
x_g = [0.30278, -1.5, -3.3028]
y_g = [0, -3.25, 0]

x = symbols('x')
#Interpolacion de las funciones
fx = lagrange(x_f, y_f)
gx = lagrange(x_g, y_g)
print('interpo: ',fx);print('interpo: ',gx)

#Busqueda de puntos de corte y conversion de poli1d a funcion
expresionAB = fx-gx
funcionAB = expresionAB.__call__(x)
derivadaF = funcionAB.diff(x)
print(funcionAB)

#Declaracion del X inicial y tolerancia
X0 = -5
Tol = 0.0001
cont_iteraciones = 0.0
err = 1.0

#Busqueda de raices de la funcion
while (err > Tol) & (cont_iteraciones < 50.0):

    modificar = funcionAB.evalf(subs={x: X0})/derivadaF.evalf(subs={x: X0})
    X1 = X0 - modificar
    err = abs(X1 - X0)
    print('#iteracion: ', cont_iteraciones,'\t X1: ' ,X1, 'error: ', err, 'Modificar: ', modificar)

    X0 = X1
    cont_iteraciones = cont_iteraciones+1
#Nueva declaracion del X inicial y tolerancia
err = 1.0
X2 = X0
X0 = 5
cont_iteraciones = 0.0

#Busqueda de raices de la funcion
while (err > Tol) & (cont_iteraciones < 50.0):

    modificar = funcionAB.evalf(subs={x: X0})/derivadaF.evalf(subs={x: X0})
    X1 = X0 - modificar
    err = abs(X1 - X0)
    print('#iteracion: ', cont_iteraciones,'\t X1: ' ,X1, 'error: ', err, 'Modificar: ', modificar)
    X0=X1
    cont_iteraciones = cont_iteraciones+1
#Examinar cual grafica esta ubicada sobre la otra
if fx(-1) - gx(-1) > 0:

    funcioni = integrate(funcionAB,(x, X2, X0))
    print(funcioni)

else:
    expresionBA = gx - fx
    funcionBA = expresionBA.__call__(x)
    funcioni = integrate(funcionBA, (x, X2, X0))
    print(funcioni)

# Graficar ambas funciones
x = range(-10, 10)
plt.title('Area Entre curvas')
plt.grid()
plt.plot(x,fx(x), '.-', x,gx(x), '.-')
plt.xlim(-10, 10)
plt.ylim(-15, 15)
plt.xlabel('x')
plt.ylabel('y')
plt.show()
