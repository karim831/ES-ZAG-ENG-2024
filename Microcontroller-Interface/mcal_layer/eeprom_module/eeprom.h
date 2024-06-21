/* 
 * File:   eeprom.h
 * Author: karim osama
*/

#ifndef _EEPROM_H_
#define _EEPROM_H_

/*          includes                */

#include "eeprom_config.h"

/*      macro declaration           */

/*      macro function declaration  */


#define EEPROM_READ_EEADR()             (EEADR)
#define EEPROM_WRITE_EEADR(ADR)         (EEADR = ADR)

#define EEPROM_READ_EEDAT()             (EEDAT)
#define EEPROM_WRITE_EEDAT(DATA)        (EEDAT = DATA)

#define EEPROM_CLEAR_EEPGD()            (EECON1bits.EEPGD = 0)
/*      read from eeprom            */

#define EEPROM_SET_RD()                 (EECON1bits.RD = 1)
#define EEPROM_READ_RD()                (EECON1bits.RD)

/*      write to eeprom             */

#define EEPROM_CLEAR_WREN()             (EECON1bits.WREN = 0)
#define EEPROM_SET_WREN()               (EECON1bits.WREN = 1)

#define EEPROM_UNLOCK_WRITING()         (EECON2 = (uint8)0x55);(EECON2 = (uint8)0xAA)

#define EEPROM_SET_WR()                 (EECON1bits.WR = 1)
#define EEPROM_READ_WR()                (EECON1bits.WR)

/*      user data type declaration  */

typedef struct{
    uint8 adr;
    uint8 data;
}eeprom_t;

/*      function declaration        */
STD_RETURN_TYPE eeprom_r(eeprom_t *_eeprom,uint8 *_data);
STD_RETURN_TYPE eeprom_w(eeprom_t *_eeprom);

#endif