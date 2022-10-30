#include <stdio.h>
#include <assert.h>
#include <math.h>
#include <stdlib.h>
#include <stdbool.h>
#include <limits.h>
/* Funciones Auxiliares */
void pedirArreglo(float a[], int nMax){
    int i;
    float numArray;
    i= 0;
    numArray= 0.0;
    while (i < nMax){
        printf("Ingrese un valor para la posicion %d\n",i);
        scanf("%f",&numArray);
        a[i] = numArray;
        i++;
    }
}

float sumatoria(float a[], int tam){
    int i =0; 
    float resultado = 0.0 ;

    while (i < tam){
        resultado = resultado + a[i];
        i++;
    }
    return resultado;
}

/* Funcion Del Ej */
struct datos_t
{
    float maximo;
    float minimo;
    float promedio;
};

struct datos_t stats(float a[], int tam){
    struct datos_t result;
    int contador = 0;
    result.maximo= INT_MIN;
    result.minimo = INT_MAX;
    result.promedio = 0.0;
    while (contador < tam){
        if(a[contador]<result.minimo){
            result.minimo = a[contador];
        }
        else if(a[contador] > result.maximo){
            result.maximo = a[contador];
        }
        result.promedio = sumatoria(a, tam) / tam;
        contador++;
    }
    return result;
}
/* Funcion Main */
int main(){
    int cantElem;
    printf("Ingrese el tamanio de su array:\n"); scanf("%d", &cantElem);
    float a[cantElem];
    assert(cantElem >0);
    pedirArreglo(a, cantElem);
    printf("Su maximo es : %.2f, Su minimo es : %.2f, Su promedio es: %.2f\n",stats(a, cantElem).maximo, stats(a, cantElem).minimo, stats(a, cantElem).promedio);
    return 0.0;
}

