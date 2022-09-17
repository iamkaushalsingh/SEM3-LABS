import java.util.Scanner;

class BankAccount{
	String name;
	long accno;
	String typeofacc;
	float bal;
	static double rate = 7.5;
	public BankAccount(){
		name = null;
		accno = 0;
		typeofacc = null;
		bal = 0.00;
	}
	public BankAccount(String n , long an , String ta , double b){
		name = n;
		accno = an;
		typeofacc = ta;
		bal = b;
	}
	
	public void depo(double am){
		bal+=am;
		System.out.println("\nAdding Amount");
	}
	
	public void withdraw(double amm){
		if((bal-amm)<1000){
			System.out.println("\nMinimum Balance Cant Withdraw!");
			System.exit(0);
		}
		else{
			bal-=amm;
			System.out.println("\nRemoving Amount");
		}
	}
	public void display(){
		System.out.println("Name = "+name);
		System.out.println("Account Number = "+accno);
		System.out.println("Type of Account = "+typeofacc);
		System.out.println("Balance = "+bal);
		System.out.println("Rate of Interest = "+BankAccount.rate);
	}
	
	public static void disprate(){
		System.out.println("Static Rate of Interest = "+rate);
	}
}
class la4q3
{
	public static void main(String args[])
	{
		Scanner sc = new Scanner(System.in);
	
		System.out.print("Enter Name of Account Holder : ");
		String n = sc.next();
		
		System.out.print("Enter Account Number : ");
		long acc = sc.nextLong();
		System.out.print("Enter Type of Account : ");
		String t = sc.next();
		System.out.print("Enter Balance in Account : ");
		double b = sc.nextDouble();  
		System.out.print("Enter Amount to be Deposited : ");
		double am = sc.nextDouble();
		System.out.print("Enter Amount to be Withdrawn : ");
		double amm = sc.nextDouble();
		
		BankAccount ba = new BankAccount();
		BankAccount ba1 = new BankAccount(n,acc,t,b);
		
		ba1.depo(am);
		ba1.withdraw(amm);
		
		System.out.print("Default Contructer Ba : ");
		ba.display();
		System.out.print("Parameterized Contructer Ba1 : ");
		ba1.display();
		
		BankAccount.disprate();
	}
}	

