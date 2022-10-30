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

int main()
{
    int x, y,aux,auy;
    x = pedirEntero();; y = pedirEntero();
    aux = x; auy = y;
    assert( x == aux && y == auy);
    x = aux + 1; y = aux + auy;
    printf("Su valor de x es %d, y el valor de  y es %d\n", x, y);
    return 0;
}
