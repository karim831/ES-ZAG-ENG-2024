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
	FNCALL	_main,_application_converge_leds
	FNCALL	_main,_application_flash_leds
	FNCALL	_main,_application_shift_left_leds
	FNCALL	_main,_application_shift_right_leds
	FNCALL	_main,_initialization
	FNCALL	_main,_switch_read_status
	FNCALL	_initialization,_build_leds
	FNCALL	_initialization,_build_switchs
	FNCALL	_initialization,_led_init
	FNCALL	_initialization,_switch_init
	FNCALL	_switch_init,_gpio_pin_set_direction
	FNCALL	_led_init,_gpio_pin_set_direction
	FNCALL	_led_init,_led_set_status
	FNCALL	_application_shift_right_leds,_led_set_status
	FNCALL	_application_shift_right_leds,_switch_read_status
	FNCALL	_application_shift_left_leds,_led_set_status
	FNCALL	_application_shift_left_leds,_switch_read_status
	FNCALL	_application_flash_leds,_led_set_status
	FNCALL	_application_flash_leds,_switch_read_status
	FNCALL	_application_converge_leds,_led_set_status
	FNCALL	_application_converge_leds,_switch_read_status
	FNCALL	_switch_read_status,_gpio_pin_read_logic
	FNCALL	_led_set_status,_gpio_pin_set_logic
	FNROOT	_main
	global	_trises
	global	_ports
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

	global	_ret
	global	_leds
	global	_switchs
	global	_status1
	global	_status0
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
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_ret:
       ds      1

_leds:
       ds      16

_switchs:
       ds      4

_status1:
       ds      1

_status0:
       ds      1

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
	movlw low(__pdataBANK0+20)
	movwf btemp-1
	movlw high(__pidataBANK0)
	movwf btemp
	movlw low(__pidataBANK0)
	movwf btemp+1
	movlw low(__pdataBANK0)
	movwf fsr
	fcall init_ram0
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+017h)
	fcall	clear_ram0
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
?_application_flash_leds:	; 1 bytes @ 0x0
?_application_shift_left_leds:	; 1 bytes @ 0x0
?_application_shift_right_leds:	; 1 bytes @ 0x0
?_application_converge_leds:	; 1 bytes @ 0x0
?_led_set_status:	; 1 bytes @ 0x0
?_build_switchs:	; 1 bytes @ 0x0
??_build_switchs:	; 1 bytes @ 0x0
?_build_leds:	; 1 bytes @ 0x0
??_build_leds:	; 1 bytes @ 0x0
?_switch_init:	; 1 bytes @ 0x0
?_led_init:	; 1 bytes @ 0x0
?_gpio_pin_set_direction:	; 1 bytes @ 0x0
??_gpio_pin_set_direction:	; 1 bytes @ 0x0
?_gpio_pin_set_logic:	; 1 bytes @ 0x0
??_gpio_pin_set_logic:	; 1 bytes @ 0x0
?_gpio_pin_read_logic:	; 1 bytes @ 0x0
	global	gpio_pin_read_logic@_gpio_logic
gpio_pin_read_logic@_gpio_logic:	; 1 bytes @ 0x0
	ds	1
??_gpio_pin_read_logic:	; 1 bytes @ 0x1
	global	build_switchs@pin_tmp
build_switchs@pin_tmp:	; 1 bytes @ 0x1
	global	build_leds@pin_tmp
build_leds@pin_tmp:	; 1 bytes @ 0x1
	ds	1
	global	build_switchs@i
build_switchs@i:	; 1 bytes @ 0x2
	global	build_leds@i
build_leds@i:	; 1 bytes @ 0x2
	ds	3
	global	gpio_pin_set_direction@ret
gpio_pin_set_direction@ret:	; 1 bytes @ 0x5
	global	gpio_pin_set_logic@ret
gpio_pin_set_logic@ret:	; 1 bytes @ 0x5
	ds	1
	global	gpio_pin_set_direction@_gpio_pin
gpio_pin_set_direction@_gpio_pin:	; 1 bytes @ 0x6
	global	gpio_pin_set_logic@_gpio_pin
gpio_pin_set_logic@_gpio_pin:	; 1 bytes @ 0x6
	global	gpio_pin_read_logic@ret
gpio_pin_read_logic@ret:	; 1 bytes @ 0x6
	ds	1
??_led_set_status:	; 1 bytes @ 0x7
??_switch_init:	; 1 bytes @ 0x7
	global	gpio_pin_read_logic@_gpio_pin
gpio_pin_read_logic@_gpio_pin:	; 1 bytes @ 0x7
	global	switch_init@ret
switch_init@ret:	; 1 bytes @ 0x7
	ds	1
?_switch_read_status:	; 1 bytes @ 0x8
	global	switch_init@_switch_obj
switch_init@_switch_obj:	; 1 bytes @ 0x8
	global	switch_read_status@_status
switch_read_status@_status:	; 1 bytes @ 0x8
	ds	1
??_switch_read_status:	; 1 bytes @ 0x9
	global	led_set_status@ret
led_set_status@ret:	; 1 bytes @ 0x9
	ds	1
	global	led_set_status@_led
led_set_status@_led:	; 1 bytes @ 0xA
	ds	1
??_led_init:	; 1 bytes @ 0xB
	global	led_init@ret
led_init@ret:	; 1 bytes @ 0xB
	global	switch_read_status@ret
switch_read_status@ret:	; 1 bytes @ 0xB
	ds	1
	global	led_init@_led
led_init@_led:	; 1 bytes @ 0xC
	global	switch_read_status@_switch_obj
switch_read_status@_switch_obj:	; 1 bytes @ 0xC
	ds	1
??_initialization:	; 1 bytes @ 0xD
	global	application_shift_left_leds@i
application_shift_left_leds@i:	; 1 bytes @ 0xD
	global	application_shift_right_leds@i
application_shift_right_leds@i:	; 1 bytes @ 0xD
	ds	1
??_main:	; 1 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_application_flash_leds:	; 1 bytes @ 0x0
??_application_shift_left_leds:	; 1 bytes @ 0x0
??_application_shift_right_leds:	; 1 bytes @ 0x0
??_application_converge_leds:	; 1 bytes @ 0x0
	global	initialization@i
initialization@i:	; 1 bytes @ 0x0
	ds	3
	global	application_flash_leds@i
application_flash_leds@i:	; 1 bytes @ 0x3
	global	application_converge_leds@i
application_converge_leds@i:	; 1 bytes @ 0x3
	ds	1
	global	application_flash_leds@j
application_flash_leds@j:	; 1 bytes @ 0x4
	global	application_converge_leds@j
application_converge_leds@j:	; 1 bytes @ 0x4
	ds	1
?_main:	; 2 bytes @ 0x5
main@argc:	; 2 bytes @ 0x5
	ds	2
