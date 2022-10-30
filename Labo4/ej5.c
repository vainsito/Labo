#include <stdio.h>
#include <assert.h>
#include <limits.h>
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

void imprimeArreglo(int a[], int nMax){
    int i;
    i = 0;
    while (i < nMax){
        printf("%d ",a[i]);
        i++;
    }
}

int main(){
    int cantElem;
    printf("Ingrese la cantidad de elementos\n"); scanf("%d",&cantElem);
    int a[cantElem];
    assert(cantElem >0);
    pedirArreglo(a, cantElem);
    printf("Su array final es :\n");
    imprimeArreglo(a, cantElem);
    return 0;
}
