#include <stdio.h>
#include <assert.h>
#include <limits.h>
#include <math.h>
#include <stdlib.h>

  int pedirEntero (void){
     int x;
     printf("Ingrese un valor \n");
     scanf("%d",&x);
     return x;
     } 

int main (){
    int x, y, z, xaux, yaux, zaux;
    x= pedirEntero();
    y= pedirEntero();
    z= pedirEntero();
    xaux=x;
    yaux=y;
    zaux=z;
    assert(xaux == x && yaux == y && zaux == z);
    
    x = yaux;
    y= xaux + yaux + zaux;
    z= yaux + xaux;
    
    assert(x == yaux && y == xaux + yaux + zaux && z == yaux + xaux);
    
    printf ("El valor de x es %d\nEl valor de y es %d\nEl valor de z es %d\n",x,y,z);
    return 0;
}