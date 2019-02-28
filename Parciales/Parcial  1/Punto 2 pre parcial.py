from sympy import *

x = symbols('x')
funcion1 = tan(pi*x)
funcion2 = cos(pi*x)
#print(funcion2(98).evalf())
print(funcion1.evalf(subs={x: 98}))

"""
Para hallar la interseccion entre las funciones es necesario restarlas para producir una nueva funcion, su 
resultado sera una nueva funcion, los ceros de esa nueva funcion seran los puntos de interseccion de las 
funciones anteriores. 
"""
funcion3 = funcion1 - funcion2
print("Funcion 3: ", funcion3)
#valores iniciales de xn-1 y xn-2 para iniciar la primera iteracion del algoritmo.
xn_1 = 1
xn_2 = 1.1
xn = xn_1-((funcion3.evalf(subs={x: xn_1})*(xn_1-xn_2))/(funcion3.evalf(subs={x: xn_1})-funcion3.evalf(subs={x: xn_2})))
Tolerancia = 0.0001
contador=0
while abs(xn - xn_1) > Tolerancia:
    xn_2 = xn_1
    xn_1 = xn
    xn = xn_1 - ((funcion3.evalf(subs={x: xn_1}) * (xn_1 - xn_2)) / (
                funcion3.evalf(subs={x: xn_1}) - funcion3.evalf(subs={x: xn_2})))
    contador = contador+1
    print("{:^30}{:.0f}{:^20}{:.4f}{:^20}{:.4f}{:^20}{:.4f}{:^20}{:.4f}".format('iteración', contador, "xn: "
        , xn.evalf(), 'xn-1: ', xn_1, 'xn_2: ', xn_2, 'Error: ', abs(xn - xn_1)))

