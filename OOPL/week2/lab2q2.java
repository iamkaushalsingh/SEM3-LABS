import java.util.Scanner;
public class lab2q2
{
 public static void main(String[] args)
 {
 int[] a = new int[50];
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the size of the array:");
        int n = sc.nextInt();
        System.out.println("Enter the elements:");
        for(int i=0; i<n; i++)
        {
            a[i] = sc.nextInt();
        }
        System.out.println("Enter the position to delete element:");
          int pos1 = sc.nextInt();
        for(int i=pos1-1; i<n; i++)
        {
            a[i] = a[i+1];
        }
        --n;
        System.out.println("The new array is:");
        for(int i=0;i<n;i++)
        {
            System.out.println(a[i] + " ");
        }

       int n2, pos2, m;
       System.out.print("Enter the size of the second array:");
       n2 = sc.nextInt();
       int a2[] = new int[n2+1];
       System.out.println("Enter the elements:");
       for(int i = 0; i < n2; i++)
	{
		a2[i] = sc.nextInt();
	}
	System.out.print("Enter the position to insert element:");
	pos2 = sc.nextInt();
	System.out.print("Enter the element you want to insert:");
	m = sc.nextInt();
	for(int i = (n2-1); i >= (pos2-1); i--)
	{
		a2[i+1] = a2[i];
	}
	a2[pos2-1] = m;
	System.out.print("The new array is:");
	for(int i = 0; i < n2; i++)
	{
		System.out.print(a2[i] + " ");
	}
	System.out.print(a2[n2]);

      }

 }
        
