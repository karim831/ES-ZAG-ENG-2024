// Write a C program that takes 5 inputs and prints the number that are 
// divisible by 3

#include <stdio.h>
int main(){
    int num;
    printf("%s\n","enter five inputs :");
    for(int i=0;i<5;i++){
        scanf("%d",&num);
        if(num%3 == 0)
            printf("%d\n",num);
    }
}