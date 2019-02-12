n = int(input("Ingrese el numero n: "))
while n > 0:
    d = n%2
    n = (n-d)/2
    print('valor de d: ', d)

