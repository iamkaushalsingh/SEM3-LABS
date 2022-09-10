#include<stdio.h>
int arr[100];
int Lsearch(int N, int arr[], int n)
{
	int i,m;
	for(i=0;i<n;i++)
	{
		if(arr[i]==N)
		{	
			m=i;
			break;
		}
		else 
		m=-1;
	}

}
int main()
{
	int n,i,pos,N,c=0;
	printf("Enter the number to be searched \n");
	scanf("%d",&N);
	printf("Enter size of array \n");
	scanf("%d",&n);
	printf("Enter array elements \n");
	for(i=0;i<n;i++)
		scanf("%d",&arr[i]);	
	pos=Lsearch(N,arr,n);
	if(pos>=0)
		printf("The searched element %d is present at %d position \n",N,pos+1);
	else
		printf("The searched element %d is not present in the array \n",N);
	return 0;
}