main@argv:	; 2 bytes @ 0x7
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        20
;!    BSS         23
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80      9      52
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    gpio_pin_read_logic@_gpio_logic	PTR unsigned char  size(1) Largest target is 1
;!		 -> status0(BANK0[1]), status1(BANK0[1]), 
;!
;!    gpio_pin_read_logic@_gpio_pin	PTR struct . size(1) Largest target is 4
;!		 -> switchs(BANK0[4]), 
;!
;!    gpio_pin_set_direction@_gpio_pin	PTR struct . size(1) Largest target is 16
;!		 -> leds(BANK0[16]), switchs(BANK0[4]), 
;!
;!    gpio_pin_set_logic@_gpio_pin	PTR struct . size(1) Largest target is 16
;!		 -> leds(BANK0[16]), 
;!
;!    led_init@_led	PTR struct . size(1) Largest target is 16
;!		 -> leds(BANK0[16]), 
;!
;!    led_set_status@_led	PTR struct . size(1) Largest target is 16
;!		 -> leds(BANK0[16]), 
;!
;!    ports	PTR volatile unsigned char [5] size(2) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTB(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTE(SFR0[1]), 
;!
;!    switch_init@_switch_obj	PTR struct . size(1) Largest target is 4
;!		 -> switchs(BANK0[4]), 
;!
;!    switch_read_status@_status	PTR unsigned char  size(1) Largest target is 1
;!		 -> status0(BANK0[1]), status1(BANK0[1]), 
;!
;!    switch_read_status@_switch_obj	PTR struct . size(1) Largest target is 4
;!		 -> switchs(BANK0[4]), 
;!
;!    trises	PTR volatile unsigned char [5] size(2) Largest target is 1
;!		 -> TRISA(SFR1[1]), TRISB(SFR1[1]), TRISC(SFR1[1]), TRISD(SFR1[1]), 
;!		 -> TRISE(SFR1[1]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_application_shift_left_leds
;!    _main->_application_shift_right_leds
;!    _main->_initialization
;!    _initialization->_led_init
;!    _switch_init->_gpio_pin_set_direction
;!    _led_init->_led_set_status
;!    _application_shift_right_leds->_switch_read_status
;!    _application_shift_left_leds->_switch_read_status
;!    _application_flash_leds->_switch_read_status
;!    _application_converge_leds->_switch_read_status
;!    _switch_read_status->_gpio_pin_read_logic
;!    _led_set_status->_gpio_pin_set_logic
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_application_converge_leds
;!    _main->_application_flash_leds
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     0      4   14735
;!                                              5 BANK0      4     0      4
;!          _application_converge_leds
;!             _application_flash_leds
;!        _application_shift_left_leds
;!       _application_shift_right_leds
;!                     _initialization
;!                 _switch_read_status
;! ---------------------------------------------------------------------------------
;! (1) _initialization                                       2     2      0    1991
;!                                             13 COMMON     1     1      0
;!                                              0 BANK0      1     1      0
;!                         _build_leds
;!                      _build_switchs
;!                           _led_init
;!                        _switch_init
;! ---------------------------------------------------------------------------------
;! (2) _switch_init                                          2     2      0     370
;!                                              7 COMMON     2     2      0
;!             _gpio_pin_set_direction
;! ---------------------------------------------------------------------------------
;! (2) _led_init                                             2     2      0    1235
;!                                             11 COMMON     2     2      0
;!             _gpio_pin_set_direction
;!                     _led_set_status
;! ---------------------------------------------------------------------------------
;! (3) _gpio_pin_set_direction                               7     7      0     265
;!                                              0 COMMON     7     7      0
;! ---------------------------------------------------------------------------------
;! (2) _build_switchs                                        3     3      0     137
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _build_leds                                           3     3      0     137
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _application_shift_right_leds                         4     4      0    2708
;!                                             13 COMMON     1     1      0
;!                                              0 BANK0      3     3      0
;!                     _led_set_status
;!                 _switch_read_status
;! ---------------------------------------------------------------------------------
;! (1) _application_shift_left_leds                          4     4      0    2708
;!                                             13 COMMON     1     1      0
;!                                              0 BANK0      3     3      0
;!                     _led_set_status
;!                 _switch_read_status
;! ---------------------------------------------------------------------------------
;! (1) _application_flash_leds                               5     5      0    2776
;!                                              0 BANK0      5     5      0
;!                     _led_set_status
;!                 _switch_read_status
;! ---------------------------------------------------------------------------------
;! (1) _application_converge_leds                            5     5      0    2798
;!                                              0 BANK0      5     5      0
;!                     _led_set_status
;!                 _switch_read_status
;! ---------------------------------------------------------------------------------
;! (1) _switch_read_status                                   5     4      1    1754
;!                                              8 COMMON     5     4      1
;!                _gpio_pin_read_logic
;! ---------------------------------------------------------------------------------
;! (2) _gpio_pin_read_logic                                  8     7      1     259
;!                                              0 COMMON     8     7      1
;! ---------------------------------------------------------------------------------
;! (3) _led_set_status                                       4     4      0     820
;!                                              7 COMMON     4     4      0
;!                 _gpio_pin_set_logic
;! ---------------------------------------------------------------------------------
;! (4) _gpio_pin_set_logic                                   7     7      0     265
;!                                              0 COMMON     7     7      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _application_converge_leds
;!     _led_set_status
;!       _gpio_pin_set_logic
;!     _switch_read_status
;!       _gpio_pin_read_logic
;!   _application_flash_leds
;!     _led_set_status
;!     _switch_read_status
;!   _application_shift_left_leds
;!     _led_set_status
;!     _switch_read_status
;!   _application_shift_right_leds
;!     _led_set_status
;!     _switch_read_status
;!   _initialization
;!     _build_leds
;!     _build_switchs
;!     _led_init
;!       _gpio_pin_set_direction
;!       _led_set_status
;!     _switch_init
;!       _gpio_pin_set_direction
;!   _switch_read_status
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
;!BANK0               50      9      34       5       65.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      42      12        0.0%
;!ABS                  0      0      42       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "application.c"
;; Parameters:    Size  Location     Type
;;  argc            2    5[BANK0 ] int 
;;  argv            2    7[BANK0 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_application_converge_leds
;;		_application_flash_leds
;;		_application_shift_left_leds
;;		_application_shift_right_leds
;;		_initialization
;;		_switch_read_status
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"application.c"
	line	14
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"application.c"
	line	14
	
_main:	
;incstack = 0
	callstack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l1604:	
	fcall	_initialization
	line	16
	
l39:	
	line	17
	movlw	(low(_status0|((0x0)<<8)))&0ffh
	movwf	(switch_read_status@_status)
	movlw	(low(_switchs|((0x0)<<8)))&0ffh
	fcall	_switch_read_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	18
	movlw	(low(_status1|((0x0)<<8)))&0ffh
	movwf	(switch_read_status@_status)
	movlw	(low(_switchs|((0x0)<<8)+02h))&0ffh
	fcall	_switch_read_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	19
	
l1606:	
	movf	((_status1)),w
	btfss	status,2
	goto	u921
	goto	u920
u921:
	goto	l1612
u920:
	
l1608:	
	movf	((_status0)),w
	btfss	status,2
	goto	u931
	goto	u930
u931:
	goto	l1612
u930:
	line	20
	
l1610:	
	fcall	_application_flash_leds
	line	21
	goto	l39
	line	22
	
l1612:	
	movf	((_status1)),w
	btfss	status,2
	goto	u941
	goto	u940
u941:
	goto	l1618
u940:
	
l1614:	
	movf	((_status0)),w
	btfsc	status,2
	goto	u951
	goto	u950
u951:
	goto	l1618
u950:
	line	23
	
l1616:	
	fcall	_application_shift_left_leds
	line	24
	goto	l39
	line	25
	
l1618:	
	movf	((_status1)),w
	btfsc	status,2
	goto	u961
	goto	u960
u961:
	goto	l1624
u960:
	
l1620:	
	movf	((_status0)),w
	btfss	status,2
	goto	u971
	goto	u970
u971:
	goto	l1624
u970:
	line	26
	
l1622:	
	fcall	_application_shift_right_leds
	line	27
	goto	l39
	line	29
	
l1624:	
	fcall	_application_converge_leds
	goto	l39
	global	start
	ljmp	start
	callstack 0
	line	33
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_initialization

;; *************** function _initialization *****************
;; Defined at:
;;		line 99 in file "application.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       1       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_build_leds
;;		_build_switchs
;;		_led_init
;;		_switch_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	99
global __ptext1
__ptext1:	;psect for function _initialization
psect	text1
	file	"application.c"
	line	99
	
_initialization:	
;incstack = 0
	callstack 4
; Regs used in _initialization: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	100
	
l1470:	
	fcall	_build_switchs
	line	101
	fcall	_build_leds
	line	102
	
l1472:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(initialization@i)
	line	103
	
l1478:	
	movlw	low(02h)
	subwf	(initialization@i),w
	skipnc
	goto	u761
	goto	u760
u761:
	goto	l90
u760:
	line	104
	
l1480:	
	movf	(initialization@i),w
	movwf	(??_initialization+0)+0
	addwf	(??_initialization+0)+0,w
	addlw	low(_switchs|((0x0)<<8))&0ffh
	fcall	_switch_init
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	
l90:	
	line	105
	movf	(initialization@i),w
	movwf	(??_initialization+0)+0
	addwf	(??_initialization+0)+0,w
	addlw	low(_leds|((0x0)<<8))&0ffh
	fcall	_led_init
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	106
	
l1482:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(initialization@i),f
	
l1484:	
	movlw	low(08h)
	subwf	(initialization@i),w
	skipc
	goto	u771
	goto	u770
u771:
	goto	l1478
u770:
	line	107
	
l91:	
	return
	callstack 0
GLOBAL	__end_of_initialization
	__end_of_initialization:
	signat	_initialization,89
	global	_switch_init

;; *************** function _switch_init *****************
;; Defined at:
;;		line 6 in file "../../ecu_layer/switch_module/switch.c"
;; Parameters:    Size  Location     Type
;;  _switch_obj     1    wreg     PTR struct .
;;		 -> switchs(4), 
;; Auto vars:     Size  Location     Type
;;  _switch_obj     1    8[COMMON] PTR struct .
;;		 -> switchs(4), 
;;  ret             1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_gpio_pin_set_direction
;; This function is called by:
;;		_initialization
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"../../ecu_layer/switch_module/switch.c"
	line	6
global __ptext2
__ptext2:	;psect for function _switch_init
psect	text2
	file	"../../ecu_layer/switch_module/switch.c"
	line	6
	
_switch_init:	
;incstack = 0
	callstack 5
; Regs used in _switch_init: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(switch_init@_switch_obj)
	line	7
	
l1442:	
	line	8
	
l1444:	
	movf	((switch_init@_switch_obj)),w
	btfss	status,2
	goto	u731
	goto	u730
u731:
	goto	l1448
u730:
	line	9
	
l1446:	
	clrf	(switch_init@ret)
	goto	l1450
	line	11
	
l1448:	
	movf	(switch_init@_switch_obj),w
	fcall	_gpio_pin_set_direction
	movwf	(switch_init@ret)
	line	12
	
l1450:	
	movf	(switch_init@ret),w
	line	13
	
l243:	
	return
	callstack 0
GLOBAL	__end_of_switch_init
	__end_of_switch_init:
	signat	_switch_init,4217
	global	_led_init

;; *************** function _led_init *****************
;; Defined at:
;;		line 7 in file "../../ecu_layer/led_module/led.c"
;; Parameters:    Size  Location     Type
;;  _led            1    wreg     PTR struct .
;;		 -> leds(16), 
;; Auto vars:     Size  Location     Type
;;  _led            1   12[COMMON] PTR struct .
;;		 -> leds(16), 
;;  ret             1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_gpio_pin_set_direction
;;		_led_set_status
;; This function is called by:
;;		_initialization
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"../../ecu_layer/led_module/led.c"
	line	7
global __ptext3
__ptext3:	;psect for function _led_init
psect	text3
	file	"../../ecu_layer/led_module/led.c"
	line	7
	
_led_init:	
;incstack = 0
	callstack 4
; Regs used in _led_init: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(led_init@_led)
	line	8
	
l1454:	
	line	9
	
l1456:	
	movf	((led_init@_led)),w
	btfss	status,2
	goto	u741
	goto	u740
u741:
	goto	l1460
u740:
	line	10
	
l1458:	
	clrf	(led_init@ret)
	goto	l1466
	line	12
	
l1460:	
	movf	(led_init@_led),w
	fcall	_gpio_pin_set_direction
	movwf	(led_init@ret)
	line	13
	
l1462:	
	movf	((led_init@ret)),w
	btfsc	status,2
	goto	u751
	goto	u750
u751:
	goto	l1466
u750:
	line	14
	
l1464:	
	movf	(led_init@_led),w
	fcall	_led_set_status
	movwf	(led_init@ret)
	line	16
	
l1466:	
	movf	(led_init@ret),w
	line	17
	
l224:	
	return
	callstack 0
GLOBAL	__end_of_led_init
	__end_of_led_init:
	signat	_led_init,4217
	global	_gpio_pin_set_direction

;; *************** function _gpio_pin_set_direction *****************
;; Defined at:
;;		line 18 in file "../../mcal_layer/gpio_module/gpio.c"
;; Parameters:    Size  Location     Type
;;  _gpio_pin       1    wreg     PTR struct .
;;		 -> leds(16), switchs(4), 
;; Auto vars:     Size  Location     Type
;;  _gpio_pin       1    6[COMMON] PTR struct .
;;		 -> leds(16), switchs(4), 
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
;;		_led_init
;;		_switch_init
;;		_gpio_pin_initialize
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	18
global __ptext4
__ptext4:	;psect for function _gpio_pin_set_direction
psect	text4
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	18
	
_gpio_pin_set_direction:	
;incstack = 0
	callstack 5
; Regs used in _gpio_pin_set_direction: [wreg-fsr0h+status,2+status,0+btemp+1]
	movwf	(gpio_pin_set_direction@_gpio_pin)
	line	19
	
l1340:	
	clrf	(gpio_pin_set_direction@ret)
	incf	(gpio_pin_set_direction@ret),f
	line	20
	
l1342:	
	movf	((gpio_pin_set_direction@_gpio_pin)),w
	btfsc	status,2
	goto	u621
	goto	u620
u621:
	goto	l1350
u620:
	goto	l1352
	line	23
	
l1346:	
	movlw	low(01h)
	movwf	(??_gpio_pin_set_direction+0)+0
	movf	(gpio_pin_set_direction@_gpio_pin),w
	movwf	fsr0
	rrf	indf,w
	movwf	(??_gpio_pin_set_direction+1)+0
	rrf	(??_gpio_pin_set_direction+1)+0,f
	rrf	(??_gpio_pin_set_direction+1)+0,w
	andlw	(1<<3)-1
	addlw	1
	goto	u634
u635:
	clrc
	rlf	(??_gpio_pin_set_direction+0)+0,f
u634:
	addlw	-1
	skipz
	goto	u635
	movf	0+(??_gpio_pin_set_direction+0)+0,w
	movwf	btemp+1
	movf	(gpio_pin_set_direction@_gpio_pin),w
	movwf	fsr0
	movf	indf,w
	andlw	(1<<3)-1
	movwf	(??_gpio_pin_set_direction+2)+0
	addwf	(??_gpio_pin_set_direction+2)+0,w
	addlw	low(_trises|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_gpio_pin_set_direction+3)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_gpio_pin_set_direction+3)+0+1
	movf	0+(??_gpio_pin_set_direction+3)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_gpio_pin_set_direction+3)+0,0
	bcf	status,7
	movf	btemp+1,w
	iorwf	indf,f
	line	24
	goto	l1356
	line	26
	
l1348:	
	movlw	low(01h)
	movwf	(??_gpio_pin_set_direction+0)+0
	movf	(gpio_pin_set_direction@_gpio_pin),w
	movwf	fsr0
	rrf	indf,w
	movwf	(??_gpio_pin_set_direction+1)+0
	rrf	(??_gpio_pin_set_direction+1)+0,f
	rrf	(??_gpio_pin_set_direction+1)+0,w
	andlw	(1<<3)-1
	addlw	1
	goto	u644
u645:
	clrc
	rlf	(??_gpio_pin_set_direction+0)+0,f
u644:
	addlw	-1
	skipz
	goto	u645
	movf	0+(??_gpio_pin_set_direction+0)+0,w
	xorlw	0ffh
	movwf	btemp+1
	movf	(gpio_pin_set_direction@_gpio_pin),w
	movwf	fsr0
	movf	indf,w
	andlw	(1<<3)-1
	movwf	(??_gpio_pin_set_direction+2)+0
	addwf	(??_gpio_pin_set_direction+2)+0,w
	addlw	low(_trises|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_gpio_pin_set_direction+3)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_gpio_pin_set_direction+3)+0+1
	movf	0+(??_gpio_pin_set_direction+3)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_gpio_pin_set_direction+3)+0,0
	bcf	status,7
	movf	btemp+1,w
	andwf	indf,f
	line	27
	goto	l1356
	line	29
	
