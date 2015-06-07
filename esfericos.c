#include <stdio.h>
#include <math.h>
#include <stdlib.h>

double gaussrand(void);

int main(){
	double x,y,z,  norma;
	int num=1000;
	int i;
	
	for(i=1; i<=num ;i++){
		x=gaussrand();
		y=gaussrand();
		z=gaussrand();
		norma=sqrt(pow(x,2)+ pow(y,2)+pow(z,2));
		
		x=x/norma;
		y=y/norma;
		z=z/norma;
		
		printf(" %f %f %f \n", x,y,z);
	}
	
	return 0;
}

/*extraida de internet */

double gaussrand()
{
	static double V1, V2, S;
	static int phase = 0;
	double X;

	if(phase == 0) {
		do {
			double U1 = (double)rand() / RAND_MAX;
			double U2 = (double)rand() / RAND_MAX;

			V1 = 2 * U1 - 1;
			V2 = 2 * U2 - 1;
			S = V1 * V1 + V2 * V2;
			} while(S >= 1 || S == 0);

		X = V1 * sqrt(-2 * log(S) / S);
	} else
		X = V2 * sqrt(-2 * log(S) / S);

	phase = 1 - phase;

	return X;
}