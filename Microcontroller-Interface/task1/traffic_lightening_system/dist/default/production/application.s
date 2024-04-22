subtitle "Microchip MPLAB XC8 C Compiler v2.46 (Free license) build 20240104201356 Og1 "

pagewidth 120

	opt flic

	processor	16F887
include "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\16f887.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
INDF equ 00h ;# 
# 61 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PCL equ 02h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
FSR equ 04h ;# 
# 168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTA equ 05h ;# 
# 230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTB equ 06h ;# 
# 292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTC equ 07h ;# 
# 354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTD equ 08h ;# 
# 416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTE equ 09h ;# 
# 454 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PCLATH equ 0Ah ;# 
# 461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
INTCON equ 0Bh ;# 
# 539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PIR1 equ 0Ch ;# 
# 595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PIR2 equ 0Dh ;# 
# 652 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR1 equ 0Eh ;# 
# 659 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR1L equ 0Eh ;# 
# 666 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR1H equ 0Fh ;# 
# 673 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
T1CON equ 010h ;# 
# 767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR2 equ 011h ;# 
# 774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
T2CON equ 012h ;# 
# 845 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPBUF equ 013h ;# 
# 852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPCON equ 014h ;# 
# 922 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR1 equ 015h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR1L equ 015h ;# 
# 936 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR1H equ 016h ;# 
# 943 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCP1CON equ 017h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
RCSTA equ 018h ;# 
# 1135 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TXREG equ 019h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
RCREG equ 01Ah ;# 
# 1149 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR2 equ 01Bh ;# 
# 1156 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR2L equ 01Bh ;# 
# 1163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR2H equ 01Ch ;# 
# 1170 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCP2CON equ 01Dh ;# 
# 1240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ADRESH equ 01Eh ;# 
# 1247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ADCON0 equ 01Fh ;# 
# 1348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
OPTION_REG equ 081h ;# 
# 1418 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISA equ 085h ;# 
# 1480 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISB equ 086h ;# 
# 1542 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISC equ 087h ;# 
# 1604 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISD equ 088h ;# 
# 1666 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISE equ 089h ;# 
# 1704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PIE1 equ 08Ch ;# 
# 1760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PIE2 equ 08Dh ;# 
# 1817 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PCON equ 08Eh ;# 
# 1864 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
OSCCON equ 08Fh ;# 
# 1929 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
OSCTUNE equ 090h ;# 
# 1981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPCON2 equ 091h ;# 
# 2043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PR2 equ 092h ;# 
# 2050 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPADD equ 093h ;# 
# 2057 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPMSK equ 093h ;# 
# 2062 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
MSK equ 093h ;# 
# 2179 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPSTAT equ 094h ;# 
# 2348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
WPUB equ 095h ;# 
# 2418 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
IOCB equ 096h ;# 
# 2488 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
VRCON equ 097h ;# 
# 2558 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TXSTA equ 098h ;# 
# 2644 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SPBRG equ 099h ;# 
# 2706 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SPBRGH equ 09Ah ;# 
# 2776 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PWM1CON equ 09Bh ;# 
# 2846 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ECCPAS equ 09Ch ;# 
# 2928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PSTRCON equ 09Dh ;# 
# 2972 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ADRESL equ 09Eh ;# 
# 2979 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ADCON1 equ 09Fh ;# 
# 3013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
WDTCON equ 0105h ;# 
# 3066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CM1CON0 equ 0107h ;# 
# 3131 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CM2CON0 equ 0108h ;# 
# 3196 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CM2CON1 equ 0109h ;# 
# 3247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEDATA equ 010Ch ;# 
# 3252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEDAT equ 010Ch ;# 
# 3259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEADR equ 010Dh ;# 
# 3266 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEDATH equ 010Eh ;# 
# 3273 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEADRH equ 010Fh ;# 
# 3280 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SRCON equ 0185h ;# 
# 3337 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
BAUDCTL equ 0187h ;# 
# 3389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ANSEL equ 0188h ;# 
# 3451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ANSELH equ 0189h ;# 
# 3501 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EECON1 equ 018Ch ;# 
# 3546 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
INDF equ 00h ;# 
# 61 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PCL equ 02h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
FSR equ 04h ;# 
# 168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTA equ 05h ;# 
# 230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTB equ 06h ;# 
# 292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTC equ 07h ;# 
# 354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTD equ 08h ;# 
# 416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTE equ 09h ;# 
# 454 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PCLATH equ 0Ah ;# 
# 461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
INTCON equ 0Bh ;# 
# 539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PIR1 equ 0Ch ;# 
# 595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PIR2 equ 0Dh ;# 
# 652 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR1 equ 0Eh ;# 
# 659 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR1L equ 0Eh ;# 
# 666 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR1H equ 0Fh ;# 
# 673 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
T1CON equ 010h ;# 
# 767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR2 equ 011h ;# 
# 774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
T2CON equ 012h ;# 
# 845 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPBUF equ 013h ;# 
# 852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPCON equ 014h ;# 
# 922 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR1 equ 015h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR1L equ 015h ;# 
# 936 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR1H equ 016h ;# 
# 943 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCP1CON equ 017h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
RCSTA equ 018h ;# 
# 1135 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TXREG equ 019h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
RCREG equ 01Ah ;# 
# 1149 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR2 equ 01Bh ;# 
# 1156 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR2L equ 01Bh ;# 
# 1163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR2H equ 01Ch ;# 
# 1170 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCP2CON equ 01Dh ;# 
# 1240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ADRESH equ 01Eh ;# 
# 1247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ADCON0 equ 01Fh ;# 
# 1348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
OPTION_REG equ 081h ;# 
# 1418 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISA equ 085h ;# 
# 1480 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISB equ 086h ;# 
# 1542 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISC equ 087h ;# 
# 1604 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISD equ 088h ;# 
# 1666 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISE equ 089h ;# 
# 1704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PIE1 equ 08Ch ;# 
# 1760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PIE2 equ 08Dh ;# 
# 1817 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PCON equ 08Eh ;# 
# 1864 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
OSCCON equ 08Fh ;# 
# 1929 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
OSCTUNE equ 090h ;# 
# 1981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPCON2 equ 091h ;# 
# 2043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PR2 equ 092h ;# 
# 2050 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPADD equ 093h ;# 
# 2057 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPMSK equ 093h ;# 
# 2062 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
MSK equ 093h ;# 
# 2179 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPSTAT equ 094h ;# 
# 2348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
WPUB equ 095h ;# 
# 2418 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
IOCB equ 096h ;# 
# 2488 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
VRCON equ 097h ;# 
# 2558 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TXSTA equ 098h ;# 
# 2644 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SPBRG equ 099h ;# 
# 2706 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SPBRGH equ 09Ah ;# 
# 2776 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PWM1CON equ 09Bh ;# 
# 2846 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ECCPAS equ 09Ch ;# 
# 2928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PSTRCON equ 09Dh ;# 
# 2972 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ADRESL equ 09Eh ;# 
# 2979 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ADCON1 equ 09Fh ;# 
# 3013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
WDTCON equ 0105h ;# 
# 3066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CM1CON0 equ 0107h ;# 
# 3131 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CM2CON0 equ 0108h ;# 
# 3196 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CM2CON1 equ 0109h ;# 
# 3247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEDATA equ 010Ch ;# 
# 3252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEDAT equ 010Ch ;# 
# 3259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEADR equ 010Dh ;# 
# 3266 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEDATH equ 010Eh ;# 
# 3273 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEADRH equ 010Fh ;# 
# 3280 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SRCON equ 0185h ;# 
# 3337 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
BAUDCTL equ 0187h ;# 
# 3389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ANSEL equ 0188h ;# 
# 3451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ANSELH equ 0189h ;# 
# 3501 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EECON1 equ 018Ch ;# 
# 3546 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
INDF equ 00h ;# 
# 61 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PCL equ 02h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
FSR equ 04h ;# 
# 168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTA equ 05h ;# 
# 230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTB equ 06h ;# 
# 292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTC equ 07h ;# 
# 354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTD equ 08h ;# 
# 416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PORTE equ 09h ;# 
# 454 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PCLATH equ 0Ah ;# 
# 461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
INTCON equ 0Bh ;# 
# 539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PIR1 equ 0Ch ;# 
# 595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PIR2 equ 0Dh ;# 
# 652 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR1 equ 0Eh ;# 
# 659 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR1L equ 0Eh ;# 
# 666 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR1H equ 0Fh ;# 
# 673 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
T1CON equ 010h ;# 
# 767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TMR2 equ 011h ;# 
# 774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
T2CON equ 012h ;# 
# 845 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPBUF equ 013h ;# 
# 852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPCON equ 014h ;# 
# 922 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR1 equ 015h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR1L equ 015h ;# 
# 936 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR1H equ 016h ;# 
# 943 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCP1CON equ 017h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
RCSTA equ 018h ;# 
# 1135 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TXREG equ 019h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
RCREG equ 01Ah ;# 
# 1149 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR2 equ 01Bh ;# 
# 1156 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR2L equ 01Bh ;# 
# 1163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCPR2H equ 01Ch ;# 
# 1170 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CCP2CON equ 01Dh ;# 
# 1240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ADRESH equ 01Eh ;# 
# 1247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ADCON0 equ 01Fh ;# 
# 1348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
OPTION_REG equ 081h ;# 
# 1418 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISA equ 085h ;# 
# 1480 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISB equ 086h ;# 
# 1542 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISC equ 087h ;# 
# 1604 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISD equ 088h ;# 
# 1666 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TRISE equ 089h ;# 
# 1704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PIE1 equ 08Ch ;# 
# 1760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PIE2 equ 08Dh ;# 
# 1817 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PCON equ 08Eh ;# 
# 1864 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
OSCCON equ 08Fh ;# 
# 1929 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
OSCTUNE equ 090h ;# 
# 1981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPCON2 equ 091h ;# 
# 2043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PR2 equ 092h ;# 
# 2050 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPADD equ 093h ;# 
# 2057 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPMSK equ 093h ;# 
# 2062 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
MSK equ 093h ;# 
# 2179 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SSPSTAT equ 094h ;# 
# 2348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
WPUB equ 095h ;# 
# 2418 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
IOCB equ 096h ;# 
# 2488 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
VRCON equ 097h ;# 
# 2558 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
TXSTA equ 098h ;# 
# 2644 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SPBRG equ 099h ;# 
# 2706 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SPBRGH equ 09Ah ;# 
# 2776 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PWM1CON equ 09Bh ;# 
# 2846 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ECCPAS equ 09Ch ;# 
# 2928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
PSTRCON equ 09Dh ;# 
# 2972 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ADRESL equ 09Eh ;# 
# 2979 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ADCON1 equ 09Fh ;# 
# 3013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
WDTCON equ 0105h ;# 
# 3066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CM1CON0 equ 0107h ;# 
# 3131 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CM2CON0 equ 0108h ;# 
# 3196 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
CM2CON1 equ 0109h ;# 
# 3247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEDATA equ 010Ch ;# 
# 3252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEDAT equ 010Ch ;# 
# 3259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEADR equ 010Dh ;# 
# 3266 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEDATH equ 010Eh ;# 
# 3273 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EEADRH equ 010Fh ;# 
# 3280 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
SRCON equ 0185h ;# 
# 3337 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
BAUDCTL equ 0187h ;# 
# 3389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ANSEL equ 0188h ;# 
# 3451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
ANSELH equ 0189h ;# 
# 3501 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EECON1 equ 018Ch ;# 
# 3546 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic16f887.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_gpio_pin_set_logic
	FNCALL	_main,_initialization
	FNCALL	_initialization,_gpio_port_initialize
	FNCALL	_gpio_port_initialize,_gpio_port_set_directions
	FNCALL	_gpio_port_initialize,_gpio_port_set_logics
	FNROOT	_main
	global	_trises
	global	_ports
	global	_pin1
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	4

