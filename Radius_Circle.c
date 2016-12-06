#include <stdio.h>
#define PI 3.142
int main(int argc, char *argv[])
{
   int radius;
   float area, circumference;
 
   printf("Enter radius of circle: ");
   scanf("%d", &radius);
 
   area = PI * radius * radius;
   printf("\nArea of circle : %f ", area);
 
   circumference = 2 * PI * radius;
   printf("\nCircumference : %f ", circumference);
   
   return 0;
}
