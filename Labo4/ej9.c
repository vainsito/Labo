#include <stdio.h>
#include <assert.h>
#include <math.h>
#include <stdlib.h>
#include <stdbool.h>
#include <limits.h>

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

int minimoPares(int a[], int tam){
    int i, resultado;
    i = 0;
    resultado = INT_MAX;
    while (i < tam){
        if (a[i]<= resultado && fmod(a[i], 2) == 0){
            resultado = a[i];
        }
        i++;
    }
    return resultado;

}

int minimoImpares(int a[], int tam){
    int i, resultado;
    i = 0;
    resultado = INT_MAX;
    while (i < tam){
        if (a[i]<= resultado && fmod(a[i], 2) != 0){
            resultado = a[i];
        }
        i++;
    }
    return resultado;

}

int main()
{
    int cantElem, cualEjec;
    printf("Ingrese el tamanio de su array:\n"); scanf("%d", &cantElem);
    int a[cantElem];
    assert(cantElem >0);
    pedirArreglo(a, cantElem);
    printf("Ingrese 1 para ejecutar minimoPar o 2 para ejecutar minimoImpar\n"); scanf("%d", &cualEjec);
    assert(cualEjec == 1 || cualEjec == 2);
    if(cualEjec == 1){
        printf("Su minimo par es %d\n", minimoPares(a, cantElem));
    }
    else if(cualEjec == 2){
        printf("Su su minimo impar es %d\n",minimoImpares(a, cantElem));
    } 
    return 0;
}