l1350:	
	clrf	(gpio_pin_set_direction@ret)
	line	30
	goto	l1356
	
l1352:	
	movf	(gpio_pin_set_direction@_gpio_pin),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	swapf	indf,w
	movwf	(??_gpio_pin_set_direction+0)+0
	rrf	(??_gpio_pin_set_direction+0)+0,f
	rrf	(??_gpio_pin_set_direction+0)+0,w
	andlw	(1<<1)-1
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
	goto	l1348
	xorlw	1^0	; case 1
	skipnz
	goto	l1346
	goto	l1350
	asmopt pop

	line	34
	
l1356:	
	movf	(gpio_pin_set_direction@ret),w
	line	35
	
l147:	
	return
	callstack 0
GLOBAL	__end_of_gpio_pin_set_direction
	__end_of_gpio_pin_set_direction:
	signat	_gpio_pin_set_direction,4217
	global	_build_switchs

;; *************** function _build_switchs *****************
;; Defined at:
;;		line 108 in file "application.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    2[COMMON] unsigned char 
;;  pin_tmp         1    1[COMMON] struct .
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initialization
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"application.c"
	line	108
global __ptext5
__ptext5:	;psect for function _build_switchs
psect	text5
	file	"application.c"
	line	108
	
_build_switchs:	
;incstack = 0
	callstack 6
