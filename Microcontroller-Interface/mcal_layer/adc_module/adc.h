/* 
 * File:   adc.h
 * Author: karim osama
*/

#ifndef _ADC_H_
#define _ADC_H_

/*          includes                    */
#include "./adc_config.h"

/*          macro declaration           */

#define     AN0                 (uint8)0x00
#define     AN1                 (uint8)0x01
#define     AN2                 (uint8)0x02
#define     AN3                 (uint8)0x03
#define     AN4                 (uint8)0x04
#define     AN5                 (uint8)0x05
#define     AN6                 (uint8)0x06
#define     AN7                 (uint8)0x07
#define     AN8                 (uint8)0x08
#define     AN9                 (uint8)0x09
#define     AN10                (uint8)0x0A
#define     AN11                (uint8)0x0B
#define     AN12                (uint8)0x0C
#define     AN13                (uint8)0x0D


#define     FREQ                (uint8)0x14            
#define     FOSC2               (uint8)0x00 
#define     FOSC8               (uint8)0x01
#define     FOSC32              (uint8)0x10
#define     FRC                 (uint8)0x11

#define     ADC_VDD_VOLTAGE_REF     0
#define     ADC_PIN_VOTAGE_REF      1

#define     LEFT_JUSTIFY            0
#define     RIGHT_JUSTIFY           1

#define     ACQUISITION_TIME        4.67 //us
/*          macro function declaration  */
#define     ADC_SET_PIN_ANALOG(CH)         (CH < 8 ? (ANSEL |= 1<<CH) : (ANSELH |= (1<<(CH%8))))
#define     ADC_CLEAR_PIN_ANALOG(CH)       (CH < 8 ? (ANSEL &= ~(1<<CH)) : (ANSELH &= ~(1<<(CH%8))))


#define     ADC_SELECT_CLK(CLK)             (ADCON0bits.ADCS = CLK)

#define     ADC_SELECT_VOLTAGE_REF(REF)     do{\
                                                ADCON1bits.VCFG0 = REF;\
                                                ADCON1bits.VCFG1 = REF;\
                                            }while(0)

#define     ADC_SELECT_CHANNEL(CH)          (ADCON0bits.CHS = CH)

#define     ADC_SELECT_FORMAT(FORMAT)       (ADCON1bits.ADFM = FORMAT)
#define     ADC_READ_OUTPUT()               ((((uint16)ADRESH)<<8) | ADRESL)

#define     ADC_TURN_ON()                   (ADCON0bits.ADON = 1)
#define     ADC_TURN_OFF()                  (ADCON0bits.ADON = 0)

#define     ADC_START()                     (ADCON0bits.GO = 1)
#define     ADC_STATUS()                    (ADCON0bits.GO)
#define     ADC_STOP()                      (ADCON0bits.GO = 0)
/*          user data type declaration  */
typedef struct{
    uint8 ch;
    uint8 clk;
    uint8 ref;
    uint8 format;
}adc_t;

/*          function declaration        */
STD_RETURN_TYPE adc_init(const adc_t *const _adc);
STD_RETURN_TYPE adc_deinit(const adc_t *const _adc);
STD_RETURN_TYPE adc_select_channel(uint8 ch);
STD_RETURN_TYPE adc_select_clk(uint8 clk);
STD_RETURN_TYPE adc_select_ref(uint8 ref);
STD_RETURN_TYPE adc_select_format(uint8 format);

STD_RETURN_TYPE adc_turn_on(void);
STD_RETURN_TYPE adc_turn_off(void); 
STD_RETURN_TYPE adc_start(void);
STD_RETURN_TYPE adc_stop(void);
STD_RETURN_TYPE adc_conversion_status(uint8 *const _status);
STD_RETURN_TYPE adc_read_output(uint16 *const _data);

#endif