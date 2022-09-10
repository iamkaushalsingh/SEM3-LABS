#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int m,n,p,q;

void Mult2mat(int**x,int**y,int**z)
{
	int i,j,k;
	for(i=0;i<m;i++){
		for(j=0;j<q;j++){
			*(*(z+i)+j)=0;

			for(k=0;k<n;k++)
				*(*(z+i)+j)= *(*(z+i)+j)+ (*(*(x+i)+k))*(*(*(y+k)+j));

		}
	}
}

int main()
{
	int i,j,k;

	printf("Enter the dimensions of the matrix 'x'\n");
	scanf("%d%d",&m,&n);

	printf("Enter the dimensions of the matrix 'y'\n");
	scanf("%d%d",&p,&q);

	if(n!=p){
		printf("Multiplication not possible\n");
		exit(0);
	}

	int *x[m],*y[p],*z[m];
	for(i=0;i<m;i++){
		x[i]= calloc(n,sizeof(int));
		z[i]= calloc(q,sizeof(int));
	}

	for(i=0;i<p;i++)
		y[i]= calloc(q,sizeof(int));

	printf("Enter the elemnts of 'x'\n");
	for(i=0;i<m;i++){
		for(j=0;j<n;j++)
			scanf("%d",*(x+i)+j);
	}

	printf("The matrix 'x' is\n");
	for(i=0;i<m;i++){
		for(j=0;j<n;j++)
			printf("%d  ",*(*(x+i)+j));
		printf("\n");
	}

	printf("Enter the elemnts of 'y'\n");
	for(i=0;i<p;i++){
		for(j=0;j<q;j++)
			scanf("%d",*(y+i)+j);
	}

	printf("The matrix 'y' is\n");
	for(i=0;i<p;i++){
		for(j=0;j<q;j++)
			printf("%d  ",*(*(y+i)+j));
		printf("\n");
	}

	Mult2mat(x,y,z);

	printf("The multiplied matrix is\n");
	for(i=0;i<m;i++){
		for(j=0;j<q;j++)
			printf("%d  ",*(*(z+i)+j));
		printf("\n");
	}

	return 0;




}