#include <stdio.h>
#define PI 3.14
int main(){
    /*part 1 : Circle area */
    printf("%s\n","Enter the radius of the circle");
    float r = 0;
    scanf("%f",&r);
    float area = PI * r *r;
    printf("The area = %f\n",area);
    printf("#################\n");
    
    
    /*part2 min max*/
    printf("Enter three nums to compare\n");
    int var,min,max;
    scanf("%d",&var);
    min = max =var;
    for(int i=1;i<3;i++){
        scanf("%d",&var);
        if(var>max)
            max=var;
        if(var<min)
            min=var;
    }
    printf("the min = %d\nthe max = %d\n",min,max);
    printf("#################\n");
    
    
    
    /*part3 arithmetic op */
    printf("Enter four numbers\n");
    int a,b,c,d;
    scanf("%d %d %d %d",&a,&b,&c,&d);
    printf("the result = %d\n",
        (a*b)-(c*d)
    );
}
