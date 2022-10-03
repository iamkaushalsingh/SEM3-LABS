import java.util.Scanner;
public class lab2q3
{
	public static int Search(int arr[], int x)
    	{
        	int n = arr.length;
        	for (int i = 0; i < n; i++) 
        	{
            		if (arr[i] == x)
                	return i;
        	}
        	return -1;
    	}
    	   public static void main(String args[])
    {
        int[] arr = new int[50];
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the size of the array:");
        int n = sc.nextInt();
        System.out.println("Enter the elements:");
        for(int i=0; i<n; i++)
        {
            arr[i] = sc.nextInt();
        }
        System.out.println("Enter the element to be found:");
        int x = sc.nextInt();
        int result = Search(arr, x);
        int index = result+1;
        if (result == -1)
            System.out.println("Element is not present in array.");
        else
            System.out.print("Element is present at index " + index);
    }
}
