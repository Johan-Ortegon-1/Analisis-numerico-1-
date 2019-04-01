library(PolynomF)

x=c(14.65, 14.71, 14.6, 14.8, 15.2, 15.6, 15.7, 17.0, 17.6, 17.52, 17.3, 16.8, 15.4, 14.83, 14.4, 14.5, 15.0, 15.1, 15.0, 14.9, 14.6, 14.3, 14.0, 13.9, 13.8, 13.5, 13.1, 13.0, 13.3, 13.2, 13.1, 12.9, 12.4, 11.9, 11.7, 11.6, 11.3, 10.9, 10.7, 10.6, 10.6, 10.1, 9.7, 9.4, 9.3, 9.6, 9.9, 10.1, 10.2, 10.3, 10.0, 9.50, 9.10, 8.6, 7.5, 7.0, 6.7, 6.6, 7.70, 8.00, 8.10, 8.40,9.20, 9.30, 10, 10.2, 10.3)
#x=c(14.85, 14.65, 14.65, 14.65, 15.2)
#y=c(14.7, 14.33, 13.4, 12.33, 11.0)
y=c(14.7, 14.33, 13.4, 12.33, 11.0, 10.5, 10.22, 8.20, 7.10, 6.70, 6.60, 6.80, 8.30, 8.80, 9.30, 8.80, 6.30, 5.50, 5.00, 4.70, 4.60, 4.50, 4.90, 5.40, 5.80, 6.90, 8.20, 7.60, 5.80, 4.50, 4.30, 3.90, 4.20, 5.70, 7.00, 7.90, 8.20, 7.30, 6.70, 5.50, 5.10, 4.60, 4.7, 5.0, 5.5, 7.2, 7.8, 8.60, 9.40, 10.0, 10.7, 11.0, 10.7, 9.9, 9.0, 9.1, 9.3, 9.7, 11.7, 12.3, 12.5, 13.0,13.91, 14.9, 16, 16.4, 16.8)     

xrev = NULL
yrev = NULL
j = length(x)
for( i in 1:length(x))
{
  xrev[i] = x[j]
  yrev[i] = y[j]
  j = j-1
}
x = xrev
y = yrev

DatosX = NULL; DatosY = NULL;
DatosX[1] = x[65];DatosX[2] = x[63]; DatosY[1] = y[65]; DatosY[2] = y[63];
PolinomioLagrance = poly.calc(DatosX,DatosY)
PolinomioLagrance

DatosX1 = NULL; DatosY1 = NULL;
DatosX1[1] = x[63];DatosX1[2] = x[59]; DatosY1[1] = y[63]; DatosY1[2] = y[59];
PolinomioLagrance1 = poly.calc(DatosX1,DatosY1)
PolinomioLagrance1

DatosX2 = NULL; DatosY2 = NULL;
DatosX2[1] = x[59];DatosX2[2] = x[57];DatosX2[3] = x[56]; DatosY2[1] = y[59];DatosY2[2] = y[57];DatosY2[3] = y[56];
PolinomioLagrance2 = poly.calc(DatosX2,DatosY2)
PolinomioLagrance2

DatosX3 = NULL; DatosY3 = NULL;
DatosX3[1] = x[56];DatosX3[2] = x[53]; DatosY3[1] = y[56];DatosY3[2] = y[53];
PolinomioLagrance3 = poly.calc(DatosX3,DatosY3)
PolinomioLagrance3

DatosX4 = NULL; DatosY4 = NULL;
DatosX4[1] = x[53];DatosX4[2] = x[50]; DatosY4[1] = y[53];DatosY4[2] = y[50];
PolinomioLagrance4 = poly.calc(DatosX4,DatosY4)
PolinomioLagrance4

DatosX5 = NULL; DatosY5 = NULL;
DatosX5[1] = x[50];DatosX5[2] = x[47];DatosX5[3] = x[41]; DatosY5[1] = y[50];DatosY5[2] = y[47];DatosY5[3] = y[41];
PolinomioLagrance5 = poly.calc(DatosX5,DatosY5)
PolinomioLagrance5

