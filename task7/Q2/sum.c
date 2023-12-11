#include <stdio.h>
int main(){
    int sum =0,n;
    scanf("%d",&n);
    int ints[n];
    for(int i=0;i<n;i++){
        scanf("%d",ints+i);
    }
    for(int i=0;i<n;i++){
        sum+=ints[i];
    }
    printf("sum = %d\n",sum);
}
