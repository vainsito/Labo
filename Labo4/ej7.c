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

bool existePositivo(int a[], int tam){
    int i;
    i = 0;
    while (i < tam){
        if (a[i] > 0){
            return true;
        }
        i++;
    }
    return false;
}

bool todosPositivos(int a[], int tam){
    int i;
    i = 0;
    while(i < tam ){
        if (a[i] < 0){
            return false;
        }
        i++;
    }
    return true;
}

int main()
{
    int cantElem, cualEjec;
    printf("Ingrese el tamanio de su array:\n"); scanf("%d", &cantElem);
    int a[cantElem];
    assert(cantElem >0);
    pedirArreglo(a, cantElem);
    printf("Ingrese 1 para ejecutar existePositivo o 2 para ejecutar todosPositivos\n"); scanf("%d", &cualEjec);
    assert(cualEjec == 1 || cualEjec == 2);
    if(cualEjec == 1){
        printf("Su booleano es %d\n", existePositivo(a, cantElem));
    }
    else if(cualEjec == 2){
        printf("Su booleano es %d\n",todosPositivos(a, cantElem));
    } 
    return 0;
}
