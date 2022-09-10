#include<stdio.h>
#include<stdlib.h>	

typedef struct complex 
{
    double real;
    double imag;
} 
complex;
complex Addition(complex n1, complex n2)
{
	complex sum;
	sum.real=n1.real+n2.real;
	sum.imag=n1.imag+n2.imag;
	return(sum);
}
complex Multiply(complex n1, complex n2)
{
	complex prod;
	prod.real=(n1.real*n2.real)-(n1.imag*n2.imag);
	prod.imag=(n1.real*n2.imag)+(n1.imag*n2.real);
	return(prod);
}
complex Subtract(complex n1, complex n2)
{
	complex diff;
	diff.real=n1.real-n2.real;
	diff.imag=n1.imag-n2.imag;
	return(diff);
}

int main()
{
	complex n1,n2,sum,diff,prod;
	printf("Enter the values a and b for the first complex number 'a+bi':");
	scanf("%lf%lf",&n1.real,&n1.imag);
	printf("Enter the values a and b for the second complex number 'a+bi':");
	scanf("%lf%lf",&n2.real,&n2.imag);
	sum=Addition(n1,n2);
	diff=Subtract(n1,n2);
	prod=Multiply(n1,n2);
	printf("The sum of the two complex numbers is %lf+%lfi\n",sum.real,sum.imag);
	printf("The difference between the two complex numbers is %lf+%lfi\n",diff.real,diff.imag);
	printf("The product of the two complex numbers is %lf+%lfi\n",prod.real,prod.imag);
}

