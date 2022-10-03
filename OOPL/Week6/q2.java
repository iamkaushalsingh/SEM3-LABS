import java.util.Scanner;
import java.lang.String;

public class q2
{
	public static void main(String args[])
	{
		Building B=new Building();
		B.read();
		B.displayB();
		House H=new House();
		H.read();
		H.displayH();
		School S=new School();
		S.read();
		S.displayS();
	}
}

class Building
{
	float sqf;
	int storeys;
	Scanner bc=new Scanner(System.in);
	Building()
	{
	}
	Building(float sqf,int storeys)
	{
		this.sqf=sqf;
		this.storeys=storeys;
	}
	void read()
	{
		System.out.println("Enter the area of the building in square feet: ");
		sqf=bc.nextFloat();
		System.out.println("Enter the number of storeys in the building: ");
		storeys=bc.nextInt();
		return;
	}
	void displayB()
	{
		System.out.println("The details of the building are: ");
		System.out.println("Area: "+sqf+"sqft");
		System.out.println("Storeys: "+storeys);
		return;
	}
}
		
class House extends Building
{
	int beds;
	int baths;
	Scanner hc=new Scanner(System.in);
	House()
	{
	}
	House(float sqf,int storeys,int beds,int baths)
	{
		this.sqf=sqf;
		this.storeys=storeys;
		this.beds=beds;
		this.baths=baths;
	}
	void read()
	{
		System.out.println("Enter the area of the house in square feet: ");
		sqf=hc.nextFloat();
		System.out.println("Enter the number of storeys in the house: ");
		storeys=hc.nextInt();
		System.out.println("Enter the number of bedrooms in the house ");
		beds=hc.nextInt();
		System.out.println("Enter the number of bathrooms in the house: ");
		baths=hc.nextInt();
		return;
	}
	void displayH()
	{
		System.out.println("The details of the house are: ");
		System.out.println("Area: "+sqf+"sqft");
		System.out.println("Storeys: "+storeys);
		System.out.println("Bedrooms: "+beds);
		System.out.println("Bathrooms:"+baths);
		return;
	}
}
class School extends Building
{
	int classrooms;
	String GradeLevel;
	Scanner sc=new Scanner(System.in);
	School()
	{
	}
	School(float sqf,int storeys,int classrooms,String GradeLevel)
	{
		this.sqf=sqf;
		this.storeys=storeys;
		this.classrooms=classrooms;
		this.GradeLevel=GradeLevel;
	}
	void read()
	{
		System.out.println("Enter the area of the school in square feet: ");
		sqf=sc.nextFloat();
		System.out.println("Enter the number of storeys in the school: ");
		storeys=sc.nextInt();
		System.out.println("Enter the number of classrooms: ");
		classrooms=sc.nextInt();
		System.out.println("Enter the grade level of the school: ");
		GradeLevel=sc.next();
		return;
	}
	void displayS()
	{
		System.out.println("The details of the school are: ");
		System.out.println("Area: "+sqf+"sqft");
		System.out.println("Storeys: "+storeys);
		System.out.println("Classrooms "+classrooms);
		System.out.println("Grade Level: "+GradeLevel);
		return;
		
	}
}

