  import java.util.Scanner;

public class Bubblesort2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the size of array");
        int n = sc.nextInt();
        int arr[]= new int[n];
        System.out.println("Enter the value of array");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();

        }
        int tem = 0;

        for (int i = 0; i < arr.length; i++) { // sortin in ascending order
            for (int j = 0; j < arr.length-1; j++) {
                if (arr[j] > arr[j+1]) {
                    tem = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = tem;
                }
            }
        }
        System.out.println("sorting in Ascending order");
        for (int i = 0; i < arr.length; i++) {
                System.out.println(arr[i]+" ");
        }


        for (int i = 0; i < arr.length; i++) { // sorting in descendig order
            for (int j = 0; j < arr.length-1; j++) {
                if (arr[j] < arr[j+1]) {
                    tem = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = tem;
                }
            }
        }
        System.out.println("sorting in Descendig order");
        for (int i = 0; i < arr.length; i++) {
                System.out.println(arr[i]+" ");
        }
        


    }
    
}




	
