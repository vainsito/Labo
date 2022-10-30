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

struct comp_t
{
    int menores;
    int iguales;
    int mayores;
};

struct comp_t cuantos(int a[], int tam, int elem){
    struct comp_t resultado;
    int contador;
    contador = 0;
    resultado.menores = 0;
    resultado.iguales = 0;
    resultado.mayores = 0; 
    while (contador < tam)
    {
        if(a[contador] == elem){
            resultado.iguales++ ; 
        }
        else if(a[contador]> elem){
            resultado.mayores++;
        }
        else if(a[contador] < elem){
            resultado.menores++;
        }
        contador++;
    }
    return resultado;    
}

int main()
{
    int cantElem, elemen;
    printf("Ingrese el tamanio de su array:\n"); scanf("%d", &cantElem);
    int a[cantElem];
    assert(cantElem >0);
    printf("Ingrese su elemento a comparar\n"); scanf("%d", &elemen);
    pedirArreglo(a, cantElem);
    printf("Sus valores iguales son: %d, sus valores mayores son: %d, sus valores menores son: %d\n", cuantos(a, cantElem, elemen).iguales, cuantos(a, cantElem, elemen).mayores, cuantos(a, cantElem, elemen).menores);
    return 0;
}
