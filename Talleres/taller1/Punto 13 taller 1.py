# Ingreso de datos
num = float(input('Ingrese el valor de numero a saca raíz: '))
rz = int(input('Ingrese la raiz a sacar: '))
# Inicialización de variables
a = 0  # resultado
cantidad = 0  # raíz más cercana

#Búsqueda de la raiz más cercana o exacta
while cantidad <= num:
    if ( cantidad == num ):
        break
    a = a + 1
    cantidad = a
    for i in range(rz - 1):  # Calculo de raices cercanas
        cantidad = cantidad * a
if cantidad > num:
    a = a - 1

d = (1) / 10  # Declaración de un menor rango de busqueda
#Búsqueda más precisa del valor de la raiz
while (d > 0.01):
    if cantidad == num:
        break
    cantidad = a
    for i in range(rz - 1):
        cantidad = cant * a
    if cantidad < num:
        if cant + d < num:
            a = a + d
            continue
    else:
        break
    d = d / 10
    a = a + d

print('La raiz ', rz, ' de ', num, ' es: ', a)
