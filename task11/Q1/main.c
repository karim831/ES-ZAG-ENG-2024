#include <stdio.h>
#include <math.h>
#include "main.h"
int main(){
    struct time start_time = {.hours = 0,.minutes = 0,.seconds =0};
    struct time stop_time = {.hours = 0,.minutes = 0,.seconds =0};
    printf("Enter start time :\n");
    printf("Enter hours, minutes and seconds respectively : ");
    scanf("%d %d %d",&start_time.hours,&start_time.minutes,&start_time.seconds);

    printf("Enter stop time :\n");
    printf("Enter hours, minutes and seconds respectively : ");
    scanf("%d %d %d",&stop_time.hours,&stop_time.minutes,&stop_time.seconds);
    printf("TIME DIFFERENCE: "
        "%d:%d:%d" " - " "%d:%d:%d" " = " "%d:%d:%d",
        start_time.hours,start_time.minutes,start_time.seconds,
        stop_time.hours,stop_time.minutes,stop_time.seconds,
        abs(stop_time.hours-start_time.hours),
        abs(stop_time.minutes-start_time.minutes),
        abs(stop_time.seconds-start_time.seconds) 
    );
    return 0;
}