;initializer for _trises
	retlw	low(133)
	retlw	high(133)

	retlw	low(134)
	retlw	high(134)

	retlw	low(135)
	retlw	high(135)

	retlw	low(136)
	retlw	high(136)

	retlw	low(137)
	retlw	high(137)

	line	3

;initializer for _ports
	retlw	low(5)
	retlw	high(5)

	retlw	low(6)
	retlw	high(6)

	retlw	low(7)
	retlw	high(7)

	retlw	low(8)
	retlw	high(8)

	retlw	low(9)
	retlw	high(9)

	file	"application.c"
	line	3

;initializer for _pin1
	retlw	081h
	global	_ret
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_ret:
       ds      1

	global	_PORTE
_PORTE	set	0x9
	global	_PORTD
_PORTD	set	0x8
	global	_PORTC
_PORTC	set	0x7
	global	_PORTB
_PORTB	set	0x6
	global	_PORTA
_PORTA	set	0x5
	global	_TRISE
_TRISE	set	0x89
	global	_TRISD
_TRISD	set	0x88
	global	_TRISC
_TRISC	set	0x87
	global	_TRISB
_TRISB	set	0x86
	global	_TRISA
_TRISA	set	0x85
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config MCLRE = "ON"
	config CP = "OFF"
	config CPD = "OFF"
	config BOREN = "OFF"
	config IESO = "OFF"
	config FCMEN = "OFF"
	config LVP = "OFF"
	config BOR4V = "BOR21V"
	config WRT = "OFF"
	file	"dist/default/production\application.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	4
