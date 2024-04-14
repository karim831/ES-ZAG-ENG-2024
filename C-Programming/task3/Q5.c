#include <stdio.h>
int main(){
    printf("%s\n","input:");
    printf("%s","enter a number : ");
    int num;
    scanf("%d",&num);
    printf("%s\n","output:");
    int result = 1;
    int tmp = num;
    while(tmp){
        result*= tmp--;
    }
    printf("%d! = %d",num,result);
}