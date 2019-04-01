library(PolynomF)

x=c(14.65, 14.71, 14.6, 14.8, 15.2, 15.6, 15.7, 17.0, 17.6, 17.52, 17.3, 16.8, 15.4, 14.83, 14.4, 14.5, 15.0, 15.1, 15.0, 14.9, 14.6, 14.3, 14.0, 13.9, 13.8, 13.5, 13.1, 13.0, 13.3, 13.2, 13.1, 12.9, 12.4, 11.9, 11.7, 11.6, 11.3, 10.9, 10.7, 10.6, 10.6, 10.1, 9.7, 9.4, 9.3, 9.6, 9.9, 10.1, 10.2, 10.3, 10.0, 9.50, 9.10, 8.6, 7.5, 7.0, 6.7, 6.6, 7.70, 8.00, 8.10, 8.40,9.20, 9.30, 10, 10.2, 10.3)
y=c(14.7, 14.33, 13.4, 12.33, 11.0, 10.5, 10.22, 8.20, 7.10, 6.70, 6.60, 6.80, 8.30, 8.80, 9.30, 8.80, 6.30, 5.50, 5.00, 4.70, 4.60, 4.50, 4.90, 5.40, 5.80, 6.90, 8.20, 7.60, 5.80, 4.50, 4.30, 3.90, 4.20, 5.70, 7.00, 7.90, 8.20, 7.30, 6.70, 5.50, 5.10, 4.60, 4.7, 5.0, 5.5, 7.2, 7.8, 8.60, 9.40, 10.0, 10.7, 11.0, 10.7, 9.9, 9.0, 9.1, 9.3, 9.7, 11.7, 12.3, 12.5, 13.0,13.91, 14.9, 16, 16.4, 16.8)     
x=c(14.65, 14.71, 14.6, 14.8, 15.1, 16.2, 17.2, 18.0, 18.6, 18.52, 18.3, 17.8, 16.4,15.6, 15.7, 17.0, 17.6, 17.52, 17.3, 16.8, 15.4, 14.83, 14.4, 14.5, 15.0, 15.1, 15.0, 14.9, 14.6, 14.3, 14.0, 13.9, 13.8, 13.5, 13.1, 13.0, 13.3, 13.2, 13.1, 12.9, 12.4, 11.9, 11.7, 11.6, 11.3, 10.9, 10.7, 10.6, 10.6, 10.1, 9.7, 9.4, 9.3, 9.6, 9.9, 10.1, 10.2, 10.3, 10.0, 9.50, 9.10, 8.6, 7.5, 7.0, 6.7, 6.6, 7.70, 8.00, 8.10, 8.40,9.20, 9.30, 10, 10.2, 10.3)
y=c(14.7, 14.33, 13.4, 12.33, 11.8, 11.1, 10.4, 9.20, 8.10, 7.70, 7.60, 7.80, 9.30,10.5, 10.22, 8.20, 7.10, 6.70, 6.60, 6.80, 8.30, 8.80, 9.30, 8.80, 6.30, 5.50, 5.00, 4.70, 4.60, 4.50, 4.90, 5.40, 5.80, 6.90, 8.20, 7.60, 5.80, 4.50, 4.30, 3.90, 4.20, 5.70, 7.00, 7.90, 8.20, 7.30, 6.70, 5.50, 5.10, 4.60, 4.7, 5.0, 5.5, 7.2, 7.8, 8.60, 9.40, 10.0, 10.7, 11.0, 10.7, 9.9, 9.0, 9.1, 9.3, 9.7, 11.7, 12.3, 12.5, 13.0,13.91, 14.9, 16, 16.4, 16.8)

xrev = NULL
yrev = NULL
j = length(x)
print (j)
for( i in 1:length(x))
{
  xrev[i] = x[j]
  yrev[i] = y[j]
  j = j-1
}


DatosX = NULL; DatosY = NULL;
DatosX[1] = x[3];DatosX[2] = x[5]; DatosY[1] = y[3]; DatosY[2] = y[5];
PolinomioLagrance = poly.calc(DatosX,DatosY)
PolinomioLagrance

DatosX1 = NULL; DatosY1 = NULL;
DatosX1[1] = x[5];DatosX1[2] = x[6]; DatosX1[3] = x[9]; DatosY1[1] = y[5]; DatosY1[2] = y[6];DatosY1[3] = y[9];
PolinomioLagrance1 = poly.calc(DatosX1,DatosY1)
PolinomioLagrance1

#DatosX1 = NULL; DatosY1 = NULL;
#DatosX1[1] = x[5];DatosX1[2] = x[9]; DatosY1[1] = y[5]; DatosY1[2] = y[9];
#PolinomioLagrance1 = poly.calc(DatosX1,DatosY1)
#PolinomioLagrance1

DatosX2 = NULL; DatosY2 = NULL;
DatosX2[1] = x[9];DatosX2[2] = x[11];DatosX2[3] = x[12]; DatosY2[1] = y[9];DatosY2[2] = y[11];DatosY2[3] = y[12];
PolinomioLagrance2 = poly.calc(DatosX2,DatosY2)
PolinomioLagrance2


DatosX3 = NULL; DatosY3 = NULL;
DatosX3[1] = x[12];DatosX3[2] = x[15]; DatosY3[1] = y[12];DatosY3[2] = y[15];
PolinomioLagrance3 = poly.calc(DatosX3,DatosY3)
PolinomioLagrance3

