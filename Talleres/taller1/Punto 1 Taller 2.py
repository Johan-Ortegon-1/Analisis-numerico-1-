from sympy import *

x = symbols('x')
P1 = input("Por favor ingrese el polinomio a evaluar (use como variable x): ")
Polinomio = Poly(P1)
reemplazo_variable = int(input("Por favor ingrese el valor por el que reemplazará la variable: "))
coeficientes = Polinomio.all_coeffs()
resultado = coeficientes[0]
iter = 0
cant_operaciones = 0
while iter < len(coeficientes)-1:
    resultado = reemplazo_variable*resultado + coeficientes[iter+1]
    cant_operaciones = cant_operaciones+2
    iter = iter+1

print("El resultado es: ", resultado, "la cantidad de operaciones fueron: ", cant_operaciones)
