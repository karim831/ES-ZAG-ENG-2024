/* 
 * File:   std_types.h
 * Author: karim osama
 */
#ifndef _STD_TYPES_H_
#define _STD_TYPES_H_

#define     uint8               unsigned char
#define     uint16              unsigned short
#define     uint32              unsigned int
#define     uint64              unsigned long long

#define     sint8               signed char
#define     sint16              signed short
#define     sint32              signed int
#define     sint64              signed long long

#define     dec32               float               
#define     dec64               double

#define     STD_RETURN_TYPE     uint8

#define     E_NOT_OK            (uint8)0x00
#define     E_OK                (uint8)0x01

#define     CONFIG_DISABLE      (uint8)0x00
#define     CONFIG_ENBALE       (uint8)0x01

#define     LOW                 (uint8)0x00
#define     HIGH                (uint8)0x01
   
#endif	/* STD_TYPES_H */

