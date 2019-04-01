  library(PolynomF)
  pend  = NULL
  coord = NULL
  coorx = NULL
  
  criterioEuclidiana <- function(d1,d2)
  {
    resultado = sqrt((x[d2]-x[d1])^2+(y[d2]-y[d1])^2)
    return(resultado)
  }
  
  lineal <- function(d1,d2,pend,coord,x,y){
   
    if(d2 <=length(x))
    { 
      if( x[d2] == x[d1]) { m = 0.0000001 } 
      else
      {
        if( y[d2] == y[d1]) 
        { 
          m = 0.000001 
        } 
        else
        { 
            m = (y[d2]-y[d1])/(x[d2]-x[d1])
        }
      }
      
      cat("resta",pend[length(pend)], "-",m,"=",abs(pend[length(pend)] - m),"\n")
      
      if( abs(pend[length(pend)] - m)  < 0.5)
      {
        cat("1) d1:",d1," d2:",d2,"\n")
        lineal(d1,d2+1,pend,coord,x,y)
      }
      else 
      {
        if( x[d2] == x[d2-1]) { m = 99999}
        else 
          {
            if( y[d2] == y[d2-1]) 
            { 
              m = 0.000001 
            } 
            else
            { 
                m = (y[d2]-y[d2-1])/(x[d2]-x[d2-1])
            }
          }
        #m = (y[d2]-y[d2-1])/(x[d2]-x[d2-1])
        pend[length(pend)+1] = m
        cat("2) d1:",d2-1," d2:",d2,"\n")
        cat("m:",m,"\n")
        coord[length(coord)+1] = d2-1
        lineal(d2,d2+1,pend,coord,x,y)
      }
    }
    else
    {
      coord[length(coord)+1] = length(x)
      return(coord) 
      
    }
  }
  cuadratic <- function(d1,d2,pend,coorx)
  {
    if(d2<=length(coord))
    {
      m = (y[coord[d2]]-y[coord[d2-1]])/(x[coord[d2]]-x[coord[d2-1]])
      m1 = pend[length(pend)]
      if( length(pend) < 0.5) { m0 = m1+1 }
      else { m0 = pend[length(pend)-1] }
      
      cat("m0: ",m0," m1: ",m1," m: ",m,"\n")
      if( m0 - m1 >0)
      {
        if( m1 > m)
        {
          pend[length(pend)+1] = m
          cuadratic(d2,d2+1,pend,coorx)
        }
        else
        {
          pend[length(pend)+1] = m
           cat("1) d1:",coord[d2-1]," d2:",coord[d2],"\n")
          cat("m:",m,"\n")
          coorx[length(coorx)+1] = d2-1
          print(coorx)
          cuadratic(d2,d2+1,pend,coorx)
        }
      }
      else
      {
        if( m1 > m)
        {
          pend[length(pend)+1] = m
          cuadratic(d2,d2+1,pend,coorx) 
        }
        else
        {
          pend[length(pend)+1] = m
          cat("2) d1:",coord[d2-1]," d2:",coord[d2],"\n")
          cat("m:",m,"\n")
          coorx[length(coorx)+1] = d2-1
          print(coorx)
          cuadratic(d2,d2+1,pend,coorx)
        }
        
      }
  
    }
    else
    {
  
      cat("return",coorx)
      return(coorx)
    }
  }
  
  
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
    
  
  datosX = x[1:67]
  datosY = y[1:67]
  
  m = (y[2]-y[1])/(x[2]-x[1])
  pend[1] = m
  coord[1] = 1
  coord<-lineal(2,3,pend,coord,x,y)
  print (coord)
 
  
  cat(length(x)-1)
  plot(datosX,datosY, pch=7, cex=0.5, col = "red", asp=1,xlab="X", ylab="Y", main="Diagrama")

  print(length(coord)-1)
  for(i in 1:(length(coord)-1))
  {
    print(i)
    datosX1 = NULL
    datosY1 = NULL
    datosX1[1]= x[coord[i]]
    datosX1[2]= x[coord[i+1]]
    datosY1[1]= y[coord[i]]
    datosY1[2]= y[coord[i+1]]
    cat("X",datosX1,"\n")
    cat("Y",datosY1,"\n")
    if(datosX1[1] - datosX1[2] != 0)
    {
    polinomioLagrange = NULL
    polinomioLagrange = poly.calc(datosX1,datosY1)
    print(polinomioLagrange)
    
    points(datosX1,datosY1, pch=7, cex=1, col = "gray", asp=1,xlab="X", ylab="Y", main="Diagrama")
    par(new=TRUE)
    curve(polinomioLagrange,add=T,datosX1[1],datosX1[2])
    }
  }
  