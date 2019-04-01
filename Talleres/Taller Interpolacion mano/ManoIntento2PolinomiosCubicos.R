library(PolynomF)

x=c(14.65, 14.71, 14.6, 14.8, 15.2, 15.6, 15.7, 17.0, 17.6, 17.52, 17.3, 16.8, 15.4, 14.83, 14.4, 14.5, 15.0, 15.1, 15.0, 14.9, 14.6, 14.3, 14.0, 13.9, 13.8, 13.5, 13.1, 13.0, 13.3, 13.2, 13.1, 12.9, 12.4, 11.9, 11.7, 11.6, 11.3, 10.9, 10.7, 10.6, 10.6, 10.1, 9.7, 9.4, 9.3, 9.6, 9.9, 10.1, 10.2, 10.3, 10.0, 9.50, 9.10, 8.6, 7.5, 7.0, 6.7, 6.6, 7.70, 8.00, 8.10, 8.40,9.20, 9.30, 10, 10.2, 10.3)
y=c(14.7, 14.33, 13.4, 12.33, 11.0, 10.5, 10.22, 8.20, 7.10, 6.70, 6.60, 6.80, 8.30, 8.80, 9.30, 8.80, 6.30, 5.50, 5.00, 4.70, 4.60, 4.50, 4.90, 5.40, 5.80, 6.90, 8.20, 7.60, 5.80, 4.50, 4.30, 3.90, 4.20, 5.70, 7.00, 7.90, 8.20, 7.30, 6.70, 5.50, 5.10, 4.60, 4.7, 5.0, 5.5, 7.2, 7.8, 8.60, 9.40, 10.0, 10.7, 11.0, 10.7, 9.9, 9.0, 9.1, 9.3, 9.7, 11.7, 12.3, 12.5, 13.0,13.91, 14.9, 16, 16.4, 16.8)     
x2=c(14.65, 14.71, 14.6, 14.8, 15.1, 16.2, 17.2, 18.0, 18.6, 18.52, 18.3, 17.8, 16.4,15.6, 15.7, 17.0, 17.6, 17.52, 17.3, 16.8, 15.4, 14.83, 14.4, 14.5, 15.0, 15.1, 15.0, 14.9, 14.6, 14.3, 14.0, 13.9, 13.8, 13.5, 13.1, 13.0, 13.3, 13.2, 13.1, 12.9, 12.4, 11.9, 11.7, 11.6, 11.3, 10.9, 10.7, 10.6, 10.6, 10.1, 9.7, 9.4, 9.3, 9.6, 9.9, 10.1, 10.2, 10.3, 10.0, 9.50, 9.10, 8.6, 7.5, 7.0, 6.7, 6.6, 7.70, 8.00, 8.10, 8.40,9.20, 9.30, 10, 10.2, 10.3)
y2=c(14.7, 14.33, 13.4, 12.33, 11.8, 11.1, 10.4, 9.20, 8.10, 7.70, 7.60, 7.80, 9.30,10.5, 10.22, 8.20, 7.10, 6.70, 6.60, 6.80, 8.30, 8.80, 9.30, 8.80, 6.30, 5.50, 5.00, 4.70, 4.60, 4.50, 4.90, 5.40, 5.80, 6.90, 8.20, 7.60, 5.80, 4.50, 4.30, 3.90, 4.20, 5.70, 7.00, 7.90, 8.20, 7.30, 6.70, 5.50, 5.10, 4.60, 4.7, 5.0, 5.5, 7.2, 7.8, 8.60, 9.40, 10.0, 10.7, 11.0, 10.7, 9.9, 9.0, 9.1, 9.3, 9.7, 11.7, 12.3, 12.5, 13.0,13.91, 14.9, 16, 16.4, 16.8)

xrev = NULL
yrev = NULL
j = length(x)
for( i in 1:length(x))
{
xrev[i] = x[j]
yrev[i] = y[j]
j = j-1
}

plot(x,y,col="blue",main = "Interpolación cúbica")
length(x)
segmento_mano = NULL
datosx=NULL
datosy=NULL
resta = 0
resta_anterior = 0 
contador = 0
cont_array_fragmento = 1
fin_ciclo = length(x)-1
for(i in 1:fin_ciclo)
{
resta = y[i]-y[i+1]
multiplicacion = resta*resta_anterior

if(multiplicacion < 0) # CAMBIO DE SENTIO SI RESTA Y SU ANTERIOR TIENEN DIFERENTES SIGNOS 
{
  segmento_mano[cont_array_fragmento] = i
  cont_array_fragmento = cont_array_fragmento+1
  contador = contador+1
  cat(segmento_mano,"\n")

  #EXTRACCION DE LOS DATOS QUE SE USARAN EN LA INTERPOLACION
  punto_fin = length(segmento_mano)
  
  datosx[1] = x[segmento_mano[1]]#TOMAR EL PRIMER DATO
  datosx[2] = x[segmento_mano[2]]#TOMAR EL PRIMER DATO
  datosx[3] = x[segmento_mano[punto_fin]]#TOMAR EL ULTIMO DATO
  
  datosy[1] = y[segmento_mano[1]]#TOMAR EL PRIMER DATO
  datosy[2] = y[segmento_mano[2]]#TOMAR EL PRIMER DATO
  datosy[3] = y[segmento_mano[punto_fin]]#TOMAR EL ULTIMO DATO
  
  cat("EL ultimo dato es: ",datosy[3])
  
  if(length(segmento_mano) > 3)
  {
    datosx[4] = x[segmento_mano[punto_fin-1]]
    datosy[4] = y[segmento_mano[punto_fin-1]]
    polinomioInterpolante = poly.calc(datosx,datosy)
    curve(polinomioInterpolante, add=T, from = datosx[1], to = datosx[3])
  }
  else
  {
    polinomioInterpolante = poly.calc(datosx,datosy)
    curve(polinomioInterpolante, add=T, from = datosx[1], to = datosx[3]) 
  }
  segmento_mano = NULL
  cont_array_fragmento = 1
}
else
{
  cat("otro:",y[i],"\n")
  segmento_mano[cont_array_fragmento] = i
  cont_array_fragmento = cont_array_fragmento+1
}
resta_anterior = resta
}

punto_fin = length(segmento_mano)

datosx[1] = x[segmento_mano[1]]#TOMAR EL PRIMER DATO
datosx[2] = x[segmento_mano[2]]#TOMAR EL PRIMER DATO
datosx[3] = x[segmento_mano[punto_fin]]#TOMAR EL ULTIMO DATO

datosy[1] = y[segmento_mano[1]]#TOMAR EL PRIMER DATO
datosy[2] = y[segmento_mano[2]]#TOMAR EL PRIMER DATO
datosy[3] = y[segmento_mano[punto_fin]]#TOMAR EL ULTIMO DATO

cat("EL ultimo dato es: ",datosy[3])

if(length(segmento_mano) > 3)
{
datosx[4] = x[segmento_mano[punto_fin-1]]
datosy[4] = y[segmento_mano[punto_fin-1]]
polinomioInterpolante = poly.calc(datosx,datosy)
curve(polinomioInterpolante, add=T, from = datosx[1], to = datosx[3])
}else
{
polinomioInterpolante = poly.calc(datosx,datosy)
curve(polinomioInterpolante, add=T, from = datosx[1], to = datosx[3]) 
}
segmento_mano = NULL
cont_array_fragmento = 1