; Regs used in _build_switchs: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	110
	
l1406:	
	clrf	(build_switchs@i)
	line	111
	
l1412:	
	movf	(build_switchs@pin_tmp),w
	andlw	not (((1<<3)-1)<<0)
	iorlw	(02h & ((1<<3)-1))<<0
	movwf	(build_switchs@pin_tmp)
	line	112
	movf	(build_switchs@i),w
	movwf	(??_build_switchs+0)+0
	rlf	(??_build_switchs+0)+0,f
	rlf	(??_build_switchs+0)+0,f
	rlf	(??_build_switchs+0)+0,f
	movf	(build_switchs@pin_tmp),w
	xorwf	(??_build_switchs+0)+0,w
	andlw	not (((1<<3)-1)<<3)
	xorwf	(??_build_switchs+0)+0,w
	movwf	(build_switchs@pin_tmp)
	line	113
	
l1414:	
	bsf	(build_switchs@pin_tmp),6
	line	115
	
l1416:	
	movf	(build_switchs@i),w
	movwf	(??_build_switchs+0)+0
	addwf	(??_build_switchs+0)+0,w
	addlw	low(_switchs|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(build_switchs@pin_tmp),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	116
	
l1418:	
	movf	(build_switchs@i),w
	movwf	(??_build_switchs+0)+0
	addwf	(??_build_switchs+0)+0,w
	addlw	low(_switchs|((0x0)<<8)+01h)&0ffh
	movwf	fsr0
	clrf	indf
	incf	indf,f
	line	117
	
l1420:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(build_switchs@i),f
	
l1422:	
	movlw	low(02h)
	subwf	(build_switchs@i),w
	skipc
	goto	u711
	goto	u710
u711:
	goto	l1412
u710:
	line	118
	
l96:	
	return
	callstack 0
GLOBAL	__end_of_build_switchs
	__end_of_build_switchs:
	signat	_build_switchs,89
	global	_build_leds

;; *************** function _build_leds *****************
;; Defined at:
;;		line 119 in file "application.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    2[COMMON] unsigned char 
;;  pin_tmp         1    1[COMMON] struct .
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initialization
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	119
global __ptext6
__ptext6:	;psect for function _build_leds
psect	text6
	file	"application.c"
	line	119
	
_build_leds:	
;incstack = 0
	callstack 6
; Regs used in _build_leds: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	121
	
l1424:	
	clrf	(build_leds@i)
	line	122
	
l1430:	
	movf	(build_leds@pin_tmp),w
	andlw	not (((1<<3)-1)<<0)
	iorlw	(01h & ((1<<3)-1))<<0
	movwf	(build_leds@pin_tmp)
	line	123
	movf	(build_leds@i),w
	movwf	(??_build_leds+0)+0
	rlf	(??_build_leds+0)+0,f
	rlf	(??_build_leds+0)+0,f
	rlf	(??_build_leds+0)+0,f
	movf	(build_leds@pin_tmp),w
	xorwf	(??_build_leds+0)+0,w
	andlw	not (((1<<3)-1)<<3)
	xorwf	(??_build_leds+0)+0,w
	movwf	(build_leds@pin_tmp)
	line	124
	
l1432:	
	bcf	(build_leds@pin_tmp),6
	line	126
	
l1434:	
	movf	(build_leds@i),w
	movwf	(??_build_leds+0)+0
	addwf	(??_build_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(build_leds@pin_tmp),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	127
	
l1436:	
	movf	(build_leds@i),w
	movwf	(??_build_leds+0)+0
	addwf	(??_build_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8)+01h)&0ffh
	movwf	fsr0
	clrf	indf
	line	128
	
l1438:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(build_leds@i),f
	
l1440:	
	movlw	low(08h)
	subwf	(build_leds@i),w
	skipc
	goto	u721
	goto	u720
u721:
	goto	l1430
u720:
	line	129
	
l101:	
	return
	callstack 0
GLOBAL	__end_of_build_leds
	__end_of_build_leds:
	signat	_build_leds,89
	global	_application_shift_right_leds

;; *************** function _application_shift_right_leds *****************
;; Defined at:
;;		line 67 in file "application.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_led_set_status
;;		_switch_read_status
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	67
global __ptext7
__ptext7:	;psect for function _application_shift_right_leds
psect	text7
	file	"application.c"
	line	67
	
_application_shift_right_leds:	
;incstack = 0
	callstack 5
; Regs used in _application_shift_right_leds: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	68
	
l1550:	
	clrf	(application_shift_right_leds@i)
	line	69
	
l1556:	
	movlw	(low(_status0|((0x0)<<8)))&0ffh
	movwf	(switch_read_status@_status)
	movlw	(low(_switchs|((0x0)<<8)))&0ffh
	fcall	_switch_read_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	70
	movlw	(low(_status1|((0x0)<<8)))&0ffh
	movwf	(switch_read_status@_status)
	movlw	(low(_switchs|((0x0)<<8)+02h))&0ffh
	fcall	_switch_read_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	71
	
l1558:	
	movf	((_status1)),w
	btfsc	status,2
	goto	u861
	goto	u860
u861:
	goto	l76
u860:
	
l1560:	
	movf	((_status0)),w
	btfsc	status,2
	goto	u871
	goto	u870
u871:
	goto	l1562
u870:
	goto	l76
	line	73
	
l1562:	
	movf	(application_shift_right_leds@i),w
	movwf	(??_application_shift_right_leds+0)+0
	addwf	(??_application_shift_right_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8)+01h)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	indf,f
	line	74
	
