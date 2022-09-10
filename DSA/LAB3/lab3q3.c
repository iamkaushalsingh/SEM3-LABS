#include <stdio.h>
#include <stdlib.h>
struct DOB 
{
	int Date;
	int Month;
	int year;
};

struct Addr
{
	int House_no;
	int zip_code;
	char state;
};

struct Employee
{
	char name[100];
	struct DOB d;
	struct Addr Address;
};


	
int main()
{
	struct Employee *e;
	int n;
	printf("Enter the Number of Employees : \n");
	scanf("%d",&n);
	e = calloc(n,sizeof(struct Employee));
	printf("Enter details for all Employee\n");
	for (int i = 0; i<n; ++i)
	{
		printf("Enter details for Employee %d\n",i+1);
		printf("enter the name of employee: ");
		scanf("%s", (e+i)->name);
		printf("Enter the Date of Birth of Employee : \n");
		scanf("%d",&(e+i)->d.Date);
		printf("Enter the Month of Birth of Employee : \n");
		scanf("%d",&(e+i)->d.Month);
		printf("Enter the Year of Birth of Employee : \n");
		scanf("%d",&(e+i)->d.year);
		printf("Enter the House Number of Employee : \n");
		scanf("%d",&(e+i)->Address.House_no);
		printf("Enter the Zip Code of Employee : \n");
		scanf("%d",&(e+i)->Address.zip_code);
		printf("Enter the state of Employee : \n");
		scanf("%c",&(e+i)->Address.state);
	}
		printf("\nPrint Details of Employees:\n");
	for( int i=0; i<n; ++i)
	{
		printf("\nPrinting Details of Employees: %d\n",i+1);
		printf("Name %s\n",(e+i)->name);
		printf("Date of Birth: %d-%d-%d \n",(e+i)->d.Date,(e+i)->d.Month,(e+i)->d.year);
		printf("Address: House Number: %d\n",(e+i)->Address.House_no),("\nZip Code: %d\n",(e+i)->Address.zip_code),("\nState: %c\n",(e+i)->Address.state);
	}
	
}
