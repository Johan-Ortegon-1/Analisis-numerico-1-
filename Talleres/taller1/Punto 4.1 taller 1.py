from sympy import *

t = symbols('t')
Fn1 = 2 - exp(t)
derivadaFn1 = Fn1.diff(t)

# Declaracion del X0 inicial
X0 = 1

# Declarcion de la tolerancia
Tol = 0.0001
cont_iteraciones = 0.0
err = 1.0

# Ciclo del algoritmo Newton (Iteraciones)
print('Metodo de Newton')
while (err > Tol) & (cont_iteraciones < 50.0):
    modificar = Fn1.evalf(subs={t: X0}) / derivadaFn1.evalf(subs={t: X0})
    X1 = X0 - modificar
    err = abs(X1 - X0)
    print(
        "{:^10}{:.3f}{:^10}{:.5f}{:^10}{:.4f}".format('#iteracion: ', cont_iteraciones, '\t X1: ', X1, 'error: ', err))
    X0 = X1
    cont_iteraciones = cont_iteraciones + 1

# Inicializacion de variables
cont_iteraciones = 0.0
err = 1.000
X0 = 1
X1 = 2
# Ciclo del algoritmo Secante (Iteraciones)
print('\nMetodo Secante')
while err > Tol:
    X2 = X1 - (((X1 - X0) * Fn1.evalf(subs={t: X1})) / (Fn1.evalf(subs={t: X1}) - Fn1.evalf(subs={t: X0})))
    err = abs(Fn1.evalf(subs={t: X2}))
    print(
        "{:^10}{:.3f}{:^10}{:.5f}{:^10}{:.4f}".format('#iteracion: ', cont_iteraciones, '\t X2: ', X2, 'error: ', err))
    # print('#iteracion: ', cont_iteraciones,'\t X2: ' ,X2, 'error: ', err)
    X0 = X1
    X1 = X2
    cont_iteraciones = cont_iteraciones + 1
