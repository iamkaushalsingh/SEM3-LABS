#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int *Smallest(int*p,int o)
{
	int*b,*l,*mid;
	l=p+o;
	int *s=p;
	l=l-1;
	for(b=p;b<=l;b++){
		if(*s>*b)
			s=b;
	}
	return s;
}

int main()
{
	int *a,o,i;

	printf("Enter the value of n\n");
	scanf("%d",&o);

	a=calloc(o,sizeof(int));

	printf("Enter the elements into array\n");
	for(i=0;i<o;i++)
		scanf("%d",&a[i]);
	int *small= Smallest(a,o);

	printf("The smallest element is:%d\n",*small);

	return 0;

}
   