DatosX6 = NULL; DatosY6 = NULL;
DatosX6[1] = x[41];DatosX6[2] = x[38]; DatosY6[1] = y[41];DatosY6[2] = y[38]
PolinomioLagrance6 = poly.calc(DatosX6,DatosY6)
PolinomioLagrance6

DatosX7 = NULL; DatosY7 = NULL;
DatosX7[1] = x[38];DatosX7[2] = x[35];DatosX7[3] = x[31];DatosX7[4] = x[28]; DatosY7[1] = y[38];DatosY7[2] = y[35];DatosY7[3] = y[31];DatosY7[4] = y[28];
PolinomioLagrance7 = poly.calc(DatosX7,DatosY7)
PolinomioLagrance7

DatosX8 = NULL; DatosY8 = NULL;
#DatosX8[1] = x[37];DatosX8[2] = x[40]; DatosY8[1] = y[37];DatosY8[2] = y[40];
PolinomioLagrance8 = poly.calc(DatosX8,DatosY8)
PolinomioLagrance8

DatosX9 = NULL; DatosY9 = NULL;
DatosX9[1] = x[28];DatosX9[2] = x[26];DatosX9[3] = x[23]; DatosY9[1] = y[28];DatosY9[2] = y[26];DatosY9[3] = y[23];
PolinomioLagrance9 = poly.calc(DatosX9,DatosY9)
PolinomioLagrance9

DatosX10 = NULL; DatosY10 = NULL;
DatosX10[1] = x[23];DatosX10[2] = x[18]; DatosY10[1] = y[23];DatosY10[2] = y[18];
PolinomioLagrance10 = poly.calc(DatosX10,DatosY10)
PolinomioLagrance10

DatosX11 = NULL; DatosY11 = NULL;
DatosX11[1] = x[18];DatosX11[2] = x[15];DatosX11[3] = x[13];DatosX11[4] =x[10]; DatosY11[1] = y[18];DatosY11[2] = y[15];DatosY11[3] = y[13];DatosY11[4]=y[10]
PolinomioLagrance11 = poly.calc(DatosX11,DatosY11)
PolinomioLagrance11

DatosX12 = NULL; DatosY12 = NULL;
DatosX12[1] = x[10];DatosX12[2] = x[1]; DatosY12[1] = y[10];DatosY12[2] = y[1];
PolinomioLagrance12 = poly.calc(DatosX12,DatosY12)
PolinomioLagrance12


plot(x,y,pch=8, cex=1, col = "red", asp=1,xlab="X", ylab="Y", main="Origen cambiado")
points(DatosX,DatosY, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance,add=T,from = 14.25,to = x[63])
points(DatosX1,DatosY1, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance1,add=T,from = x[63],to = x[59])
points(DatosX2,DatosY2, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance2,add=T,from = x[59],to = x[56])
points(DatosX3,DatosY3, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance3,add=T,from = x[56],to = x[53])
points(DatosX4,DatosY4, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance4,add=T,from = x[53],to = x[50])
points(DatosX5,DatosY5, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance5,add=T,from = x[50],to = x[41])
points(DatosX6,DatosY6, pch=19, cex=1, col = "bue")
curve(PolinomioLagrance6,add=T,from = x[41],to = x[38])
points(DatosX7,DatosY7, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance7,add=T,from = x[38],to = x[28])
#points(DatosX8,DatosY8, pch=19, cex=1, col = "blue")
#curve(PolinomioLagrance8,add=T,from = x[28],to = x[23])
points(DatosX9,DatosY9, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance9,add=T,from = x[28],to = x[23])
points(DatosX10,DatosY10, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance10,add=T,from = x[23],to = x[18])
points(DatosX11,DatosY11, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance11,add=T,from = x[18],to = x[10])
points(DatosX12,DatosY12, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance12,add=T,from = x[10],to = x[1])

