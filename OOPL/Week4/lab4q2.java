import java.util.Scanner;
public class lab4q2
{
	
	public static void main(String[] args) 
	{
		Time T1=new Time();
		Time T2=new Time(5,50,13);
		T1.Display(T1);
		T2.Display(T2);
	}

}

class Time 
{

	 int hours;
	 int minutes;
	 int seconds;
	 Time()
	 {
	 	hours=0;
	 	minutes=0;
	 	seconds=0;
	 }
	 Time(int hour, int minute, int second) 
	 {
		if (second >= 60) {
			minute += second / 60;
			second = second % 60;
		}
		if (minute >= 60) {
			hour += minute / 60;
			minute = minute % 60;
		}
		if (hour >= 24) {
			hour = hour % 24;
		}
		this.hours = hour;
		this.minutes = minute;
		this.seconds = second;
	}
	Time Display(Time T) 
	{
		System.out.println(+ T.hours + ":" + T.minutes + ":" + T.seconds);
		return T;
	}
	
}