_trises:
       ds      10

psect	dataBANK0
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	3
_ports:
       ds      10

psect	dataBANK0
	file	"application.c"
	line	3
_pin1:
       ds      1

	file	"dist/default/production\application.s"
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+21)
	movwf btemp-1
	movlw high(__pidataBANK0)
	movwf btemp
	movlw low(__pidataBANK0)
	movwf btemp+1
	movlw low(__pdataBANK0)
	movwf fsr
	fcall init_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_initialization:	; 1 bytes @ 0x0
?_gpio_pin_set_logic:	; 1 bytes @ 0x0
??_gpio_pin_set_logic:	; 1 bytes @ 0x0
?_gpio_port_set_directions:	; 1 bytes @ 0x0
?_gpio_port_set_logics:	; 1 bytes @ 0x0
	global	gpio_port_set_directions@gpio_directions
gpio_port_set_directions@gpio_directions:	; 1 bytes @ 0x0
	global	gpio_port_set_logics@gpio_logics
gpio_port_set_logics@gpio_logics:	; 1 bytes @ 0x0
	ds	1
??_gpio_port_set_directions:	; 1 bytes @ 0x1
??_gpio_port_set_logics:	; 1 bytes @ 0x1
	ds	3
	global	gpio_port_set_directions@ret
gpio_port_set_directions@ret:	; 1 bytes @ 0x4
	global	gpio_port_set_logics@ret
