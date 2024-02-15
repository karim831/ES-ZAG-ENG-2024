#include <stdio.h>

void sum_sub(int var1,int var2,int* sum,int* sub){
    *sum = var1+var2;
    *sub = var1-var2;
    return;
}
int main(){
    int var1,var2;
    int sum = 0,sub = 0;
    printf("Enter two variables\n");
    scanf("%d %d",&var1,&var2);
    sum_sub(var1,var2,&sum,&sub);
    printf("the summation : %d \n"
            "the substruction : %d\n",
                sum,sub);
    return 0;
}