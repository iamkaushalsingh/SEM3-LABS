#include<stdio.h>
double arr[100];
double Add(double arr[],int x)
{
	double sum =0;
	int i;
	for(i=0;i<x;i++)
	{
		sum+=arr[i];
	}
	return sum;
}
int main()
{
	double arr[100];
	int i,x;
	double s;
	printf("Enter the size of the array \n");
	scanf("%d",&x);
	printf("Enter the array elements \n");
	for(i=0;i<x;i++)
	{
		scanf("%lf",&arr[i]);
	}
	s=Add(arr,x);
	printf("The sum of elements are %lf \n",s);
	return 0;
}