gpio_port_set_logics@ret:	; 1 bytes @ 0x4
	ds	1
	global	gpio_pin_set_logic@ret
gpio_pin_set_logic@ret:	; 1 bytes @ 0x5
	global	gpio_port_set_directions@gpio_port
gpio_port_set_directions@gpio_port:	; 1 bytes @ 0x5
	global	gpio_port_set_logics@gpio_port
gpio_port_set_logics@gpio_port:	; 1 bytes @ 0x5
	ds	1
?_gpio_port_initialize:	; 1 bytes @ 0x6
	global	gpio_pin_set_logic@_gpio_pin
gpio_pin_set_logic@_gpio_pin:	; 1 bytes @ 0x6
	global	gpio_port_initialize@gpio_directions
gpio_port_initialize@gpio_directions:	; 1 bytes @ 0x6
	ds	1
	global	gpio_port_initialize@gpio_logics
gpio_port_initialize@gpio_logics:	; 1 bytes @ 0x7
	ds	1
??_gpio_port_initialize:	; 1 bytes @ 0x8
	global	gpio_port_initialize@gpio_port
gpio_port_initialize@gpio_port:	; 1 bytes @ 0x8
	ds	1
	global	gpio_port_initialize@ret
gpio_port_initialize@ret:	; 1 bytes @ 0x9
	ds	1
??_initialization:	; 1 bytes @ 0xA
?_main:	; 2 bytes @ 0xA
main@argc:	; 2 bytes @ 0xA
	ds	2
main@argv:	; 2 bytes @ 0xC
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_main:	; 1 bytes @ 0x0
	ds	3
	global	main@i
main@i:	; 1 bytes @ 0x3
	ds	1
	global	main@i_72
