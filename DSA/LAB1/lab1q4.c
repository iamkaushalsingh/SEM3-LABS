#include<stdio.h>
int arr[100];
int large(int arr[],int n)
{
	int i,x,y;
	x=arr[0];
	y=arr[0];
	for(i=0;i<n;i++)
	{
		if(arr[i]>y)
			y=arr[i];
	}
	for(i=0;i<n;i++)
	{
		if(arr[i]<y && arr[i]>x)
			x=arr[i];
	}
	printf("Second largest number is %d",x);
}
int main()
{
	int i,n,l;
	printf("Enter length of the array:");
	scanf("%d",&l);
	int arr[l];
	printf("Enter the values of array:");
	for(i=0;i<1;i++)
	{
		scanf("%d",&arr[i]);
	}
	large(arr,l);
	return 0;
}