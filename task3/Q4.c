#include <stdio.h>
int main(){
    printf("%s\n","input:");
    printf("%s\n","enter number A: ");
    int a;
    scanf("%d",&a);
    printf("%s\n","enter number B: ");
    int b;
    scanf("%d",&b);
    printf("%s\n","output:");
    if(a<=b){
        for(int i=a;i<=b;i++)
            printf("%d\n",i);
    }
    else{
        for(int i=b;i<=a;i++)
            printf("%d\n",i);
    }
    
}