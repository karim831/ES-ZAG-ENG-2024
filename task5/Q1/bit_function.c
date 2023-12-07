#include <stdio.h>
unsigned char set(unsigned char num,unsigned char bit_number){
    return num |(1<<bit_number);
}
unsigned char clear(unsigned char num,unsigned char bit_number){
    return num & (~(1<<bit_number));
}
unsigned char toggle(unsigned char num , unsigned char bit_number){
    return num ^ (1<<bit_number);
}
int main(){
    printf("input\n");
    unsigned char num,bit_number,function_id;
    scanf("%hhu%hhu%hhu",&num,&bit_number,&function_id);
    printf("output\n");
    switch(function_id){
        case 1:
            printf("%hhu\n",set(num,bit_number));
            break;
        case 2:
            printf("%hhu\n",clear(num,bit_number));
            break;
        case 3:
            printf("%hhu\n",toggle(num,bit_number));
            break;
        default:
            printf("%hhu\n",num);
    }
}
