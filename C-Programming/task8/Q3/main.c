#include <stdio.h>
#include "control.h"

int main(){
    int var = 5;
    printf("setting second bit : %d\n",Set_Bit(var,1));
    var = 5;
    printf("clearing third bit : %d\n",Clr_Bit(var,2));
    var = 5;
    printf("toggling second bit: %d\n",Toggle_Bit(var,1));
}