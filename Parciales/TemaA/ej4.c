#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include <limits.h>
#include <string.h>
 /* Tipos */

typedef struct{
    int dni;
    float altura;
}persona_t;

typedef struct{
    float altura_media;
    float altura_minima;
    float altura_maxima;
}stats_t;

/* Funciones Auxiliares */

void pedirArregloPerso(persona_t a[], int nMax){
    int i;
    persona_t pedir;
    i= 0;
    pedir.dni= 0;
    pedir.altura = 0.0 ;
    while (i < nMax){
        printf("Ingrese un DNI para la posicion %d\n",i);
        scanf("%d",&pedir.dni);
        printf("Ingrese una Altura para la posicion %d\n",i); 
        scanf("%f", &pedir.altura);
        a[i].dni = pedir.dni;
        a[i].altura = pedir.altura;
        i++;
    }
}

float sumatoriaPerso(persona_t a[], int tam){
    int i =0; 
    float resultado = 0;

    while (i < tam){
        resultado = resultado + a[i].altura;
        i++;
    }
    return resultado;
}

/* Funcion Pedida*/
stats_t calcular_estadisticas(persona_t a[], int tam)
{
    stats_t result;
    int contador = 0;
    result.altura_maxima = INT_MIN;;
    result.altura_minima = INT_MAX;
    result.altura_media = sumatoriaPerso(a, tam) / tam;
    while (contador < tam)
    {
        if( a[contador].altura > result.altura_maxima )
        {
            result.altura_maxima = a[contador].altura;
        }
        if (a[contador].altura < result.altura_minima)\
        {
            result.altura_minima = a[contador].altura;
        }
        contador++;
    }
    return result;
}

/* Funcion Main */

int main()
{
    const int tam = 3;
    persona_t a[tam];
    pedirArregloPerso(a, tam);
    printf(("Altura Max: %.2f, Altura Min: %.2f, Altura Media: %.2f \n"),calcular_estadisticas(a, tam).altura_maxima, calcular_estadisticas(a, tam).altura_minima, calcular_estadisticas(a, tam).altura_media);
    return 0;
}
