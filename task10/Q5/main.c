#include <stdio.h>


float average(float array[],int n,int start){
    if(start == n)
        return 0.0;
    float sum = array[start]+average(array,n,start+1);
    return start ? sum : sum/n;
}
int main(){
    int n;
    printf("enter the number of elements : \n");
    scanf("%d",&n);
    float array[n];
    for(int i=0;i<n;i++){
        scanf("%f",array+i);
    }
    printf("average of array : %f\n",average(array,n,0));
    return 0;
}