l1564:	
	movf	(application_shift_right_leds@i),w
	movwf	(??_application_shift_right_leds+0)+0
	addwf	(??_application_shift_right_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8))&0ffh
	fcall	_led_set_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	75
	
l1566:	
	movf	(application_shift_right_leds@i),w
	movwf	(??_application_shift_right_leds+0)+0
	addwf	(??_application_shift_right_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8)+01h)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	76
	
l1568:	
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_application_shift_right_leds+0)+0+2)
movlw	138
movwf	((??_application_shift_right_leds+0)+0+1)
	movlw	85
movwf	((??_application_shift_right_leds+0)+0)
	u1157:
decfsz	((??_application_shift_right_leds+0)+0),f
	goto	u1157
	decfsz	((??_application_shift_right_leds+0)+0+1),f
	goto	u1157
	decfsz	((??_application_shift_right_leds+0)+0+2),f
	goto	u1157
asmopt pop

	line	77
	
l1570:	
	movf	(application_shift_right_leds@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_application_shift_right_leds+0)+0
	addwf	(??_application_shift_right_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8))&0ffh
	fcall	_led_set_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	78
	
l1572:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(application_shift_right_leds@i),f
	
l1574:	
	movlw	low(08h)
	subwf	(application_shift_right_leds@i),w
	skipc
	goto	u881
	goto	u880
u881:
	goto	l1556
u880:
	line	79
	
l76:	
	return
	callstack 0
GLOBAL	__end_of_application_shift_right_leds
	__end_of_application_shift_right_leds:
	signat	_application_shift_right_leds,89
	global	_application_shift_left_leds

;; *************** function _application_shift_left_leds *****************
;; Defined at:
;;		line 54 in file "application.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   13[COMMON] char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_led_set_status
;;		_switch_read_status
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	54
global __ptext8
__ptext8:	;psect for function _application_shift_left_leds
psect	text8
	file	"application.c"
	line	54
	
_application_shift_left_leds:	
;incstack = 0
	callstack 5
; Regs used in _application_shift_left_leds: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	55
	
l1524:	
	movlw	low(07h)
	movwf	(application_shift_left_leds@i)
	line	56
	
l1530:	
	movlw	(low(_status0|((0x0)<<8)))&0ffh
	movwf	(switch_read_status@_status)
	movlw	(low(_switchs|((0x0)<<8)))&0ffh
	fcall	_switch_read_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	57
	movlw	(low(_status1|((0x0)<<8)))&0ffh
	movwf	(switch_read_status@_status)
	movlw	(low(_switchs|((0x0)<<8)+02h))&0ffh
	fcall	_switch_read_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	58
	
l1532:	
	movf	((_status1)),w
	btfss	status,2
	goto	u831
	goto	u830
u831:
	goto	l68
u830:
	
l1534:	
	movf	((_status0)),w
	btfss	status,2
	goto	u841
	goto	u840
u841:
	goto	l1536
u840:
	goto	l68
	line	60
	
l1536:	
	movf	(application_shift_left_leds@i),w
	movwf	(??_application_shift_left_leds+0)+0
	addwf	(??_application_shift_left_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8)+01h)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	indf,f
	line	61
	
