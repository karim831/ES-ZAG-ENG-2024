#ifndef _CONTROL_H_
    #define _CONTROL_H_
    
    #define Set_Bit(var,bit_no) ((var)|= (1<<(bit_no)))
    #define Clr_Bit(var,bit_no) ((var)&= ~(1<<(bit_no))) 
    #define Toggle_Bit(var,bit_no) ((var)^= (1<<(bit_no))) 
#endif