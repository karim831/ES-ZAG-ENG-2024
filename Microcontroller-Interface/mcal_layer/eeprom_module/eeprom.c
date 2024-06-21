/* 
 * File:   eeprom.c
 * Author: karim osama
*/

#include "eeprom.h"

#if(EEPROM_CONFIG_READ_ENABLE == CONFIG_ENABLE)
    STD_RETURN_TYPE eeprom_r(eeprom_t *_eeprom,uint8 *_data){
        STD_RETURN_TYPE ret = E_OK;
        if(!_eeprom)
            ret = E_NOT_OK;
        else{
            EEPROM_WRITE_EEADR(_eeprom->adr);
            EEPROM_CLEAR_EEPGD();
            EEPROM_SET_RD();
            NOP();
            NOP();
            *_data = EEPROM_READ_EEDAT();
        }
        return ret;
    }
#endif

#if(EEPROM_CONFIG_WRITE_ENABLE == CONFIG_ENABLE)
    STD_RETURN_TYPE eeprom_w(eeprom_t *_eeprom){
        STD_RETURN_TYPE ret = E_OK;
        if(!_eeprom)
            ret = E_NOT_OK;
        else{
            EEPROM_WRITE_EEADR(_eeprom->adr);
            EEPROM_WRITE_EEDAT(_eeprom->data);
            EEPROM_CLEAR_EEPGD();
            EEPROM_SET_WREN();
            uint8 state = INTERRUPT_GIE_READ();
            INTERRUPT_GIE_DISABLE();
            EEPROM_UNLOCK_WRITING();
            EEPROM_SET_WR();
            while(EEPROM_READ_WR());
            EEPROM_CLEAR_WREN();
            state ? INTERRUPT_GIE_ENABLE() : INTERRUPT_GIE_DISABLE(); 
        }
        return ret;
    }
#endif