DatosX4 = NULL; DatosY4 = NULL;
DatosX4[1] = x[15];DatosX4[2] = x[17]; DatosY4[1] = y[15]; DatosY4[2] = y[17];
PolinomioLagrance4 = poly.calc(DatosX4,DatosY4)
PolinomioLagrance4

DatosX5 = NULL; DatosY5 = NULL;
DatosX5[1] = x[17];DatosX5[2] = x[19];DatosX5[3] = x[20]; DatosY5[1] = y[17];DatosY5[2] = y[19];DatosY5[3] = y[20];
PolinomioLagrance5 = poly.calc(DatosX5,DatosY5)
PolinomioLagrance5

DatosX6 = NULL; DatosY6 = NULL;
DatosX6[1] = x[20];DatosX6[2] = x[23]; DatosY6[1] = y[20];DatosY6[2] = y[23];
PolinomioLagrance6 = poly.calc(DatosX6,DatosY6)
PolinomioLagrance6

DatosX7 = NULL; DatosY7 = NULL;
DatosX7[1] = x[23];DatosX7[2] = x[26]; DatosY7[1] = y[23];DatosY7[2] = y[26];
PolinomioLagrance7 = poly.calc(DatosX7,DatosY7)
PolinomioLagrance7

DatosX8 = NULL; DatosY8 = NULL;
DatosX8[1] = x[26];DatosX8[2] = x[29];DatosX8[3] = x[35]; DatosY8[1] = y[26];DatosY8[2] = y[29];DatosY8[3] = y[35];
PolinomioLagrance8 = poly.calc(DatosX8,DatosY8)
PolinomioLagrance8

DatosX9 = NULL; DatosY9 = NULL;
DatosX9[1] = x[35];DatosX9[2] = x[38]; DatosY9[1] = y[35];DatosY9[2] = y[38]
PolinomioLagrance9 = poly.calc(DatosX9,DatosY9)
PolinomioLagrance9

DatosX10 = NULL; DatosY10 = NULL;
DatosX10[1] = x[38];DatosX10[2] = x[41];DatosX10[3] = x[45];DatosX10[4] = x[48]; DatosY10[1] = y[38];DatosY10[2] = y[41];DatosY10[3] = y[45];DatosY10[4] = y[48];
PolinomioLagrance10 = poly.calc(DatosX10,DatosY10)
PolinomioLagrance10

#DatosX11 = NULL; DatosY11 = NULL;
#Datos11[1] = x[37];DatosX8[2] = x[40]; DatosY8[1] = y[37];DatosY8[2] = y[40];
#PolinomioLagrance11 = poly.calc(DatosX11,DatosY11)
#PolinomioLagrance11

DatosX11 = NULL; DatosY11 = NULL;
DatosX11[1] = x[48];DatosX11[2] = x[50];DatosX11[3] = x[53]; DatosY11[1] = y[48];DatosY11[2] = y[50];DatosY11[3] = y[53];
PolinomioLagrance11 = poly.calc(DatosX11,DatosY11)
PolinomioLagrance11

DatosX12 = NULL; DatosY12 = NULL;
DatosX12[1] = x[53];DatosX12[2] = x[58]; DatosY12[1] = y[53];DatosY12[2] = y[58];
PolinomioLagrance12 = poly.calc(DatosX12,DatosY12)
PolinomioLagrance12

DatosX13 = NULL; DatosY13 = NULL;
DatosX13[1] = x[58];DatosX13[2] = x[61];DatosX13[3] = x[63];DatosX13[4] =x[66]; DatosY13[1] = y[58];DatosY13[2] = y[61];DatosY13[3] = y[63];DatosY13[4] =y[66]
PolinomioLagrance13 = poly.calc(DatosX13,DatosY13)
PolinomioLagrance13

DatosX14 = NULL; DatosY14 = NULL;
DatosX14[1] = x[66];DatosX14[2] = x[75]; DatosY14[1] = y[66];DatosY14[2] = y[75];
PolinomioLagrance14 = poly.calc(DatosX14,DatosY14)
PolinomioLagrance14


plot(x,y,pch=8, cex=1, col = "red", asp=1,xlab="X", ylab="Y", main="Mano agregando puntos")
points(DatosX,DatosY, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance,add=T,from = 14.25,to = x[5])
points(DatosX1,DatosY1, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance1,add=T,from = x[5],to = x[9])
points(DatosX2,DatosY2, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance2,add=T,from = x[9],to = x[12])
points(DatosX3,DatosY3, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance3,add=T,from = x[12],to = x[15])
points(DatosX4,DatosY4, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance4,add=T,from = x[15],to = x[17])
points(DatosX5,DatosY5, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance5,add=T,from = x[17],to = x[20])
points(DatosX6,DatosY6, pch=19, cex=1, col = "bue")
curve(PolinomioLagrance6,add=T,from = x[20],to = x[23])
points(DatosX7,DatosY7, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance7,add=T,from = x[23],to = x[26])
points(DatosX8,DatosY8, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance8,add=T,from = x[26],to = x[35])
points(DatosX9,DatosY9, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance9,add=T,from = x[35],to = x[38])
points(DatosX10,DatosY10, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance10,add=T,from = x[38],to = x[48])
points(DatosX11,DatosY11, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance11,add=T,from = x[48],to = x[53])
points(DatosX12,DatosY12, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance12,add=T,from = x[53],to = x[58])
points(DatosX13,DatosY13, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance13,add=T,from = x[58],to = x[66])
points(DatosX14,DatosY14, pch=19, cex=1, col = "blue")
curve(PolinomioLagrance14,add=T,from = x[66],to = x[75])

