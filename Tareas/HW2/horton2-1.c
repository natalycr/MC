# include <stdio.h>
# include <math.h>

int main(int argc, char **argv){
	double yards, feet;
	float parameter;
	parameter = atof(argv[1]);
	yards = parameter / 36;
	feet= parameter /12;
	printf(" Yards= %f \n Feet= %f \n inches= %f\n", yards, feet ,parameter);
	return 0;
}