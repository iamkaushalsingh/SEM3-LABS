import java.util.Scanner;
	
public class q3
{
	public static void main(String args[])
	{
		Figure R=new Rectangle();
		int aR=R.area();
		Figure T=new Triangle();
		int aT=T.area();
		Figure S=new Square();
		int aS=S.area();
		System.out.println("The area of the following shapes is: ");
		System.out.println("Rectangle: "+aR+" sq units\n");
		System.out.println("Triangle: "+aT+" sq units\n");
		System.out.println("Square: "+aS+" sq units");
	}
}

abstract class Figure
{
 	int dim1;
 	int dim2;
 	abstract int area();
}
class Rectangle extends Figure
{
	int area_r;
	Rectangle()
	{
		this.dim1=0;
		this.dim2=0;
	}
	Scanner rs=new Scanner(System.in);
	int area()
	{
		System.out.println("Enter the length and breadth of the rectangle: ");
		dim1=rs.nextInt();
		dim2=rs.nextInt();
		area_r=dim1*dim2;
		return area_r;
	}
}
class Triangle extends Figure
{
	int area_t;
	Triangle()
	{
		this.dim1=0;
		this.dim2=0;
	}
	Scanner ts=new Scanner(System.in);
	int area()
	{
		System.out.println("Enter the base and height of the triangle: ");
		dim1=ts.nextInt();
		dim2=ts.nextInt();
		int area_t=(dim1*dim2)/2;
		return area_t;
	}
}
class Square extends Figure
{
	int area_s;
	Square()
	{
		this.dim1=0;
		this.dim2=0;
	}
	Scanner ss=new Scanner(System.in);
	int area()
	{
		System.out.println("Enter the length of the side of the square: ");
		dim1=ss.nextInt();
		dim2=dim1;
		int area_s=(dim1*dim2);
		return area_s;
	}
}
