#include "stdio.h"

int main(){
    int x = 10;
    printf("Before change : %d\n",x);
    int* y = &x;
    *y = 20;
    printf("after change  : %d\n",x);
}