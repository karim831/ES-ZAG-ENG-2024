#include <stdio.h>
int main(){
    printf("%s\n","inputs:");
    printf("%s\n","enter the no of numbers");
    int size;
    scanf("%d",&size);
    if(size > 0){
        printf("%s\n","enter the numbers");
        float min,max;
        scanf("%f",&min);
        max = min;
        float tmp;
        for(int i=1;i<size;i++){
            scanf("%f",&tmp);
            if(min>tmp)
                min = tmp;
            if(max<tmp)
                max = tmp;
        }
        printf("min = %.2f\nmax = %.2f\n",min,max);
    }
    else{
        printf("%s\n","there's no data");
    }
}