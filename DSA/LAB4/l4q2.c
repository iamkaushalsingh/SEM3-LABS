#include <stdio.h>
void Copy(char s1[], char s2[], int i)
{
    s2[i] = s1[i];
    if (s1[i] == '\0')
        return;
    Copy(s1, s2, i + 1);
}

 
int main()
{
    char s1[20], s2[20];
 
    printf("Enter string to copy: ");
    scanf("%s", s1);
    Copy(s1, s2, 0);
    printf("The first string is: %s\n", s1);
    printf("The second string is: %s\n", s2);
    return 0;
}
 

