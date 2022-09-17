import java.util.Scanner;

class Counter{
	static int count = 0;
	public Counter(){
		count++;
	}
	public static void showCount(){
		System.out.println("Count = "+count);
	}
}
class lb4q4{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter Number of objects to be created : ");
		int n = sc.nextInt();
		Counter obj[] = new Counter[n];
		for(int i = 0 ; i < n ; i++){
			obj[i] = new Counter();
			Counter.showCount();
		}
	}
}
   
