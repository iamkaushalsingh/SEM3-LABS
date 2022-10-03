import java.util.Scanner;
import java.lang.String;

public class q4
{
	public static void main(String args[])
	{
		Results S=new Results();
		S.Read();
		S.Displaydet();
		S.Display();
	}
}

class Student
{
	String Name;
	String Id;
	Student()
	{
	}
}
class Sports extends Student
{
	int s_grade;
	Sports()
	{
	}
}
class Exam extends Sports
{
	int e_grade;
	Exam()
	{
	}
}
class Results extends Exam
{
	String fres;
	Results()
	{
	}
	Scanner sc=new Scanner(System.in);
	void Read()
	{
		System.out.println("Enter the details of the student: ");
		System.out.println("Name: ");
		Name=sc.next();
		System.out.println("ID: ");
		Id=sc.next();
		System.out.println("Sports Grade:");
		s_grade=sc.nextInt();
		System.out.println("Exam Grade:");
		e_grade=sc.nextInt();
		return;
	}
	void Displaydet()
	{
		System.out.println("\nThe student's details are as follows:\n");
		System.out.println("Name: "+Name);
		System.out.println("\nID: "+Id);
		System.out.println("\nSports Grade: "+s_grade);
		System.out.println("\nExam Grade: "+e_grade);
		return;
	}
	void Display()
	{
		
		if(s_grade>=5&&e_grade>=5)
		{
			fres="Exams: Pass\nSports: Pass";
		}
		else if(s_grade>=5)
		{
			fres="Exams: Fail\nSports: Pass";
		}
		else if(e_grade>=5)
		{
			fres="Exams: Pass\nSports: Fail";
		}
		else 
		{
			fres="Exams: Fail\nSports: Fail";
		}
		System.out.println("\nThe passing grade is a 5 or above.");
		System.out.println("The results of the student are as follows:\n"+fres);
		return;
	}
		
}
	
