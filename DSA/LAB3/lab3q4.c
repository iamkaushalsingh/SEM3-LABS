#include <stdio.h>
#include <stdlib.h>
typedef struct DOB {
int *day;
int month;
int year;
} DOB_t;
typedef DOB_t* DOB_p_t;
typedef struct STU_INFO {
long reg_no;
char *name;
char *address;
} STU_INFO_t;
typedef struct COLLEGE {
char *college_name;
char *university_name;
} COLLEGE_t;
typedef struct STUDENT {
DOB_p_t dob;
STU_INFO_t sinfo;
COLLEGE_t college;
} STUDENT_t;
typedef STUDENT_t* STUDENT_p_t;
int main(int argc, const char * argv[]) {
STUDENT_p_t pstudent; 

pstudent = (STUDENT_p_t)malloc(sizeof(STUDENT_t));
pstudent->sinfo.name = (char *)malloc(sizeof(char *));
pstudent->sinfo.address = (char *)malloc(sizeof(char *));
pstudent->dob = (DOB_p_t)malloc(sizeof(DOB_p_t));
pstudent->dob->day = (int *)malloc(sizeof(int *));
pstudent->college.college_name = (char *)malloc(sizeof(char*));
pstudent->college.university_name = (char*)malloc(sizeof(char *));
printf("Enter student name: ");
scanf("%s", pstudent->sinfo.name);
printf("Enter student reg number: ");
scanf("%ld", &pstudent->sinfo.reg_no);
printf("Enter student address: ");
scanf("%s", pstudent->sinfo.address);
printf("Enter student DOB (dd/mm/yyyy): ");
scanf("%d%d%d", pstudent->dob->day,&(pstudent->dob->month), &(pstudent->dob->year));
printf("Enter student college name: ");
scanf("%s", pstudent->college.college_name);
printf("Enter student university name: ");
scanf("%s", pstudent->college.university_name);
printf("\n\n NAME: REG NO: ADDRESS: DOB (dd/mm/yyyy): COLLEGE: UNIVERSITY:");
printf("\n\n%s %ld %s %d/%d/%d %s %s",
pstudent->sinfo.name,
pstudent->sinfo.reg_no,
pstudent->sinfo.address,
*(pstudent->dob->day),
pstudent->dob->month,
pstudent->dob->year,
pstudent->college.college_name,
pstudent->college.university_name);
return 0;
}





