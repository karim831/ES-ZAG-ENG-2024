#include <stdio.h>
int main(){
    printf("Enter your number to reverse : ");
    int num;
    scanf("%d",&num);
    int ret = 0;
    while(num!=0){
        ret*=10;
        ret+= num%10;
        num/=10;
    }    
    printf("reverse number is %d",ret);
}
