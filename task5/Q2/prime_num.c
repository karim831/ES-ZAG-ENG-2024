#include <stdio.h>
#include <math.h>
void is_prime(int num){
    for(int i=2;i<=sqrt(num);i++){
        if(num%i == 0){
            printf("NOT PRIME!\n");
            return;
        }
    }
    printf("IS PRIME!\n");
}
int main(){
    int num;
    scanf("%d",&num);
    is_prime(num);
}
