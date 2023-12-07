#include <stdio.h>
unsigned char set(unsigned char num,unsigned char bit_number){
    return num |(1<<(bit_number-1));
}
unsigned char clear(unsigned char num,unsigned char bit_number){
    return num & (~(1<<bit_number-1));
}
unsigned char toggle(unsigned char num , unsigned char bit_number){
    return num ^ (1<<(bit_number-1));
}
int main(){
    printf("input\n");
    unsigned char num,bit_number,function_id;
    scanf("%hhu%hhu%hhu",&num,&bit_number,&function_id);
    printf("output\n");
    if(function_id == 1)
        printf("%hhu\n",set(num,bit_number));
    else if(function_id == 2)
        printf("%hhu\n",clear(num,bit_number));
    else if(function_id == 3)
        printf("%hhu\n",toggle(num,bit_number));
    else
        printf("%hhu\n",num);
}
