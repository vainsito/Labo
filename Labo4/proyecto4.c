#include <stdio.h>
#include <assert.h>
#include <limits.h>
#include <math.h>
#include <stdlib.h>

  int pedirEntero (void){
     int x;
     printf("Ingrese un valor \n");
     scanf("%d",&x);
     return x;
     }  
/*
int main (){
  int n;
  
  int pedirEntero (void){
     int x;
     printf("Ingrese valor de x\n");
     scanf("%d",&x);
     return x;
     }  


  n = pedirEntero();
  
  assert(n > 0);

  void holaHasta (int n){
    int i = 0;

    while (i<n){
        printf("Hola \n");
        i=i+1;
    }

  }
   
  holaHasta(n);
  
  return 0;
}*/
//b
/*int main (void){
    int x, y;

    printf("Ingresa x, y\n"); scanf("%d",&x); scanf("%d",&y);

    assert (x != y);
    if (x>y){
        printf ("El elemento minimo es %d\n",y);
        assert (x>y);
    } 
    else {
        printf ("El elemento minimo es %d\n",x);
        assert (y>x);
    } 
    return 0;
}*/

//valor absoluto
/*int main (){
    int x;
    printf ("Dame el valor de x\n");
    scanf ("%d",&x);

    assert (x>INT_MIN && INT_MAX>x);

    if (x>=0){
        printf ("%d\n",x); 
    } else {
        printf ("%d\n",-x);
        x = -x;
    }

    assert (x >= 0);
    return 0;
}
*/
//intecrcambio de variables 
/*int main (){

    int x, z, y, zIMPORTANTE, xIMPORTANTE, yIMPORTANTE;
    zIMPORTANTE = 0;
    yIMPORTANTE = 0;
    xIMPORTANTE = 0;

    x= pedirEntero();
    y= pedirEntero ();
    z= pedirEntero ();
    
    assert (x>INT_MIN && INT_MAX>x && y>INT_MIN && INT_MAX>y && z>INT_MIN && INT_MAX>z);

    printf("Valor x: %d, Valor y: %d, Valor z:%d\n",x,y,z);

    zIMPORTANTE = z;
    xIMPORTANTE = x;
    yIMPORTANTE = y;

    z = x;
    x = y;
    y = zIMPORTANTE;
    assert(z == xIMPORTANTE && x == yIMPORTANTE && y == zIMPORTANTE);
    printf ("VALORES FINALES \n");
    printf ("x es %d\ny es %d\nz es %d \n",x,y,z);

    return 0;
} */
//ejercicio 2
/*int main (){
    int x, y, xaux, yaux;
    x= pedirEntero();
    y= pedirEntero ();
    xaux=x;
    yaux=y;
    
    assert(xaux == x && yaux == y);

    x= x + 1;
    y= xaux + yaux;
    
    assert(x == xaux + 1 && y == xaux + yaux);

    printf ("El valor de x es %d\nEl valor de y es %d\n",x,y);
    return 0;
}*/

/*int main (){
    int x, y, z, xaux, yaux, zaux;
    x= pedirEntero();
    y= pedirEntero();
    z= pedirEntero();
    xaux=x;
    yaux=y;
    zaux=z;

    assert(xaux == x && yaux == y && zaux == z);
    
    x = yaux;
    y= xaux + yaux + zaux;
    z= yaux + xaux;
    
    assert(x == yaux && y == xaux + yaux + zaux && z == yaux + xaux);
    
    printf ("El valor de x es %d\nEl valor de y es %d\nEl valor de z es %d\n",x,y,z);

    return 0;
}*/

//Ejercicio3//

/*int sumaHasta (int N){
  
  int i, resul;

  i = 0;
  resul = 0;

  while ( i < N){

      resul = resul + i;
      i = i + 1;

  }
   
   return resul;
   
}

int main (){    
    
    int x;
    x = pedirEntero();

    assert( x >= 0);

    printf("%d\n",sumaHasta(x));

    return 0;
}*/

//Ejercicio4//

/*struct div_t {
    int cociente;
    int resto;
    };

struct div_t division(int x, int y){
    
    struct div_t res ;
    
    res.resto = (x % y);
    res.cociente = (x/y);

	printf(
		"El cociente es %d y el resto es %d\n", 
		res.cociente, 
		res.resto
		);

	return res;
 }

int main()
{
	int x, y; 
    x = pedirEntero();
    y = pedirEntero();
    
    assert(y > 0 && x >= 0);

    division(x,y);

	return 0;
}*/
/* numero= divisor * cociente + resto  */

void pedirArreglo(int a[], int n_max){

    a[] =  
    i = 0;

    while (n >= i){
        a[i]
        i = i + 1

    } 
}
void imprimeArreglo(int a[], int n_max){
    printf(pedirArreglo)
}
int main()
{
    /* code */
    return 0;
}