l1538:	
	movf	(application_shift_left_leds@i),w
	movwf	(??_application_shift_left_leds+0)+0
	addwf	(??_application_shift_left_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8))&0ffh
	fcall	_led_set_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	62
	
l1540:	
	movf	(application_shift_left_leds@i),w
	movwf	(??_application_shift_left_leds+0)+0
	addwf	(??_application_shift_left_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8)+01h)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	63
	
l1542:	
	asmopt push
asmopt off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_application_shift_left_leds+0)+0+2)
movlw	138
movwf	((??_application_shift_left_leds+0)+0+1)
	movlw	85
movwf	((??_application_shift_left_leds+0)+0)
	u1167:
decfsz	((??_application_shift_left_leds+0)+0),f
	goto	u1167
	decfsz	((??_application_shift_left_leds+0)+0+1),f
	goto	u1167
	decfsz	((??_application_shift_left_leds+0)+0+2),f
	goto	u1167
asmopt pop

	line	64
	
l1544:	
	movf	(application_shift_left_leds@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_application_shift_left_leds+0)+0
	addwf	(??_application_shift_left_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8))&0ffh
	fcall	_led_set_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	65
	
l1546:	
	movlw	low(-1)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(application_shift_left_leds@i),f
	
l1548:	
	btfss	(application_shift_left_leds@i),7
	goto	u851
	goto	u850
u851:
	goto	l1530
u850:
	line	66
	
l68:	
	return
	callstack 0
GLOBAL	__end_of_application_shift_left_leds
	__end_of_application_shift_left_leds:
	signat	_application_shift_left_leds,89
	global	_application_flash_leds

;; *************** function _application_flash_leds *****************
;; Defined at:
;;		line 35 in file "application.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               1    4[BANK0 ] unsigned char 
;;  i               1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_led_set_status
;;		_switch_read_status
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	35
global __ptext9
__ptext9:	;psect for function _application_flash_leds
psect	text9
	file	"application.c"
	line	35
	
_application_flash_leds:	
;incstack = 0
	callstack 5
; Regs used in _application_flash_leds: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	36
	
l1486:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(application_flash_leds@i)
	line	37
	
l1492:	
	clrf	(application_flash_leds@j)
	line	38
	
l1498:	
	movlw	(low(_status0|((0x0)<<8)))&0ffh
	movwf	(switch_read_status@_status)
	movlw	(low(_switchs|((0x0)<<8)))&0ffh
	fcall	_switch_read_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	39
	movlw	(low(_status1|((0x0)<<8)))&0ffh
	movwf	(switch_read_status@_status)
	movlw	(low(_switchs|((0x0)<<8)+02h))&0ffh
	fcall	_switch_read_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	40
	
l1500:	
	movf	((_status0)),w
	btfss	status,2
	goto	u781
	goto	u780
u781:
	goto	l1518
u780:
	
l1502:	
	movf	((_status1)),w
	btfsc	status,2
	goto	u791
	goto	u790
u791:
	goto	l1504
u790:
	goto	l1518
	line	42
	
l1504:	
	movf	((application_flash_leds@i)),w
	btfss	status,2
	goto	u801
	goto	u800
u801:
	goto	l1510
u800:
	line	43
	
l1506:	
	movf	(application_flash_leds@j),w
	movwf	(??_application_flash_leds+0)+0
	addwf	(??_application_flash_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8)+01h)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	indf,f
	line	44
	
l1508:	
	movf	(application_flash_leds@j),w
	movwf	(??_application_flash_leds+0)+0
	addwf	(??_application_flash_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8))&0ffh
	fcall	_led_set_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	45
	goto	l1514
	line	47
	
l1510:	
	movf	(application_flash_leds@j),w
	movwf	(??_application_flash_leds+0)+0
	addwf	(??_application_flash_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8)+01h)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	48
	
l1512:	
	movf	(application_flash_leds@j),w
	movwf	(??_application_flash_leds+0)+0
	addwf	(??_application_flash_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8))&0ffh
	fcall	_led_set_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	50
	
l1514:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(application_flash_leds@j),f
	
l1516:	
	movlw	low(08h)
	subwf	(application_flash_leds@j),w
	skipc
	goto	u811
	goto	u810
u811:
	goto	l1498
u810:
	line	51
	
l1518:	
	asmopt push
asmopt off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_application_flash_leds+0)+0+2)
movlw	19
movwf	((??_application_flash_leds+0)+0+1)
	movlw	173
movwf	((??_application_flash_leds+0)+0)
	u1177:
decfsz	((??_application_flash_leds+0)+0),f
	goto	u1177
	decfsz	((??_application_flash_leds+0)+0+1),f
	goto	u1177
	decfsz	((??_application_flash_leds+0)+0+2),f
	goto	u1177
asmopt pop

	line	52
	
l1520:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(application_flash_leds@i),f
	
l1522:	
	movlw	low(02h)
	subwf	(application_flash_leds@i),w
	skipc
	goto	u821
	goto	u820
u821:
	goto	l1492
u820:
	line	53
	
l60:	
	return
	callstack 0
GLOBAL	__end_of_application_flash_leds
	__end_of_application_flash_leds:
	signat	_application_flash_leds,89
	global	_application_converge_leds

;; *************** function _application_converge_leds *****************
;; Defined at:
;;		line 80 in file "application.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               1    4[BANK0 ] unsigned char 
;;  i               1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_led_set_status
;;		_switch_read_status
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	80
global __ptext10
__ptext10:	;psect for function _application_converge_leds
psect	text10
	file	"application.c"
	line	80
	
_application_converge_leds:	
;incstack = 0
	callstack 5
; Regs used in _application_converge_leds: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	81
	
l1576:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(application_converge_leds@i)
	
l1578:	
	movlw	low(07h)
	movwf	(application_converge_leds@j)
	goto	l1602
	line	82
	
l1580:	
	movlw	(low(_status0|((0x0)<<8)))&0ffh
	movwf	(switch_read_status@_status)
	movlw	(low(_switchs|((0x0)<<8)))&0ffh
	fcall	_switch_read_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	83
	movlw	(low(_status1|((0x0)<<8)))&0ffh
	movwf	(switch_read_status@_status)
	movlw	(low(_switchs|((0x0)<<8)+02h))&0ffh
	fcall	_switch_read_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	84
	
l1582:	
	movf	((_status1)),w
	btfsc	status,2
	goto	u891
	goto	u890
u891:
	goto	l85
u890:
	
l1584:	
	movf	((_status0)),w
	btfss	status,2
	goto	u901
	goto	u900
u901:
	goto	l1586
u900:
	goto	l85
	line	86
	