main@i_72:	; 1 bytes @ 0x4
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        21
;!    BSS         0
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80      5      27
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    gpio_pin_set_logic@_gpio_pin	PTR struct . size(1) Largest target is 1
;!		 -> pin1(BANK0[1]), 
;!
;!    ports	PTR volatile unsigned char [5] size(2) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTB(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTE(SFR0[1]), 
;!
;!    trises	PTR volatile unsigned char [5] size(2) Largest target is 1
;!		 -> TRISA(SFR1[1]), TRISB(SFR1[1]), TRISC(SFR1[1]), TRISD(SFR1[1]), 
;!		 -> TRISE(SFR1[1]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _initialization->_gpio_port_initialize
;!    _gpio_port_initialize->_gpio_port_set_directions
;!    _gpio_port_initialize->_gpio_port_set_logics
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 9     5      4    1100
;!                                             10 COMMON     4     0      4
;!                                              0 BANK0      5     5      0
;!                 _gpio_pin_set_logic
;!                     _initialization
;! ---------------------------------------------------------------------------------
;! (1) _initialization                                       0     0      0     620
;!               _gpio_port_initialize
;! ---------------------------------------------------------------------------------
;! (2) _gpio_port_initialize                                 4     2      2     620
;!                                              6 COMMON     4     2      2
;!           _gpio_port_set_directions
;!               _gpio_port_set_logics
;! ---------------------------------------------------------------------------------
;! (3) _gpio_port_set_logics                                 6     5      1     166
;!                                              0 COMMON     6     5      1
;! ---------------------------------------------------------------------------------
;! (3) _gpio_port_set_directions                             6     5      1     166
;!                                              0 COMMON     6     5      1
;! ---------------------------------------------------------------------------------
;! (1) _gpio_pin_set_logic                                   7     7      0     388
;!                                              0 COMMON     7     7      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _gpio_pin_set_logic
;!   _initialization
;!     _gpio_port_initialize
;!       _gpio_port_set_directions
;!       _gpio_port_set_logics
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      5      1B       5       33.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      29      12        0.0%
;!ABS                  0      0      29       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "application.c"
;; Parameters:    Size  Location     Type
;;  argc            2   10[COMMON] int 
;;  argv            2   12[COMMON] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1    4[BANK0 ] unsigned char 
;;  i               1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   10[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         4       5       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_gpio_pin_set_logic
;;		_initialization
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"application.c"
	line	11
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"application.c"
	line	11
	
_main:	
;incstack = 0
	callstack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	12
	
l974:	
	fcall	_initialization
	line	14
	
l976:	
	movlw	((0 & ((1<<3)-1))<<3)|not (((1<<3)-1)<<3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_pin1),f
	line	15
	
l978:	
	movlw	(low(_pin1|((0x0)<<8)))&0ffh
	fcall	_gpio_pin_set_logic
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	16
	
l980:	
	clrf	(main@i)
	line	17
	
l986:	
	asmopt push
asmopt off
movlw  102
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2)
movlw	118
movwf	((??_main+0)+0+1)
	movlw	192
movwf	((??_main+0)+0)
	u577:
decfsz	((??_main+0)+0),f
	goto	u577
	decfsz	((??_main+0)+0+1),f
	goto	u577
	decfsz	((??_main+0)+0+2),f
	goto	u577
	nop
asmopt pop

	
l988:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	
l990:	
	movlw	low(06h)
	subwf	(main@i),w
	skipc
	goto	u351
	goto	u350
u351:
	goto	l986
u350:
	
l19:	
	line	18
	bcf	(_pin1),7
	line	19
	
l992:	
	movlw	(low(_pin1|((0x0)<<8)))&0ffh
	fcall	_gpio_pin_set_logic
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	20
	
l994:	
	bsf	(_pin1),7
	line	22
	
l996:	
	movf	(_pin1),w
	andlw	not (((1<<3)-1)<<3)
	iorlw	(03h & ((1<<3)-1))<<3
	movwf	(_pin1)
	line	23
	
l998:	
	movlw	(low(_pin1|((0x0)<<8)))&0ffh
	fcall	_gpio_pin_set_logic
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	24
	
l1000:	
	asmopt push
asmopt off
movlw  102
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2)
movlw	118
movwf	((??_main+0)+0+1)
	movlw	192
movwf	((??_main+0)+0)
	u587:
decfsz	((??_main+0)+0),f
	goto	u587
	decfsz	((??_main+0)+0+1),f
	goto	u587
	decfsz	((??_main+0)+0+2),f
	goto	u587
	nop
asmopt pop

	line	25
	
l1002:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_pin1),7
	line	26
	
l1004:	
	movlw	(low(_pin1|((0x0)<<8)))&0ffh
	fcall	_gpio_pin_set_logic
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	27
	
l1006:	
	bsf	(_pin1),7
	line	29
	
