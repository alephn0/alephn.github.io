#include <stdio.h>
int main(){
	int t;
	long long int result, n;
	printf("Ingrese el numero de eventos : ");
	scanf("%d",&t);
	for(; t; --t){
		printf("Ingrese el nivel del triangulo : ");
		scanf("%lld",&n);
		printf("El numero de triangulos es : ");
		printf("%lld\n",(n*(n+2)*((n<<1)+1))>>3);
	}
	return 0;
}