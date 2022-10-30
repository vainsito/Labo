#include <stdio.h>
#include <assert.h>
#include <math.h>
#include <stdlib.h>
#include <stdbool.h>
#include <limits.h>

bool is_prime(int const n)
{
    if( n <= 1)
        return false;
    for(int i = 2; i <= sqrt(n); i++)
        if(n % i == 0)
            return false;
    return true;
}
int nesimoPrimo(int N){
    int resultado;
    resultado = 0;
    for (int contador = 0; contador < N; contador++)
    {
        if(is_prime(contador)== true)
        {
            resultado  = contador; 
        }
    }
    return resultado;
}

int main(void)
{
    int numero;
    printf("Ingrese el numero\n"); scanf("%d",&numero);
    assert( numero > 0);
    printf(("El enesimo primo es: %d"),nesimoPrimo(numero)); 
    return 0;
}