l1008:	
	movf	(_pin1),w
	andlw	not (((1<<3)-1)<<3)
	iorlw	(06h & ((1<<3)-1))<<3
	movwf	(_pin1)
	line	30
	
l1010:	
	movlw	(low(_pin1|((0x0)<<8)))&0ffh
	fcall	_gpio_pin_set_logic
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	31
	
l1012:	
	clrf	(main@i_72)
	line	32
	
l1018:	
	asmopt push
asmopt off
movlw  102
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2)
movlw	118
movwf	((??_main+0)+0+1)
	movlw	192
movwf	((??_main+0)+0)
	u597:
decfsz	((??_main+0)+0),f
	goto	u597
	decfsz	((??_main+0)+0+1),f
	goto	u597
	decfsz	((??_main+0)+0+2),f
	goto	u597
	nop
asmopt pop

	
l1020:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i_72),f
	
l1022:	
	movlw	low(06h)
	subwf	(main@i_72),w
	skipc
	goto	u361
	goto	u360
u361:
	goto	l1018
u360:
	
l21:	
	line	33
	bcf	(_pin1),7
	line	34
	
l1024:	
	movlw	(low(_pin1|((0x0)<<8)))&0ffh
	fcall	_gpio_pin_set_logic
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	35
	
l1026:	
	bsf	(_pin1),7
	goto	l976
	global	start
	ljmp	start
	callstack 0
	line	38
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_initialization

;; *************** function _initialization *****************
;; Defined at:
;;		line 39 in file "application.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_gpio_port_initialize
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	39
global __ptext1
__ptext1:	;psect for function _initialization
psect	text1
	file	"application.c"
	line	39
	
_initialization:	
;incstack = 0
	callstack 5
; Regs used in _initialization: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	40
	
l952:	
	clrf	(gpio_port_initialize@gpio_directions)
	clrf	(gpio_port_initialize@gpio_logics)
	movlw	low(01h)
	fcall	_gpio_port_initialize
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	41
	
l27:	
	return
	callstack 0
GLOBAL	__end_of_initialization
	__end_of_initialization:
	signat	_initialization,89
	global	_gpio_port_initialize

;; *************** function _gpio_port_initialize *****************
;; Defined at:
;;		line 109 in file "../../mcal_layer/gpio_module/gpio.c"
;; Parameters:    Size  Location     Type
;;  gpio_port       1    wreg     unsigned char 
;;  gpio_directi    1    6[COMMON] unsigned char 
;;  gpio_logics     1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  gpio_port       1    8[COMMON] unsigned char 
;;  ret             1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_gpio_port_set_directions
;;		_gpio_port_set_logics
;; This function is called by:
;;		_initialization
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	109
global __ptext2
__ptext2:	;psect for function _gpio_port_initialize
psect	text2
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	109
	
_gpio_port_initialize:	
;incstack = 0
	callstack 5
; Regs used in _gpio_port_initialize: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(gpio_port_initialize@gpio_port)
	line	110
	
l938:	
	line	111
	
l940:	
	movf	(gpio_port_initialize@gpio_directions),w
	movwf	(gpio_port_set_directions@gpio_directions)
	movf	(gpio_port_initialize@gpio_port),w
	fcall	_gpio_port_set_directions
	movwf	(gpio_port_initialize@ret)
	line	112
	
l942:	
	movf	((gpio_port_initialize@ret)),w
	btfsc	status,2
	goto	u311
	goto	u310
u311:
	goto	l946
u310:
	line	113
	
l944:	
	movf	(gpio_port_initialize@gpio_logics),w
	movwf	(gpio_port_set_logics@gpio_logics)
	movf	(gpio_port_initialize@gpio_port),w
	fcall	_gpio_port_set_logics
	movwf	(gpio_port_initialize@ret)
	goto	l948
	line	115
	
l946:	
	clrf	(gpio_port_initialize@ret)
	line	116
	
l948:	
	movf	(gpio_port_initialize@ret),w
	line	117
	
l108:	
	return
	callstack 0
GLOBAL	__end_of_gpio_port_initialize
	__end_of_gpio_port_initialize:
	signat	_gpio_port_initialize,12409
	global	_gpio_port_set_logics

