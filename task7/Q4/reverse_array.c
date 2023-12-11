#include <stdio.h>
int main(){
    int sum =0,n;
    scanf("%d",&n);
    int ints[n];
    for(int i=0;i<n;i++){
        scanf("%d",ints+i);
    }
    int tmp;
    for(int i=0;i<n/2;i++){
        tmp = ints[i];
        ints[i] = ints[n-i-1];
        ints[n-i-1] = tmp;
    }
    for(int i=0;i<n;i++){
        printf("%d ",ints[i]);
    }
}
