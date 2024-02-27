#include "stdio.h"
#include "main.h"
int main(){
    months_t months = JUNE;
    switch(months){
        case JAN :
            printf("JAN = %d\n",JAN);
        break;
        case FEB :
            printf("JAN = %d\n",FEB);
        break;
        case MARS :
            printf("JAN = %d\n",MARS);
        break;
        case APRIL:
            printf("JAN = %d\n",APRIL);
        break;
        case MAY:
            printf("JAN = %d\n",MAY);
        break;
        case JUNE:
            printf("JAN = %d\n",JUNE);
        break;
        case JULY:
            printf("JAN = %d\n",JULY);
        break;
        case AUGUST:
            printf("JAN = %d\n",AUGUST);
        break;
        case SEP:
            printf("JAN = %d\n",SEP);
        break;
        case OCT:
            printf("JAN = %d\n",OCT);
        break;
        case NOV:
            printf("JAN = %d\n",NOV);
        break;
        case DES:
            printf("JAN = %d\n",DES);
        break;
        default :
            printf("NO MONTH IS CALLED!");
    }
}