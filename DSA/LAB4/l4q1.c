#include <stdio.h>

int Fibonacci(int n)
{
   if(n==0)
   {
   	return 0;
   }
   if(n == 1)
   {
      return 1;
   } 
   else 
   {
      return (Fibonacci(n-1) + Fibonacci(n-2));
   }
}

int main()
{
   int n,i;
   printf("Enter the number of elements to print: ");
   scanf("%d",&n);
   printf("Fibonacci series uptil %d elements: " , n);
	
   for(i = 0;i<n;i++) 
   {
      printf("%d ",Fibonacci(i));            
   }
}
			

