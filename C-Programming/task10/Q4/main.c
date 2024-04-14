#include <stdio.h>

int factorial(int number){
    if(number < 0)
        return -1;
    if(number == 0 || number == 1)
        return 1;
    return number * factorial(number-1);
}
int main(){
    int number;
    printf("enter the number :\n");
    scanf("%d",&number);
    printf("the factorial of number : %d\n",factorial(number));
    return 0;
}