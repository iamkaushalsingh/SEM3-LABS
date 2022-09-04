import java.util.Scanner;

public class MatrixAddition {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int sum[][];
        System.out.println("Enter a number for row of matrix");
        int row = sc.nextInt();
        System.out.println("Enter a number for column of a matrix");
        int column = sc.nextInt();
        int matrix[][]= new int[row][column];
        int matrix1[][]= new int[row][column];
        System.out.println(matrix.length);
        System.out.println("Enter the element of matrix1");
        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix.length; j++) {
                matrix[i][j]=sc.nextInt();

            }
            System.out.println();
        }
        System.out.println("Enter the element of matrix2");
        for (int i = 0; i < matrix1.length; i++) {
            for (int j = 0; j < matrix1.length; j++) {
                matrix1[i][j]= sc.nextInt();
            }
            System.out.println();
        }
        System.out.println("The sum of the two matrices is");
        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix.length; j++) {
                System.out.print("["+matrix[i][j]+matrix1[i][j]+"]"+" ");
            }
            System.out.println();
        }


    }
}

