#include <stdio.h>
#include <assert.h>
#include <limits.h>
#include <math.h>
#include <stdlib.h>

/* Funciones Auxiliares */

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


int suma_mayores(int a[], int tam, int k)
{
    int contador = 0, resultado = 0;
    while(contador < tam)
    {
        if(a[contador] > k)
        {
            resultado = resultado + a[contador];
        }
        resultado = resultado;
        contador++;
    }
    return resultado;
};

int main()
{
    const int tam = 5;
    int a[tam], k;
    pedirArreglo(a,tam);
    printf("Ingrese el valor de su indice\n"); scanf("%d", &k);
    assert(k >= 0 && k < tam);
    printf(("El resultado de la suma es: %d"), suma_mayores(a,tam, k));
}