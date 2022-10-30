#include <stdio.h>
#include <assert.h>
#include <math.h>
#include <stdlib.h>

int pedirEntero(void){
    int x;
    printf("Ingrese un valor\n"); scanf("%d",&x);
    return x;
}

void pedirArreglo(int a[], int nMax){
    int i, numArray;
    i= 0;
    numArray= 0;
    while (i < nMax){
        printf("Ingrese un valor para la posicion %d\n",i);
        scanf("%d",&numArray);
        a[i] = numArray;
        i++;
    }
}

int sumatoria(int a[], int tam){
    int i =0, resultado =0;

    while (i < tam){
        resultado = resultado + a[i];
        i++;
    }
    return resultado;
}

int main()
{
    int cantElem;
    printf("Ingrese el tamanio de su array:\n"); scanf("%d", &cantElem);
    int a[cantElem];
    assert(cantElem >0);
    pedirArreglo(a, cantElem);   
    printf("La suma de sus elementos es: %d\n", sumatoria(a, cantElem));
    return 0;
}
