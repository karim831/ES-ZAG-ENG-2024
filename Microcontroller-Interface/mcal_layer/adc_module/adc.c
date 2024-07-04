/* 
 * File:   adc.c
 * Author: karim osama
*/

#include "./adc.h"
static inline void adc_input_channel(const uint8 ch);

#if(ADC_CONFIGURATION == CONFIG_ENABLE)

STD_RETURN_TYPE adc_init(const adc_t *const _adc){
    STD_RETURN_TYPE ret = E_OK;
    if(!_adc)
        ret = E_NOT_OK;
    else{
        adc_input_channel(_adc->ch);
        ADC_SET_PIN_ANALOG(_adc->ch);
        adc_select_clk(_adc->clk);
        adc_select_ref(_adc->ref);
        adc_select_channel(_adc->ch);
        adc_select_format(_adc->format);
        adc_turn_on();
    }
    return ret;
}


STD_RETURN_TYPE adc_deinit(const adc_t *const _adc){
    STD_RETURN_TYPE ret = E_OK;
    if(!_adc)
        ret = E_NOT_OK;
    else{
        adc_turn_off();
        ADC_CLEAR_PIN_ANALOG(_adc->ch);
    }
    return ret;
}

STD_RETURN_TYPE adc_select_channel(uint8 ch){
    STD_RETURN_TYPE ret = E_OK;
    if(ch > 13)
        ret = E_NOT_OK;
    else{
        ADC_SELECT_CHANNEL(ch);
    }
    return ret;
}

STD_RETURN_TYPE adc_select_clk(uint8 clk){
    STD_RETURN_TYPE ret = E_OK;
    if(clk > 3)
        ret = E_NOT_OK;
    else{
        ADC_SELECT_CLK(clk);
    }
    return ret;
}

STD_RETURN_TYPE adc_select_ref(uint8 ref){
    STD_RETURN_TYPE ret = E_OK;
    if(ref > 1)
        ret = E_NOT_OK;
    else{
        ADC_SELECT_VOLTAGE_REF(ref);
    }
    return ret;
}

STD_RETURN_TYPE adc_select_format(uint8 format){
    STD_RETURN_TYPE ret = E_OK;
    if(format > 1)
        ret = E_NOT_OK;
    else{
        ADC_SELECT_FORMAT(format);
    }
    return ret;
}

STD_RETURN_TYPE adc_turn_on(void){
    STD_RETURN_TYPE ret = E_OK;
    ADC_TURN_ON();
    return ret;
}

STD_RETURN_TYPE adc_turn_off(void){
    STD_RETURN_TYPE ret = E_OK;
    ADC_TURN_OFF();
    return ret;
}

STD_RETURN_TYPE adc_start(void){
    STD_RETURN_TYPE ret = E_OK;
    __delay_us(ACQUISITION_TIME);
    ADC_START();
    return ret;
}

#if(ADC_STOP_OPERATION == CONFIG_ENABLE)

STD_RETURN_TYPE adc_stop(void){
    STD_RETURN_TYPE ret = E_OK;
    ADC_STOP();
    return ret;
}

#endif
STD_RETURN_TYPE adc_conversion_status(uint8 *const _status){
    STD_RETURN_TYPE ret = E_OK;
    if(!_status)
        ret = E_NOT_OK;
    else
        *_status = ADC_STATUS();
    return ret;
}

STD_RETURN_TYPE adc_read_output(uint16 *const _data){
    STD_RETURN_TYPE ret = E_OK;
    if(!_data)
        ret = E_NOT_OK;
    else
        *_data = ADC_READ_OUTPUT();
    return ret;
}

static inline void adc_input_channel(const uint8 ch){
    switch(ch){
        case AN0:
                TRISAbits.TRISA0 = 1;
            break;
        case AN1:
                TRISAbits.TRISA1 = 1;
            break;
        case AN2:
                TRISAbits.TRISA2 = 1;
            break;
        case AN3:
                TRISAbits.TRISA3 = 1;
            break;
        case AN4:
                TRISAbits.TRISA5 = 1;
            break;
        case AN5:
                TRISEbits.TRISE0 = 1;
            break;
        case AN6:
                TRISEbits.TRISE1 = 1;
            break;
        case AN7:
                TRISEbits.TRISE2 = 1;
            break;
        case AN8:
                TRISBbits.TRISB2 = 1;
            break;
        case AN9:
                TRISBbits.TRISB3 = 1;
            break;
        case AN10:
                TRISBbits.TRISB1 = 1;
            break;
        case AN11:
                TRISBbits.TRISB4 = 1;
            break;
        case AN12:
                TRISBbits.TRISB0 = 1;
            break;
        case AN13:
                TRISBbits.TRISB5 = 1;
            break;
        default :;
    }
#endif


}