;; *************** function _gpio_port_set_logics *****************
;; Defined at:
;;		line 144 in file "../../mcal_layer/gpio_module/gpio.c"
;; Parameters:    Size  Location     Type
;;  gpio_port       1    wreg     unsigned char 
;;  gpio_logics     1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  gpio_port       1    5[COMMON] unsigned char 
;;  ret             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_gpio_port_initialize
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	144
global __ptext3
__ptext3:	;psect for function _gpio_port_set_logics
psect	text3
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	144
	
_gpio_port_set_logics:	
;incstack = 0
	callstack 5
; Regs used in _gpio_port_set_logics: [wreg-fsr0h+status,2+status,0]
	movwf	(gpio_port_set_logics@gpio_port)
	line	145
	
l926:	
	clrf	(gpio_port_set_logics@ret)
	incf	(gpio_port_set_logics@ret),f
	line	146
	
l928:	
	movlw	low(05h)
	subwf	(gpio_port_set_logics@gpio_port),w
	skipnc
	goto	u301
	goto	u300
u301:
	goto	l932
u300:
	line	147
	
l930:	
	movf	(gpio_port_set_logics@gpio_port),w
	movwf	(??_gpio_port_set_logics+0)+0
	addwf	(??_gpio_port_set_logics+0)+0,w
	addlw	low(_ports|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_gpio_port_set_logics+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_gpio_port_set_logics+1)+0+1
	movf	0+(??_gpio_port_set_logics+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_gpio_port_set_logics+1)+0,0
	bcf	status,7
	movf	(gpio_port_set_logics@gpio_logics),w
	movwf	indf
	line	148
	goto	l934
	line	150
	
l932:	
	clrf	(gpio_port_set_logics@ret)
	line	151
	
l934:	
	movf	(gpio_port_set_logics@ret),w
	line	152
	
l123:	
	return
	callstack 0
GLOBAL	__end_of_gpio_port_set_logics
	__end_of_gpio_port_set_logics:
	signat	_gpio_port_set_logics,8313
	global	_gpio_port_set_directions

;; *************** function _gpio_port_set_directions *****************
;; Defined at:
;;		line 120 in file "../../mcal_layer/gpio_module/gpio.c"
;; Parameters:    Size  Location     Type
;;  gpio_port       1    wreg     unsigned char 
;;  gpio_directi    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  gpio_port       1    5[COMMON] unsigned char 
;;  ret             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_gpio_port_initialize
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	120
global __ptext4
__ptext4:	;psect for function _gpio_port_set_directions
psect	text4
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	120
	
_gpio_port_set_directions:	
;incstack = 0
	callstack 5
; Regs used in _gpio_port_set_directions: [wreg-fsr0h+status,2+status,0]
	movwf	(gpio_port_set_directions@gpio_port)
	line	121
	
l914:	
	clrf	(gpio_port_set_directions@ret)
	incf	(gpio_port_set_directions@ret),f
	line	122
	
l916:	
	movlw	low(05h)
	subwf	(gpio_port_set_directions@gpio_port),w
	skipnc
	goto	u291
	goto	u290
u291:
	goto	l920
u290:
	line	123
	
l918:	
	movf	(gpio_port_set_directions@gpio_port),w
	movwf	(??_gpio_port_set_directions+0)+0
	addwf	(??_gpio_port_set_directions+0)+0,w
	addlw	low(_trises|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_gpio_port_set_directions+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_gpio_port_set_directions+1)+0+1
	movf	0+(??_gpio_port_set_directions+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_gpio_port_set_directions+1)+0,0
	bcf	status,7
	movf	(gpio_port_set_directions@gpio_directions),w
	movwf	indf
	line	124
	goto	l922
	line	126
	
l920:	
	clrf	(gpio_port_set_directions@ret)
	line	127
	
l922:	
	movf	(gpio_port_set_directions@ret),w
	line	128
	
l113:	
	return
	callstack 0
GLOBAL	__end_of_gpio_port_set_directions
	__end_of_gpio_port_set_directions:
	signat	_gpio_port_set_directions,8313
	global	_gpio_pin_set_logic

;; *************** function _gpio_pin_set_logic *****************
;; Defined at:
;;		line 51 in file "../../mcal_layer/gpio_module/gpio.c"
;; Parameters:    Size  Location     Type
;;  _gpio_pin       1    wreg     PTR struct .
;;		 -> pin1(1), 
;; Auto vars:     Size  Location     Type
;;  _gpio_pin       1    6[COMMON] PTR struct .
;;		 -> pin1(1), 
;;  ret             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_gpio_pin_initialize
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	51
global __ptext5
__ptext5:	;psect for function _gpio_pin_set_logic
psect	text5
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	51
	
