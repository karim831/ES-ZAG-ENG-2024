#include <stdio.h>
int main(){
    printf("%s\n","enter the number of rows of floyd's triangle :");
    int row;
    scanf("%d",&row);
    int k = 1;
    int counter = 1;
    for(int i=1;i<=row;i++){
        for(int j=1;j<=counter;j++){
            j!=counter ? printf("%d ",k++) : printf("%d",k++);
        }
        counter++;
        printf("\n");
    }
}