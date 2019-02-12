#MODULO PARA LE MANEJO DE POLINOMIOS
from sympy import *
#MODULO PARA GRAFICAR
import matplotlib.pyplot as plt
from pylab import *
from array import array
#ENTRADA DE POLINOMIO POR CONSOLA
x = symbols('x')
print("valor: ", 5*e)
P1 = input("Por favor ingrese el polinomio a evaluar (use como variable x): ")
poli = Poly(P1)
#ESPECIFICACION DE LIMITES Y ERROR
a = float(input('Por favor introducir valor de límite innferior(a): '))
b = float(input('Por favor introducir valor de límite superior(b): '))
E = float(input('Por favpr ingrese la precision (E): '))

x1 = a
d = (b-a)/10
x0 = x1
x1 = x1 + d

cont_iteraciones = 0

ArrayError = []
ArrayIteraciones = []

while abs(d) >= E:
    if poli(x0)*poli(x1) <= 0:
        x1 = x1 - d
        d = d/10
        x1 = x1 + d
        ArrayError.append(abs(d))
        ArrayIteraciones.append(cont_iteraciones)
        print('{:^30}{:.5f}{:^30}{:.0f}'.format("Error: ", d, " Iteracion: ", cont_iteraciones))
    else:
        #print('valor de d = ', d,'X0', x0, "X1", x1, 'polinomio: ', poli(x0)*poli(x1))
        x0 = x1
        x1 = x1 + d
    if x1 > b:
        print('La función ha superado el límite superior establecido en el rango, intente con uno nuevo')
        break

    cont_iteraciones = cont_iteraciones + 1

print('La raiz es :', x1)
plt.plot(ArrayIteraciones, ArrayError)
plt.ylabel("Error")
plt.xlabel("Número de iteraciones")
plt.show()

# NO OLVIDAR: GRAFICA PARA HallAR LA COMPLEJIDAD Y EL FACTOR DE COMPLEJIDAD
#http://www.famaf.unc.edu.ar/~revm/Volumen22/digital22-3/22-3Converg_li.pdf





