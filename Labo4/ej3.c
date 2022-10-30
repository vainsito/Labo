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
int sumaHasta(int N){
    int i, resultado;
    i=0;
    resultado = 0;
    while (i < N)
    {
        resultado = resultado + i;
        i++;
    }
    return resultado;
}

int main()
{
    int k;
    k = pedirEntero();
    assert ( k>=0);
    printf("el resultado es:%d\n",sumaHasta(k));
    return 0;
}
