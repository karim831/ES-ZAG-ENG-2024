/* 
 * File:   interrupt_manager.c
 * Author: karim osama
*/

#include "interrupt_manager.h"

static uint8 flags[8] = {0};

void __interrupt() interrupt_manager(void){
    #if(EXTERNAL_INTERRUPT_INT_ENABLE == INTERRUPT_FEATURE_ENABLE)
        if(INTCONbits.INTE == INTERRUPT_ENABLE && INTCONbits.INTF == INTERRUPT_OCCURRED)
            INT_ISR();
    #endif
    #if(EXTERNAL_INTERRUPT_RB_ENABLE == INTERRUPT_FEATURE_ENABLE)
        if(INTCONbits.RBIE == INTERRUPT_ENABLE && INTCONbits.RBIF == INTERRUPT_OCCURRED){
            if(TRISBbits.TRISB0 == 1 && (PORTBbits.RB0 == 1 && flags[0] == 0)){
                RB0_ISR((uint8)0x01);
                flags[0] = (uint8)0x01;
            }
            else if(TRISBbits.TRISB0 == 1 && (PORTBbits.RB0 == 0 && flags[0] == 1)){
                RB0_ISR((uint8) 0x00);
                flags[0] = (uint8)0x00;
            }


            if(TRISBbits.TRISB1 == 1 && (PORTBbits.RB1 == 1 && flags[1] == 0)){
                RB1_ISR((uint8)0x01);
                flags[1] = (uint8)0x01;
            }
            else if(TRISBbits.TRISB1 == 1 && (PORTBbits.RB1 == 0 && flags[1] == 1)){
                RB1_ISR((uint8) 0x00);
                flags[1] = (uint8)0x00;
            }


            if(TRISBbits.TRISB2 == 1 && (PORTBbits.RB2 == 1 && flags[2] == 0)){
                RB2_ISR((uint8)0x01);
                flags[2] = (uint8)0x01;
            }
            else if(TRISBbits.TRISB2 == 1 && (PORTBbits.RB2 == 0 && flags[2] == 1)){
                RB2_ISR((uint8) 0x00);
                flags[2] = (uint8)0x00;
            }


            if(TRISBbits.TRISB3 == 1 && (PORTBbits.RB3 == 1 && flags[3] == 0)){
                RB3_ISR((uint8)0x01);
                flags[3] = (uint8)0x01;
            }
            else if(TRISBbits.TRISB3 == 1 && (PORTBbits.RB3 == 0 && flags[3] == 1)){
                RB3_ISR((uint8) 0x00);
                flags[3] = (uint8)0x00;
            }


            if(TRISBbits.TRISB4 == 1 && (PORTBbits.RB4 == 1 && flags[4] == 0)){
                RB4_ISR((uint8)0x01);
                flags[4] = (uint8)0x01;
            }
            else if(TRISBbits.TRISB4 == 1 && (PORTBbits.RB4 == 0 && flags[4] == 1)){
                RB4_ISR((uint8) 0x00);
                flags[4] = (uint8)0x00;
            }


            if(TRISBbits.TRISB5 == 1 && (PORTBbits.RB5 == 1 && flags[5] == 0)){
                RB5_ISR((uint8)0x01);
                flags[5] = (uint8)0x01;
            }
            else if(TRISBbits.TRISB5 == 1 && (PORTBbits.RB5 == 0 && flags[5] == 1)){
                RB5_ISR((uint8) 0x00);
                flags[5] = (uint8)0x00;
            }


            if(TRISBbits.TRISB6 == 1 && (PORTBbits.RB6 == 1 && flags[6] == 0)){
                RB6_ISR((uint8)0x01);
                flags[6] = (uint8)0x01;
            }
            else if(TRISBbits.TRISB6 == 1 && (PORTBbits.RB6 == 0 && flags[6] == 1)){
                RB6_ISR((uint8) 0x00);
                flags[6] = (uint8)0x00;
            }


            if(TRISBbits.TRISB7 == 1 && (PORTBbits.RB7 == 1 && flags[7] == 0)){
                RB7_ISR((uint8)0x01);
                flags[7] = (uint8)0x01;
            }
            else if(TRISBbits.TRISB7 == 1 && (PORTBbits.RB7 == 0 && flags[7] == 1)){
                RB7_ISR((uint8) 0x00);
                flags[7] = (uint8)0x00;
            }
        }
    #endif
}