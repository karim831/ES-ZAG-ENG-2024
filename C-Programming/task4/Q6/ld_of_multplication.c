#include <stdio.h>
int main(){
    int a,b,c,d;
    printf("Input ");
    scanf("%d %d %d %d",&a,&b,&c,&d);
    int mul = a*b*c*d,tmp = mul%100;
    if(tmp < 10)
        printf("%d%d",0,tmp);
    else
        printf("%d",tmp);
}