l1586:	
	movf	(application_converge_leds@i),w
	movwf	(??_application_converge_leds+0)+0
	addwf	(??_application_converge_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8)+01h)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	indf,f
	line	87
	movf	(application_converge_leds@j),w
	movwf	(??_application_converge_leds+0)+0
	addwf	(??_application_converge_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8)+01h)&0ffh
	movwf	fsr0
	clrf	indf
	incf	indf,f
	line	88
	
l1588:	
	movf	(application_converge_leds@i),w
	movwf	(??_application_converge_leds+0)+0
	addwf	(??_application_converge_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8))&0ffh
	fcall	_led_set_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	89
	
l1590:	
	movf	(application_converge_leds@j),w
	movwf	(??_application_converge_leds+0)+0
	addwf	(??_application_converge_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8))&0ffh
	fcall	_led_set_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	90
	movf	(application_converge_leds@i),w
	movwf	(??_application_converge_leds+0)+0
	addwf	(??_application_converge_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8)+01h)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	91
	movf	(application_converge_leds@j),w
	movwf	(??_application_converge_leds+0)+0
	addwf	(??_application_converge_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8)+01h)&0ffh
	movwf	fsr0
	clrf	indf
	line	92
	
l1592:	
	asmopt push
asmopt off
movlw  4
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_application_converge_leds+0)+0+2)
movlw	12
movwf	((??_application_converge_leds+0)+0+1)
	movlw	51
movwf	((??_application_converge_leds+0)+0)
	u1187:
decfsz	((??_application_converge_leds+0)+0),f
	goto	u1187
	decfsz	((??_application_converge_leds+0)+0+1),f
	goto	u1187
	decfsz	((??_application_converge_leds+0)+0+2),f
	goto	u1187
asmopt pop

	line	93
	
l1594:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(application_converge_leds@i),w
	movwf	(??_application_converge_leds+0)+0
	addwf	(??_application_converge_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8))&0ffh
	fcall	_led_set_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	94
	
l1596:	
	movf	(application_converge_leds@j),w
	movwf	(??_application_converge_leds+0)+0
	addwf	(??_application_converge_leds+0)+0,w
	addlw	low(_leds|((0x0)<<8))&0ffh
	fcall	_led_set_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	95
	
l1598:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(application_converge_leds@i),f
	
l1600:	
	movlw	01h
	subwf	(application_converge_leds@j),f
	
l1602:	
	movf	(application_converge_leds@j),w
	subwf	(application_converge_leds@i),w
	skipc
	goto	u911
	goto	u910
u911:
	goto	l1580
u910:
	line	96
	
l85:	
	return
	callstack 0
GLOBAL	__end_of_application_converge_leds
	__end_of_application_converge_leds:
	signat	_application_converge_leds,89
	global	_switch_read_status

;; *************** function _switch_read_status *****************
;; Defined at:
;;		line 15 in file "../../ecu_layer/switch_module/switch.c"
;; Parameters:    Size  Location     Type
;;  _switch_obj     1    wreg     PTR struct .
;;		 -> switchs(4), 
;;  _status         1    8[COMMON] PTR unsigned char 
;;		 -> status1(1), status0(1), 
;; Auto vars:     Size  Location     Type
;;  _switch_obj     1   12[COMMON] PTR struct .
;;		 -> switchs(4), 
;;  ret             1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_gpio_pin_read_logic
;; This function is called by:
;;		_main
;;		_application_flash_leds
;;		_application_shift_left_leds
;;		_application_shift_right_leds
;;		_application_converge_leds
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"../../ecu_layer/switch_module/switch.c"
	line	15
global __ptext11
__ptext11:	;psect for function _switch_read_status
psect	text11
	file	"../../ecu_layer/switch_module/switch.c"
	line	15
	
_switch_read_status:	
;incstack = 0
	callstack 6
; Regs used in _switch_read_status: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(switch_read_status@_switch_obj)
	line	16
	
l1374:	
	line	17
	
l1376:	
	movf	((switch_read_status@_switch_obj)),w
	btfss	status,2
	goto	u681
	goto	u680
u681:
	goto	l1380
u680:
	line	18
	
l1378:	
	clrf	(switch_read_status@ret)
	goto	l1398
	line	20
	
l1380:	
	movf	(switch_read_status@_status),w
	movwf	(gpio_pin_read_logic@_gpio_logic)
	movf	(switch_read_status@_switch_obj),w
	fcall	_gpio_pin_read_logic
	movwf	(switch_read_status@ret)
	line	21
	goto	l1396
	line	23
	
l1382:	
	movf	(switch_read_status@_status),w
	movwf	fsr0
		decf	(indf),w
	btfss	status,2
	goto	u691
	goto	u690
u691:
	goto	l1386
u690:
	line	24
	
l1384:	
	movf	(switch_read_status@_status),w
	movwf	fsr0
	clrf	indf
	goto	l1398
	line	26
	
l1386:	
	movf	(switch_read_status@_status),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	goto	l1398
	line	29
	
l1388:	
	movf	(switch_read_status@_status),w
	movwf	fsr0
	movf	(indf),w
	btfss	status,2
	goto	u701
	goto	u700
u701:
	goto	l1386
u700:
	goto	l1384
	line	34
	
