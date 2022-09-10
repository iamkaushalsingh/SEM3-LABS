#include <stdio.h>
int Reverse(int m, int * p)
{
        int i, n=0, temp=0;
        n=m;
        for(i=0;i<n/2;i++)
        {
            temp=p[i];
            p[i]=p[n-i-1];
            p[n-i-1]=temp;

        }
}
int main()
{
    int n,i;
    printf("Enter the number of elements:");
    scanf("%d",&n);
    int a[n];
    printf("Enter the elements:");
    for(i=0;i<n;i++)
    {
        scanf("%d",&a[i]);
    }
    Reverse(n,a);
    printf("Reversed array is:\n");
    for(i=0;i<n;i++)
    {
        printf("%d\n",a[i]);
    }
}