_gpio_pin_set_logic:	
;incstack = 0
	callstack 7
; Regs used in _gpio_pin_set_logic: [wreg-fsr0h+status,2+status,0+btemp+1]
	movwf	(gpio_pin_set_logic@_gpio_pin)
	line	52
	
l954:	
	clrf	(gpio_pin_set_logic@ret)
	incf	(gpio_pin_set_logic@ret),f
	line	53
	
l956:	
	movf	((gpio_pin_set_logic@_gpio_pin)),w
	btfsc	status,2
	goto	u321
	goto	u320
u321:
	goto	l964
u320:
	goto	l966
	line	56
	
l960:	
	movlw	low(01h)
	movwf	(??_gpio_pin_set_logic+0)+0
	movf	(gpio_pin_set_logic@_gpio_pin),w
	movwf	fsr0
	rrf	indf,w
	movwf	(??_gpio_pin_set_logic+1)+0
	rrf	(??_gpio_pin_set_logic+1)+0,f
	rrf	(??_gpio_pin_set_logic+1)+0,w
	andlw	(1<<3)-1
	addlw	1
	goto	u334
u335:
	clrc
	rlf	(??_gpio_pin_set_logic+0)+0,f
u334:
	addlw	-1
	skipz
	goto	u335
	movf	0+(??_gpio_pin_set_logic+0)+0,w
	xorlw	0ffh
	movwf	btemp+1
	movf	(gpio_pin_set_logic@_gpio_pin),w
	movwf	fsr0
	movf	indf,w
	andlw	(1<<3)-1
	movwf	(??_gpio_pin_set_logic+2)+0
	addwf	(??_gpio_pin_set_logic+2)+0,w
	addlw	low(_ports|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_gpio_pin_set_logic+3)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_gpio_pin_set_logic+3)+0+1
	movf	0+(??_gpio_pin_set_logic+3)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_gpio_pin_set_logic+3)+0,0
	bcf	status,7
	movf	btemp+1,w
	andwf	indf,f
	line	57
	goto	l970
	line	59
	
l962:	
	movlw	low(01h)
	movwf	(??_gpio_pin_set_logic+0)+0
	movf	(gpio_pin_set_logic@_gpio_pin),w
	movwf	fsr0
	rrf	indf,w
	movwf	(??_gpio_pin_set_logic+1)+0
	rrf	(??_gpio_pin_set_logic+1)+0,f
	rrf	(??_gpio_pin_set_logic+1)+0,w
	andlw	(1<<3)-1
	addlw	1
	goto	u344
u345:
	clrc
	rlf	(??_gpio_pin_set_logic+0)+0,f
u344:
	addlw	-1
	skipz
	goto	u345
	movf	0+(??_gpio_pin_set_logic+0)+0,w
	movwf	btemp+1
	movf	(gpio_pin_set_logic@_gpio_pin),w
	movwf	fsr0
	movf	indf,w
	andlw	(1<<3)-1
	movwf	(??_gpio_pin_set_logic+2)+0
	addwf	(??_gpio_pin_set_logic+2)+0,w
	addlw	low(_ports|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_gpio_pin_set_logic+3)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_gpio_pin_set_logic+3)+0+1
	movf	0+(??_gpio_pin_set_logic+3)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_gpio_pin_set_logic+3)+0,0
	bcf	status,7
	movf	btemp+1,w
	iorwf	indf,f
	line	60
	goto	l970
	line	62
	
l964:	
	clrf	(gpio_pin_set_logic@ret)
	line	63
	goto	l970
	
l966:	
	movf	(gpio_pin_set_logic@_gpio_pin),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	rlf	indf,w
	rlf	indf,w
	andlw	1
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l960
	xorlw	1^0	; case 1
	skipnz
	goto	l962
	goto	l964
	asmopt pop

	line	67
	
l970:	
	movf	(gpio_pin_set_logic@ret),w
	line	68
	
l88:	
	return
	callstack 0
GLOBAL	__end_of_gpio_pin_set_logic
	__end_of_gpio_pin_set_logic:
	signat	_gpio_pin_set_logic,4217
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
