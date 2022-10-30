#include <stdio.h>
#include <assert.h>
#include <limits.h>
#include <math.h>
#include <stdlib.h>

int pedirEntero(void){
    int x;
    printf("Ingrese un valor de x\n"); scanf("%d",&x);
    return x;
}
void holaHasta (int n){
    int i;
    i = 0;
    while (i < n){
        printf("Hola\n");
        i++;    
    }
}

int main()
{
    int x;
    x = pedirEntero();
    assert(x > 0);
    holaHasta(x);
    return 0;
}

