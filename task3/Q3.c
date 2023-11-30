#include <stdio.h>

int getPower(int num,int power){
    if(power == 0)
        return 1;
    if(power == 1)
        return num;

    return power%2 == 0 ?
        getPower(num,power/2) * getPower(num,power/2) :
        getPower(num,power/2) * getPower(num,power/2) * num;
}
int main(){
    printf("%s\n","input:");
    printf("%s\n","enter the number and its power");
    int num , power;
    scanf("%d%d",&num,&power);
    printf("%s\n","output");
    printf("%d\n",getPower(num,power));
}