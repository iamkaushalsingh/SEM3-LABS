#include <stdio.h>
#include <stdlib.h>
typedef struct Student 
{
    char Name[100];
    int RollNo;
    float CGPA;
} 
Student;
Student read(Student* s)
{
	printf("Enter the name of the student:");
	scanf("%s",s->Name);
	printf("Enter the roll number of the student:");
	scanf("%d",&s->RollNo);
	printf("Enter the CGPA of the student:");
	scanf("%f",&s->CGPA);
}
Student display(Student s)
{
	printf("Name:%s\n",s.Name);
	printf("Roll Number:%d\n",s.RollNo);
	printf("CGPA:%f\n",s.CGPA);
}
Student sort(Student* s,int n)
{
	for(int i=0;i<n;i++)
	{
		for(int j=0;j<n;j++)
		{
			if(s[j].RollNo>s[j+1].RollNo)
			{
				Student temp = s[j];
				s[j]=s[j+1];
				s[j+1]=temp;
			}
		}
	}
	return *s;
}

	
int main()
{
   Student *ptr;
   int i, n;
   printf("Enter the number of students: ");
   scanf("%d", &n);
   ptr = (Student*) calloc(n,sizeof(Student));
   for(i=0;i<n;i++)
   {
   	printf("Data of student %d\n",i+1);
   	read(&ptr[i]);
   }
   for(i=0;i<n;i++)
   {
   	display(ptr[i]);
   }
}
