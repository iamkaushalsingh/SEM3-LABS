#include<stdio.h>
#include<stdlib.h>
int *BIG(int*p, int*q)
{
	if(*p>*q)return p;
	else return q;
}
int main()
{
	int m,n;
	int *p,*q,**r;
	printf("Enter the First number- ");
	scanf("%d",&m);
	printf("Enter the Second number- ");
	scanf("%d",&n);
	p=&m;
	q=&n;
	int*o=BIG(p,q);
	r=&o;
	printf("The BIGGEST AMONG THE TWO IS: %d\n",**r);
	return 0;

}
