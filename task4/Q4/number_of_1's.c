#include <stdio.h>
int main(){
    printf("enter the number :");
    unsigned int number;
    scanf("%u",&number);
    int shifting = 0,counter =0;
    while(shifting<32){
        if(((number>>shifting++)&1) == 1)
            counter++;
    }
    printf("%d",counter);
}
