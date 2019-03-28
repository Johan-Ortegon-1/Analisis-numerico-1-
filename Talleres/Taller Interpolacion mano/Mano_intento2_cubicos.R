library(PolynomF)

x=c(14.65, 14.71, 14.6, 14.8, 15.2, 15.6, 15.7, 17.0, 17.6, 17.52, 17.3, 16.8, 15.4, 14.83, 14.4, 14.5, 15.0, 15.1, 15.0, 14.9, 14.6, 14.3, 14.0, 13.9, 13.8, 13.5, 13.1, 13.0, 13.3, 13.2, 13.1, 12.9, 12.4, 11.9, 11.7, 11.6, 11.3, 10.9, 10.7, 10.6, 10.6, 10.1, 9.7, 9.4, 9.3, 9.6, 9.9, 10.1, 10.2, 10.3, 10.0, 9.50, 9.10, 8.6, 7.5, 7.0, 6.7, 6.6, 7.70, 8.00, 8.10, 8.40,9.20, 9.30, 10, 10.2, 10.3)
#x=c(14.85, 14.65, 14.65, 14.65, 15.2)
#y=c(14.7, 14.33, 13.4, 12.33, 11.0)
y=c(14.7, 14.33, 13.4, 12.33, 11.0, 10.5, 10.22, 8.20, 7.10, 6.70, 6.60, 6.80, 8.30, 8.80, 9.30, 8.80, 6.30, 5.50, 5.00, 4.70, 4.60, 4.50, 4.90, 5.40, 5.80, 6.90, 8.20, 7.60, 5.80, 4.50, 4.30, 3.90, 4.20, 5.70, 7.00, 7.90, 8.20, 7.30, 6.70, 5.50, 5.10, 4.60, 4.7, 5.0, 5.5, 7.2, 7.8, 8.60, 9.40, 10.0, 10.7, 11.0, 10.7, 9.9, 9.0, 9.1, 9.3, 9.7, 11.7, 12.3, 12.5, 13.0,13.91, 14.9, 16, 16.4, 16.8)     
plot(x,y,col="blue")
length(x)
segmento_mano = NULL
datosx=NULL
datosy=NULL
resta = 0
resta_anterior = 0 
contador = 0
cont_array_fragmento = 1
fin_ciclo = length(x)-1
for(i in 1:fin_ciclo)#LOS ARREGLOS EN r EMPIEZAN DESDE 1
{
  #cat(x[i],"\n")
  resta = y[i]-y[i+1]
  multiplicacion = resta*resta_anterior
  
  if(multiplicacion < 0) # CAMBIO DE SENTIO SI RESTA Y SU ANTERIOR TIENEN DIFERENTES SIGNOS 
  {
    #cat("Se encontro el cambio",contador,"\n")
    segmento_mano[cont_array_fragmento] = i
    cont_array_fragmento = cont_array_fragmento+1
    #cat(multiplicacion)
    contador = contador+1
    # for(j in 1:cont_array_fragmento)
    # {
    #   cat("Valor de",j,segemento_mano[j],"\n")
    cat(segmento_mano,"\n")
    # }
    
    #EXTRACCION DE LOS DATOS QUE SE USARAN EN LA INTERPOLACION
    punto_fin = length(segemento_mano)
    
    datosx[1] = x[segmento_mano[1]]#TOMAR EL PRIMER DATO
    datosx[2] = x[segmento_mano[2]]#TOMAR EL PRIMER DATO
    datosx[3] = x[segmento_mano[punto_fin]]#TOMAR EL ULTIMO DATO
    
    datosy[1] = y[segmento_mano[1]]#TOMAR EL PRIMER DATO
    datosy[2] = y[segmento_mano[2]]#TOMAR EL PRIMER DATO
    datosy[3] = y[segmento_mano[punto_fin]]#TOMAR EL ULTIMO DATO
    
    cat("EL ultimo dato es: ",datosy[3])
    
    if(length(segmento_mano) > 3)
    {
      # datosx[4] = x[segmento_mano[(length(segmento_mano)/2)]]
      # datosy[4] = y[segmento_mano[(length(segmento_mano)/2)]]
      datosx[4] = x[segmento_mano[7]]
      datosy[4] = y[segmento_mano[7]]
    }
    polinomioInterpolante = poly.calc(datosx,datosy)
    curve(polinomioInterpolante, add=T, from = datosx[1], to = datosx[3])
    segmento_mano = NULL
    cont_array_fragmento = 1
    break()
  }
  else
  {
    cat("otro:",y[i],"\n")
    segmento_mano[cont_array_fragmento] = i
    cont_array_fragmento = cont_array_fragmento+1
  }
  resta_anterior = resta
}














