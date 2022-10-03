import java.util.Scanner;
import java.lang.String;

public class q1
{
	public static void main(String args[])
	{
		Person P=new Person();
		P.read(P);
		P.display(P);
		College_Graduate C=new College_Graduate();
		C.read(C);
		C.display(C);
	}
}

class Person
{
	private String name;
	private String dob;
	Person()
	{
	}
	Person(String name,String dob)
	{
		this.name=name;
		this.dob=dob;
	}
	Scanner sc=new Scanner(System.in);
	void read(Person P)
	{
		System.out.println("Enter the name of the person: ");
		P.name=sc.next();
		System.out.println("Enter the date of birth of the person(DD/MM/YYYY):");
		P.dob=sc.next();
		return;
	}
	void display(Person P)
	{
		System.out.println("The details of the person are as follows: ");
		System.out.println("Name: "+P.name);
		System.out.println("Date of Birth: "+P.dob);
		return;
	}
		
	
}
class College_Graduate extends Person
{
	private float GPA;
	private int yog;
	College_Graduate()
	{
	}
	College_Graduate(float GPA,int yog)
	{
		this.GPA=GPA;
		this.yog=yog;
	}
	void read(College_Graduate C)
	{
		System.out.println("Enter the GPA of the student: ");
		C.GPA=sc.nextFloat();
		System.out.println("Enter the year of graduation of the student:");
		C.yog=sc.nextInt();
		return;
	}
	void display(College_Graduate C)
	{
		System.out.println("The details of the student are as follows: ");
		System.out.println("GPA: "+C.GPA);
		System.out.println("Year of Graduation: "+C.yog);
		return;
	}
} 

