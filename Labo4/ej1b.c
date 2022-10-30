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

int main (void){
    int x, y;
    x = pedirEntero();
    y = pedirEntero();
    assert (x != y);
    if (x>y){
        printf ("El elemento minimo es %d\n",y);
        assert (x>y);
    } 
    else {
        printf ("El elemento minimo es %d\n",x);
        assert (y>x);
    } 
    return 0;
}