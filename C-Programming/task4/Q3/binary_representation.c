#include <stdio.h>
int main(){
    printf("entet the number:");
    int num;
    scanf("%d",&num);
    int shifting = 32;
    if(num >=0)
        while((num&(1<<--shifting)) == 0);
    else{
        while((((unsigned int)(num&(1<<--shifting)))>>shifting) == 1 && shifting>=0);
        shifting++;
    }
    while(shifting>=0)
        printf("%d",(num&(1<<shifting))>>shifting--);

}
