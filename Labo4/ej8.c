#include <stdio.h>
#include <assert.h>
#include <math.h>
#include <stdlib.h>
#include <stdbool.h>

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
void imprimeArreglo(int a[], int nMax){
    int i;
    i = 0;
    while (i < nMax){
        printf("%d ",a[i]);
        i++;
    }
}
void intercambiar (int a[], int tam, int i, int j){
    int aux;
    assert( i != j );
    aux = a[i];
    a[i]= a[j];
    a[j] = aux;
    imprimeArreglo(a, tam);
}
int main()
{
    int posicion1, posicion2, cantElem;\
    /*Tamanio del Array*/
    printf("Ingrese el tamanio de su array:\n"); scanf("%d", &cantElem);
    int a[cantElem];
    assert(cantElem >0);
    /*El Arreglo Actual*/
    pedirArreglo(a, cantElem);
    printf("Su arreglo actual es:\n");
    imprimeArreglo(a, cantElem);
    printf("\n");
    /*Posiciones */
    printf("Ingrese su posicion\n"); scanf("%d", &posicion1);
    printf("ingrese su posicion\n"); scanf("%d", &posicion2);
    assert( posicion1 < cantElem && posicion2 < cantElem);
    /*Arreglo modificado*/
    printf("Su arreglo modificado es:\n");
    intercambiar(a, cantElem, posicion1, posicion2);
    return 0;
}
