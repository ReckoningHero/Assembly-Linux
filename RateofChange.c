#include<stdio.h>

int main(int argc, char *argv[])
{
 
		int x1,x2,y1,y2;
		float ans;
		 
		printf("Enter first X parameter:"); 
		scanf("%d",&x1);
		 
		printf("Enter corresponding Y parameter:");
		scanf("%d",&y1);
		 
		printf("Enter second X parameter:");
		scanf("%d",&x2);
		 
		printf("Enter corresponding Y parameter:");
		scanf("%d",&y2);
		 
		ans = (y2-y1)/(x2-x1); 
		 
		printf("The rate of change is:%f \n",ans); 
		 
		if(ans > 0)
		{
			printf("The equation is increasing. \n");
		}
		else if(ans < 0)
		{
			printf("The equation is decreasing. \n");
		}
		else if (ans == 0) 
		{
			printf("The equation is not changing. \n");
		}
		 
		return 0;
}