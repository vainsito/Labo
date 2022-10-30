#include <stdio.h>
#include <assert.h>
#include <limits.h>
#include <math.h>
#include <stdlib.h>
typedef struct{
    int impares;
    int pares;
}paridad_t;

void pedirArreglo(int a[], int tam)
{
    int i, numArray;
    i= 0;
    numArray= 0;
    while (i < tam){
        printf("Ingrese un valor para la posicion %d\n",i);
        scanf("%d",&numArray);
        a[i] = numArray;
        i++;
    }
}

paridad_t contar_paridad(int a[], int tam)
{
    paridad_t numeros;
    int contador = 0;
    numeros.pares = 0;
    numeros.impares= 0;
    while(contador < tam)
    {
        if(fmod(a[contador],2) == 0)
        {
            numeros.pares = numeros.pares + 1;
        }
        else if (fmod(a[contador],2) != 0)
        {   
            numeros.impares = numeros.impares + 1;   
        }
        contador++;
    }
    return numeros;
}

int main()
{
    const int tam = 5;
    int a[5];
    pedirArreglo(a, tam);
    printf(("La cantidad de numeros pares es: %d, y la cantidad de numeros impares es : %d\n"),contar_paridad(a,tam).pares,contar_paridad(a, tam).impares);
    return 0;
}
