#include <stdio.h>
int main(){
    printf("enter 10 numbers :\n");
    int nums[10];
    for(int i = 0;i<10;i++){
        scanf("%d",nums+i);
    }
    int min =nums[0],max = nums[0];
    for(int i = 1;i<10;i++){
        if(nums[i]>max)
            max = nums[i];
        if(nums[i]<min)
            min = nums[i];
    }
    printf("min = %d && max = %d",min,max);
}