l1396:	
	incf	(switch_read_status@_switch_obj),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_switch_read_status+0)+0
	clrf	(??_switch_read_status+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_switch_read_status+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l1788
	goto	l1398
	asmopt pop
	
l1788:	
; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_switch_read_status+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l1382
	xorlw	1^0	; case 1
	skipnz
	goto	l1388
	goto	l1398
	asmopt pop

	line	36
	
l1398:	
	movf	(switch_read_status@ret),w
	line	37
	
l256:	
	return
	callstack 0
GLOBAL	__end_of_switch_read_status
	__end_of_switch_read_status:
	signat	_switch_read_status,8313
	global	_gpio_pin_read_logic

;; *************** function _gpio_pin_read_logic *****************
;; Defined at:
;;		line 96 in file "../../mcal_layer/gpio_module/gpio.c"
;; Parameters:    Size  Location     Type
;;  _gpio_pin       1    wreg     PTR struct .
;;		 -> switchs(4), 
;;  _gpio_logic     1    0[COMMON] PTR unsigned char 
;;		 -> status1(1), status0(1), 
;; Auto vars:     Size  Location     Type
;;  _gpio_pin       1    7[COMMON] PTR struct .
;;		 -> switchs(4), 
;;  ret             1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_switch_read_status
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	96
global __ptext12
__ptext12:	;psect for function _gpio_pin_read_logic
psect	text12
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	96
	
_gpio_pin_read_logic:	
;incstack = 0
	callstack 6
; Regs used in _gpio_pin_read_logic: [wreg-fsr0h+status,2+status,0+btemp+1]
	movwf	(gpio_pin_read_logic@_gpio_pin)
	line	97
	
l1360:	
	clrf	(gpio_pin_read_logic@ret)
	incf	(gpio_pin_read_logic@ret),f
	line	98
	
l1362:	
	movf	((gpio_pin_read_logic@_gpio_pin)),w
	btfsc	status,2
	goto	u651
	goto	u650
u651:
	goto	l1368
u650:
	
l1364:	
	movf	((gpio_pin_read_logic@_gpio_logic)),w
	btfsc	status,2
	goto	u661
	goto	u660
u661:
	goto	l1368
u660:
	line	99
	
l1366:	
	movf	(gpio_pin_read_logic@_gpio_pin),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	(1<<3)-1
	movwf	(??_gpio_pin_read_logic+0)+0
	addwf	(??_gpio_pin_read_logic+0)+0,w
	addlw	low(_ports|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_gpio_pin_read_logic+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_gpio_pin_read_logic+1)+0+1
	movf	0+(??_gpio_pin_read_logic+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_gpio_pin_read_logic+1)+0,0
	bcf	status,7
	movf	indf,w
	movwf	(??_gpio_pin_read_logic+3)+0
	movf	(gpio_pin_read_logic@_gpio_pin),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	rrf	indf,w
	movwf	(??_gpio_pin_read_logic+4)+0
	rrf	(??_gpio_pin_read_logic+4)+0,f
	rrf	(??_gpio_pin_read_logic+4)+0,w
	andlw	(1<<3)-1
	addlw	1
	goto	u674
u675:
	clrc
	rrf	(??_gpio_pin_read_logic+3)+0,f
u674:
	addlw	-1
	skipz
	goto	u675
	movf	0+(??_gpio_pin_read_logic+3)+0,w
	andlw	01h
	movwf	btemp+1
	movf	(gpio_pin_read_logic@_gpio_logic),w
	movwf	fsr0
	movf	btemp+1,w
	movwf	indf
	line	100
	goto	l1370
	line	102
	
l1368:	
	clrf	(gpio_pin_read_logic@ret)
	line	103
	
l1370:	
	movf	(gpio_pin_read_logic@ret),w
	line	104
	
l177:	
	return
	callstack 0
GLOBAL	__end_of_gpio_pin_read_logic
	__end_of_gpio_pin_read_logic:
	signat	_gpio_pin_read_logic,8313
	global	_led_set_status

;; *************** function _led_set_status *****************
;; Defined at:
;;		line 18 in file "../../ecu_layer/led_module/led.c"
;; Parameters:    Size  Location     Type
;;  _led            1    wreg     PTR struct .
;;		 -> leds(16), 
;; Auto vars:     Size  Location     Type
;;  _led            1   10[COMMON] PTR struct .
;;		 -> leds(16), 
;;  ret             1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_gpio_pin_set_logic
;; This function is called by:
;;		_application_flash_leds
;;		_application_shift_left_leds
;;		_application_shift_right_leds
;;		_application_converge_leds
;;		_led_init
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"../../ecu_layer/led_module/led.c"
	line	18
global __ptext13
__ptext13:	;psect for function _led_set_status
psect	text13
	file	"../../ecu_layer/led_module/led.c"
	line	18
	
_led_set_status:	
;incstack = 0
	callstack 4
; Regs used in _led_set_status: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(led_set_status@_led)
	line	19
	
l1314:	
	line	20
	
l1316:	
	movf	((led_set_status@_led)),w
	btfss	status,2
	goto	u611
	goto	u610
u611:
	goto	l1330
u610:
	line	21
	
l1318:	
	clrf	(led_set_status@ret)
	goto	l1332
	line	25
	
l1320:	
	movf	(led_set_status@_led),w
	movwf	fsr0
	bcf	indf,7
	line	26
	
l1322:	
	movf	(led_set_status@_led),w
	fcall	_gpio_pin_set_logic
	movwf	(led_set_status@ret)
	line	27
	goto	l1332
	line	29
	
l1324:	
	movf	(led_set_status@_led),w
	movwf	fsr0
	bsf	indf,7
	line	30
	
l1326:	
	movf	(led_set_status@_led),w
	fcall	_gpio_pin_set_logic
	movwf	(led_set_status@ret)
	line	31
	goto	l1332
	line	34
	
l1330:	
	incf	(led_set_status@_led),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_led_set_status+0)+0
	clrf	(??_led_set_status+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_led_set_status+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l1790
	goto	l1318
	asmopt pop
	
l1790:	
; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_led_set_status+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l1320
	xorlw	1^0	; case 1
	skipnz
	goto	l1324
	goto	l1318
	asmopt pop

	line	36
	
l1332:	
	movf	(led_set_status@ret),w
	line	37
	
l234:	
	return
	callstack 0
GLOBAL	__end_of_led_set_status
	__end_of_led_set_status:
	signat	_led_set_status,4217
	global	_gpio_pin_set_logic

;; *************** function _gpio_pin_set_logic *****************
;; Defined at:
;;		line 51 in file "../../mcal_layer/gpio_module/gpio.c"
;; Parameters:    Size  Location     Type
;;  _gpio_pin       1    wreg     PTR struct .
;;		 -> leds(16), 
;; Auto vars:     Size  Location     Type
;;  _gpio_pin       1    6[COMMON] PTR struct .
;;		 -> leds(16), 
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
;;		_led_set_status
;;		_gpio_pin_initialize
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	51
global __ptext14
__ptext14:	;psect for function _gpio_pin_set_logic
psect	text14
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	51
	
_gpio_pin_set_logic:	
;incstack = 0
	callstack 4
; Regs used in _gpio_pin_set_logic: [wreg-fsr0h+status,2+status,0+btemp+1]
	movwf	(gpio_pin_set_logic@_gpio_pin)
	line	52
	
l1294:	
	clrf	(gpio_pin_set_logic@ret)
	incf	(gpio_pin_set_logic@ret),f
	line	53
	
l1296:	
	movf	((gpio_pin_set_logic@_gpio_pin)),w
	btfsc	status,2
	goto	u581
	goto	u580
u581:
	goto	l1304
u580:
	goto	l1306
	line	56
	
l1300:	
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
	goto	u594
u595:
	clrc
	rlf	(??_gpio_pin_set_logic+0)+0,f
u594:
	addlw	-1
	skipz
	goto	u595
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
	goto	l1310
	line	59
	
l1302:	
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
	goto	u604
u605:
	clrc
	rlf	(??_gpio_pin_set_logic+0)+0,f
u604:
	addlw	-1
	skipz
	goto	u605
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
	goto	l1310
	line	62
	
l1304:	
	clrf	(gpio_pin_set_logic@ret)
	line	63
	goto	l1310
	
l1306:	
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
	goto	l1300
	xorlw	1^0	; case 1
	skipnz
	goto	l1302
	goto	l1304
	asmopt pop

	line	67
	
l1310:	
	movf	(gpio_pin_set_logic@ret),w
	line	68
	
l162:	
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
