#include<stdio.h>
int multiply(int m,int n,int arr1[m][n],int p,int q,int arr2[p][q])
{
   int i,j,k,r;
   int arr[m][q];
   for(i=0;i<m;i++)
   {
       for(j=0;j<q;j++)
       {
           arr[i][j]=0;
           for(k=0;k<m;k++)
           arr[i][j]+=(arr1[i][k]*arr2[k][j]);

       }
   }
   for(i=0;i<m;i++)
   {
       for(j=0;j<q;j++)
       printf("%d   ",arr[i][j]);
       printf("\n");
   }
}
int main()
{
   int i,j,m,n,p,q;
   printf("Enter the dimension of the first matrix:");
   printf("Row:");
   scanf("%d",&m);
   printf("Column:");
   scanf("%d",&n);
   int arr1[m][n];
   printf("Enter the first matrix:\n");
   for(i=0;i<m;i++)
   {
       for(j=0;j<n;j++)
       scanf("%d",&arr1[i][j]);
   }
   printf("Enter the dimension of the second matrix:");
   printf("Row:");
   scanf("%d",&p);
   printf("Column:");
   scanf("%d",&q);
   int arr2[p][q];
   printf("Enter the second matrix:\n");
   for(i=0;i<p;i++)
   {
       for(j=0;j<q;j++)
       scanf("%d",&arr2[i][j]);
   }
   printf("Array 1:\n");
   for(i=0;i<m;i++)
   {
       for(j=0;j<n;j++)
       printf("%d   ",arr1[i][j]);
       printf("\n");
   }
   printf("Array 2:\n");
   for(i=0;i<p;i++)
   {
       for(j=0;j<q;j++)
       printf("%d   ",arr2[i][j]);
       printf("\n");
   }
   if(n!=p)
   printf("Matrix multiplication not possible");
   else
   multiply(m,n,arr1,p,q,arr2);
}

