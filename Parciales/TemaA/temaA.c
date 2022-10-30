#include <stdio.h>
#include <assert.h>

int main()
{
    int r, s,R,S;
    printf("Ingrese el valor de la variable r:\n"); scanf("%d",&r);
    printf("Ingrese el valor de la variable s:\n"); scanf("%d",&s);
    R = r; S = s;
    assert(r == R && s == S && S > R);
    r = S -R;
    s = R + S;
    assert(r == S -R && s == R + S);
    printf("Su valor final de r es : %d, su valor dinal de s es : %d\n",r,s);
    return 0;
}
