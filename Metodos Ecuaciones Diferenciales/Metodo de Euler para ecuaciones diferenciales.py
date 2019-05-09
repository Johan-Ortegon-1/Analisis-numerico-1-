import numpy as np
import matplotlib.pyplot as plt
import math

def funcion(x,y):
    ecuacion = x+2*y
    return ecuacion




h = float(input("Paso: "))
limite = float(input("Hasta que valor?: "))
if(h > 0):
    divisiones = int((limite/h)+1)
    x = np.zeros(divisiones)
    x = x.astype(float)  # se cambia el tipo de dato de entero a flotante
    y = np.zeros(divisiones)
    print(x[0],y[0])
    for i in np.arange(1, divisiones):#arange(): Moverse por cualquier tipo de intervalo pasado por parametro (decimales, enteros..)
        y[i] = y[i-1] + (funcion(x[i-1], y[i-1]))*h
        x[i] = x[i-1] + h
        print(x[i], y[i])
    plt.scatter(x, y)
    plt.show()
else:
    print("La cagaste Wey :v no puede haber un paso de cero....")
    exit(0)




