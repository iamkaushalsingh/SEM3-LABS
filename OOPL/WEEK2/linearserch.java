import java.util.Scanner;
public class linearserch {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the no. of array size");
        int  num = sc.nextInt();
        int []arr = new int[num];
        System.out.println("Enter the value of array");
        for(int i = 0; i<num; i++)
        {
            arr[i]= sc.nextInt();

        }
        System.out.println("Enter a number to find from the array");
        int find = sc.nextInt();
        int flag = 0;
        for (int j = 0; j < num; j++) {
            if (arr[j] == find) {
                flag = j;
            } 
        }
        if(flag != 0)
        {
            System.out.println("YOUR DATA found at "+flag+" index");
        }
    }
}
