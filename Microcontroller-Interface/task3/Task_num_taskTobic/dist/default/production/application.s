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
	FNCALL	_main,_application_close_door
	FNCALL	_main,_application_open_door
	FNCALL	_main,_application_stop_door
	FNCALL	_main,_initialization
	FNCALL	_main,_switch_read_status
	FNCALL	_switch_read_status,_gpio_pin_read_logic
	FNCALL	_initialization,_dc_motor_init
	FNCALL	_initialization,_switch_init
	FNCALL	_switch_init,_gpio_pin_set_direction
	FNCALL	_dc_motor_init,_gpio_pin_set_direction
	FNCALL	_application_stop_door,_dc_motor_stop
	FNCALL	_dc_motor_stop,_gpio_pin_clear_logic
	FNCALL	_application_open_door,_dc_motor_turn_ccw
	FNCALL	_dc_motor_turn_ccw,_gpio_pin_clear_logic
	FNCALL	_dc_motor_turn_ccw,_gpio_pin_set_logic
	FNCALL	_application_close_door,_dc_motor_turn_cw
	FNCALL	_dc_motor_turn_cw,_gpio_pin_clear_logic
	FNCALL	_dc_motor_turn_cw,_gpio_pin_set_logic
	FNROOT	_main
	global	_trises
	global	_ports
	global	_dc_motor_pin1
	global	_dc_motor_pin0
	global	_limit_switch_pin
	global	_push_button_pin
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
	line	22

;initializer for _dc_motor_pin1
	retlw	03Ah
	line	17

;initializer for _dc_motor_pin0
	retlw	032h
	line	12

;initializer for _limit_switch_pin
	retlw	04Ah
	line	7

;initializer for _push_button_pin
	retlw	042h
	global	_dc_motor
	global	_limit_switch
	global	_push_button
	global	_limit_switch_status
	global	_push_button_status
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
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_dc_motor:
       ds      2

_limit_switch:
       ds      2

_push_button:
       ds      2

_limit_switch_status:
       ds      1

_push_button_status:
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

psect	dataBANK0
	file	"application.c"
	line	22
_dc_motor_pin1:
       ds      1

psect	dataBANK0
	file	"application.c"
	line	17
_dc_motor_pin0:
       ds      1

psect	dataBANK0
	file	"application.c"
	line	12
_limit_switch_pin:
       ds      1

psect	dataBANK0
	file	"application.c"
	line	7
_push_button_pin:
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
	movlw low(__pdataBANK0+24)
	movwf btemp-1
	movlw high(__pidataBANK0)
	movwf btemp
	movlw low(__pidataBANK0)
	movwf btemp+1
	movlw low(__pdataBANK0)
	movwf fsr
	fcall init_ram0
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
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
?_application_open_door:	; 1 bytes @ 0x0
?_application_close_door:	; 1 bytes @ 0x0
?_application_stop_door:	; 1 bytes @ 0x0
?_switch_init:	; 1 bytes @ 0x0
?_dc_motor_init:	; 1 bytes @ 0x0
?_dc_motor_stop:	; 1 bytes @ 0x0
?_dc_motor_turn_ccw:	; 1 bytes @ 0x0
?_dc_motor_turn_cw:	; 1 bytes @ 0x0
?_gpio_pin_set_direction:	; 1 bytes @ 0x0
??_gpio_pin_set_direction:	; 1 bytes @ 0x0
?_gpio_pin_set_logic:	; 1 bytes @ 0x0
??_gpio_pin_set_logic:	; 1 bytes @ 0x0
?_gpio_pin_clear_logic:	; 1 bytes @ 0x0
??_gpio_pin_clear_logic:	; 1 bytes @ 0x0
?_gpio_pin_read_logic:	; 1 bytes @ 0x0
	global	gpio_pin_read_logic@_gpio_logic
gpio_pin_read_logic@_gpio_logic:	; 1 bytes @ 0x0
	ds	1
??_gpio_pin_read_logic:	; 1 bytes @ 0x1
	ds	4
	global	gpio_pin_set_direction@ret
gpio_pin_set_direction@ret:	; 1 bytes @ 0x5
	global	gpio_pin_set_logic@ret
gpio_pin_set_logic@ret:	; 1 bytes @ 0x5
	global	gpio_pin_clear_logic@ret
gpio_pin_clear_logic@ret:	; 1 bytes @ 0x5
	ds	1
	global	gpio_pin_set_direction@_gpio_pin
gpio_pin_set_direction@_gpio_pin:	; 1 bytes @ 0x6
	global	gpio_pin_set_logic@_gpio_pin
gpio_pin_set_logic@_gpio_pin:	; 1 bytes @ 0x6
	global	gpio_pin_clear_logic@_gpio_pin
gpio_pin_clear_logic@_gpio_pin:	; 1 bytes @ 0x6
	global	gpio_pin_read_logic@ret
gpio_pin_read_logic@ret:	; 1 bytes @ 0x6
	ds	1
??_switch_init:	; 1 bytes @ 0x7
??_dc_motor_init:	; 1 bytes @ 0x7
??_dc_motor_stop:	; 1 bytes @ 0x7
??_dc_motor_turn_ccw:	; 1 bytes @ 0x7
??_dc_motor_turn_cw:	; 1 bytes @ 0x7
	global	gpio_pin_read_logic@_gpio_pin
gpio_pin_read_logic@_gpio_pin:	; 1 bytes @ 0x7
	global	switch_init@ret
switch_init@ret:	; 1 bytes @ 0x7
	global	dc_motor_init@ret
dc_motor_init@ret:	; 1 bytes @ 0x7
	global	dc_motor_turn_cw@_dc_motor
dc_motor_turn_cw@_dc_motor:	; 1 bytes @ 0x7
	global	dc_motor_turn_ccw@_dc_motor
dc_motor_turn_ccw@_dc_motor:	; 1 bytes @ 0x7
	global	dc_motor_stop@_dc_motor
dc_motor_stop@_dc_motor:	; 1 bytes @ 0x7
	ds	1
?_switch_read_status:	; 1 bytes @ 0x8
??_application_open_door:	; 1 bytes @ 0x8
??_application_close_door:	; 1 bytes @ 0x8
??_application_stop_door:	; 1 bytes @ 0x8
	global	application_stop_door@ret
application_stop_door@ret:	; 1 bytes @ 0x8
	global	application_open_door@ret
application_open_door@ret:	; 1 bytes @ 0x8
	global	application_close_door@ret
application_close_door@ret:	; 1 bytes @ 0x8
	global	switch_init@_switch_obj
switch_init@_switch_obj:	; 1 bytes @ 0x8
	global	switch_read_status@_status
switch_read_status@_status:	; 1 bytes @ 0x8
	global	dc_motor_init@_dc_motor
dc_motor_init@_dc_motor:	; 1 bytes @ 0x8
	ds	1
??_initialization:	; 1 bytes @ 0x9
??_switch_read_status:	; 1 bytes @ 0x9
	global	application_stop_door@_motor
application_stop_door@_motor:	; 1 bytes @ 0x9
	global	application_open_door@_motor
application_open_door@_motor:	; 1 bytes @ 0x9
	global	application_close_door@_motor
application_close_door@_motor:	; 1 bytes @ 0x9
	ds	2
	global	switch_read_status@ret
switch_read_status@ret:	; 1 bytes @ 0xB
	ds	1
	global	switch_read_status@_switch_obj
switch_read_status@_switch_obj:	; 1 bytes @ 0xC
	ds	1
??_main:	; 1 bytes @ 0xD
	global	main@tmp
main@tmp:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_main:	; 2 bytes @ 0x0
main@argc:	; 2 bytes @ 0x0
	ds	2
main@argv:	; 2 bytes @ 0x2
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        24
;!    BSS         8
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80      4      37
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    application_close_door@_motor	PTR struct . size(1) Largest target is 2
;!		 -> dc_motor(BANK0[2]), 
;!
;!    application_open_door@_motor	PTR struct . size(1) Largest target is 2
;!		 -> dc_motor(BANK0[2]), 
;!
;!    application_stop_door@_motor	PTR struct . size(1) Largest target is 2
;!		 -> dc_motor(BANK0[2]), 
;!
;!    dc_motor_init@_dc_motor	PTR struct . size(1) Largest target is 2
;!		 -> dc_motor(BANK0[2]), 
;!
;!    dc_motor_stop@_dc_motor	PTR struct . size(1) Largest target is 2
;!		 -> dc_motor(BANK0[2]), 
;!
;!    dc_motor_turn_ccw@_dc_motor	PTR struct . size(1) Largest target is 2
;!		 -> dc_motor(BANK0[2]), 
;!
;!    dc_motor_turn_cw@_dc_motor	PTR struct . size(1) Largest target is 2
;!		 -> dc_motor(BANK0[2]), 
;!
;!    gpio_pin_clear_logic@_gpio_pin	PTR struct . size(1) Largest target is 2
;!		 -> dc_motor(BANK0[2]), 
;!
;!    gpio_pin_read_logic@_gpio_logic	PTR unsigned char  size(1) Largest target is 1
;!		 -> limit_switch_status(BANK0[1]), push_button_status(BANK0[1]), 
;!
;!    gpio_pin_read_logic@_gpio_pin	PTR struct . size(1) Largest target is 2
;!		 -> limit_switch(BANK0[2]), push_button(BANK0[2]), 
;!
;!    gpio_pin_set_direction@_gpio_pin	PTR struct . size(1) Largest target is 2
;!		 -> dc_motor(BANK0[2]), limit_switch(BANK0[2]), push_button(BANK0[2]), 
;!
;!    gpio_pin_set_logic@_gpio_pin	PTR struct . size(1) Largest target is 2
;!		 -> dc_motor(BANK0[2]), 
;!
;!    ports	PTR volatile unsigned char [5] size(2) Largest target is 1
;!		 -> PORTA(SFR0[1]), PORTB(SFR0[1]), PORTC(SFR0[1]), PORTD(SFR0[1]), 
;!		 -> PORTE(SFR0[1]), 
;!
;!    switch_init@_switch_obj	PTR struct . size(1) Largest target is 2
;!		 -> limit_switch(BANK0[2]), push_button(BANK0[2]), 
;!
;!    switch_read_status@_status	PTR unsigned char  size(1) Largest target is 1
;!		 -> limit_switch_status(BANK0[1]), push_button_status(BANK0[1]), 
;!
;!    switch_read_status@_switch_obj	PTR struct . size(1) Largest target is 2
;!		 -> limit_switch(BANK0[2]), push_button(BANK0[2]), 
;!
;!    trises	PTR volatile unsigned char [5] size(2) Largest target is 1
;!		 -> TRISA(SFR1[1]), TRISB(SFR1[1]), TRISC(SFR1[1]), TRISD(SFR1[1]), 
;!		 -> TRISE(SFR1[1]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_switch_read_status
;!    _switch_read_status->_gpio_pin_read_logic
;!    _initialization->_dc_motor_init
;!    _initialization->_switch_init
;!    _switch_init->_gpio_pin_set_direction
;!    _dc_motor_init->_gpio_pin_set_direction
;!    _application_stop_door->_dc_motor_stop
;!    _dc_motor_stop->_gpio_pin_clear_logic
;!    _application_open_door->_dc_motor_turn_ccw
;!    _dc_motor_turn_ccw->_gpio_pin_clear_logic
;!    _dc_motor_turn_ccw->_gpio_pin_set_logic
;!    _application_close_door->_dc_motor_turn_cw
;!    _dc_motor_turn_cw->_gpio_pin_clear_logic
;!    _dc_motor_turn_cw->_gpio_pin_set_logic
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     1      4    3441
;!                                             13 COMMON     1     1      0
;!                                              0 BANK0      4     0      4
;!             _application_close_door
;!              _application_open_door
;!              _application_stop_door
;!                     _initialization
;!                 _switch_read_status
;! ---------------------------------------------------------------------------------
;! (1) _switch_read_status                                   5     4      1     815
;!                                              8 COMMON     5     4      1
;!                _gpio_pin_read_logic
;! ---------------------------------------------------------------------------------
;! (2) _gpio_pin_read_logic                                  8     7      1     243
;!                                              0 COMMON     8     7      1
;! ---------------------------------------------------------------------------------
;! (1) _initialization                                       0     0      0     836
;!                      _dc_motor_init
;!                        _switch_init
;! ---------------------------------------------------------------------------------
;! (2) _switch_init                                          2     2      0     424
;!                                              7 COMMON     2     2      0
;!             _gpio_pin_set_direction
;! ---------------------------------------------------------------------------------
;! (2) _dc_motor_init                                        2     2      0     412
;!                                              7 COMMON     2     2      0
;!             _gpio_pin_set_direction
;! ---------------------------------------------------------------------------------
;! (3) _gpio_pin_set_direction                               7     7      0     289
;!                                              0 COMMON     7     7      0
;! ---------------------------------------------------------------------------------
;! (1) _application_stop_door                                2     2      0     463
;!                                              8 COMMON     2     2      0
;!                      _dc_motor_stop
;! ---------------------------------------------------------------------------------
;! (2) _dc_motor_stop                                        2     2      0     362
;!                                              7 COMMON     1     1      0
;!               _gpio_pin_clear_logic
;! ---------------------------------------------------------------------------------
;! (1) _application_open_door                                2     2      0     652
;!                                              8 COMMON     2     2      0
;!                  _dc_motor_turn_ccw
;! ---------------------------------------------------------------------------------
;! (2) _dc_motor_turn_ccw                                    2     2      0     551
;!                                              7 COMMON     1     1      0
;!               _gpio_pin_clear_logic
;!                 _gpio_pin_set_logic
;! ---------------------------------------------------------------------------------
;! (1) _application_close_door                               2     2      0     652
;!                                              8 COMMON     2     2      0
;!                   _dc_motor_turn_cw
;! ---------------------------------------------------------------------------------
;! (2) _dc_motor_turn_cw                                     2     2      0     551
;!                                              7 COMMON     1     1      0
;!               _gpio_pin_clear_logic
;!                 _gpio_pin_set_logic
;! ---------------------------------------------------------------------------------
;! (3) _gpio_pin_set_logic                                   7     7      0     189
;!                                              0 COMMON     7     7      0
;! ---------------------------------------------------------------------------------
;! (3) _gpio_pin_clear_logic                                 7     7      0     255
;!                                              0 COMMON     7     7      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _application_close_door
;!     _dc_motor_turn_cw
;!       _gpio_pin_clear_logic
;!       _gpio_pin_set_logic
;!   _application_open_door
;!     _dc_motor_turn_ccw
;!       _gpio_pin_clear_logic
;!       _gpio_pin_set_logic
;!   _application_stop_door
;!     _dc_motor_stop
;!       _gpio_pin_clear_logic
;!   _initialization
;!     _dc_motor_init
;!       _gpio_pin_set_direction
;!     _switch_init
;!       _gpio_pin_set_direction
;!   _switch_read_status
;!     _gpio_pin_read_logic
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
;!BANK0               50      4      25       5       46.2%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      33      12        0.0%
;!ABS                  0      0      33       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 34 in file "application.c"
;; Parameters:    Size  Location     Type
;;  argc            2    0[BANK0 ] int 
;;  argv            2    2[BANK0 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;  tmp             1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       4       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_application_close_door
;;		_application_open_door
;;		_application_stop_door
;;		_initialization
;;		_switch_read_status
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"application.c"
	line	34
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"application.c"
	line	34
	
_main:	
;incstack = 0
	callstack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	35
	
l1309:	
	fcall	_initialization
	line	37
	
l46:	
	line	38
	movlw	(low(_push_button_status|((0x0)<<8)))&0ffh
	movwf	(switch_read_status@_status)
	movlw	(low(_push_button|((0x0)<<8)))&0ffh
	fcall	_switch_read_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	39
	
l1311:	
	movf	((_push_button_status)),w
	btfsc	status,2
	goto	u621
	goto	u620
u621:
	goto	l46
u620:
	line	40
	
l1313:	
	clrf	(_push_button_status)
	line	41
	
l1315:	
	movlw	(low(_limit_switch_status|((0x0)<<8)))&0ffh
	movwf	(switch_read_status@_status)
	movlw	(low(_limit_switch|((0x0)<<8)))&0ffh
	fcall	_switch_read_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	42
	
l1317:	
	movf	((_limit_switch_status)),w
	btfss	status,2
	goto	u631
	goto	u630
u631:
	goto	l1321
u630:
	line	43
	
l1319:	
	movlw	(low(_dc_motor|((0x0)<<8)))&0ffh
	fcall	_application_open_door
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	goto	l1323
	line	45
	
l1321:	
	movlw	(low(_dc_motor|((0x0)<<8)))&0ffh
	fcall	_application_close_door
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	46
	
l1323:	
	movf	(_limit_switch_status),w
	movwf	(main@tmp)
	line	48
	
l1325:	
	movlw	(low(_limit_switch_status|((0x0)<<8)))&0ffh
	movwf	(switch_read_status@_status)
	movlw	(low(_limit_switch|((0x0)<<8)))&0ffh
	fcall	_switch_read_status
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	49
	movf	(_limit_switch_status),w
	xorwf	(main@tmp),w
	skipnz
	goto	u641
	goto	u640
u641:
	goto	l1325
u640:
	line	51
	
l1327:	
	movlw	(low(_dc_motor|((0x0)<<8)))&0ffh
	fcall	_application_stop_door
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	goto	l46
	global	start
	ljmp	start
	callstack 0
	line	55
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_switch_read_status

;; *************** function _switch_read_status *****************
;; Defined at:
;;		line 15 in file "../../ecu_layer/switch_module/switch.c"
;; Parameters:    Size  Location     Type
;;  _switch_obj     1    wreg     PTR struct .
;;		 -> limit_switch(2), push_button(2), 
;;  _status         1    8[COMMON] PTR unsigned char 
;;		 -> limit_switch_status(1), push_button_status(1), 
;; Auto vars:     Size  Location     Type
;;  _switch_obj     1   12[COMMON] PTR struct .
;;		 -> limit_switch(2), push_button(2), 
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
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"../../ecu_layer/switch_module/switch.c"
	line	15
global __ptext1
__ptext1:	;psect for function _switch_read_status
psect	text1
	file	"../../ecu_layer/switch_module/switch.c"
	line	15
	
_switch_read_status:	
;incstack = 0
	callstack 6
; Regs used in _switch_read_status: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(switch_read_status@_switch_obj)
	line	16
	
l1241:	
	line	17
	
l1243:	
	movf	((switch_read_status@_switch_obj)),w
	btfss	status,2
	goto	u561
	goto	u560
u561:
	goto	l1247
u560:
	line	18
	
l1245:	
	clrf	(switch_read_status@ret)
	goto	l1265
	line	20
	
l1247:	
	movf	(switch_read_status@_status),w
	movwf	(gpio_pin_read_logic@_gpio_logic)
	movf	(switch_read_status@_switch_obj),w
	fcall	_gpio_pin_read_logic
	movwf	(switch_read_status@ret)
	line	21
	goto	l1263
	line	23
	
l1249:	
	movf	(switch_read_status@_status),w
	movwf	fsr0
		decf	(indf),w
	btfss	status,2
	goto	u571
	goto	u570
u571:
	goto	l1253
u570:
	line	24
	
l1251:	
	movf	(switch_read_status@_status),w
	movwf	fsr0
	clrf	indf
	goto	l1265
	line	26
	
l1253:	
	movf	(switch_read_status@_status),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	goto	l1265
	line	29
	
l1255:	
	movf	(switch_read_status@_status),w
	movwf	fsr0
	movf	(indf),w
	btfss	status,2
	goto	u581
	goto	u580
u581:
	goto	l1253
u580:
	goto	l1251
	line	34
	
l1263:	
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
	goto	l1467
	goto	l1265
	asmopt pop
	
l1467:	
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
	goto	l1249
	xorlw	1^0	; case 1
	skipnz
	goto	l1255
	goto	l1265
	asmopt pop

	line	36
	
l1265:	
	movf	(switch_read_status@ret),w
	line	37
	
l205:	
	return
	callstack 0
GLOBAL	__end_of_switch_read_status
	__end_of_switch_read_status:
	signat	_switch_read_status,8313
	global	_gpio_pin_read_logic

;; *************** function _gpio_pin_read_logic *****************
;; Defined at:
;;		line 93 in file "../../mcal_layer/gpio_module/gpio.c"
;; Parameters:    Size  Location     Type
;;  _gpio_pin       1    wreg     PTR struct .
;;		 -> limit_switch(2), push_button(2), 
;;  _gpio_logic     1    0[COMMON] PTR unsigned char 
;;		 -> limit_switch_status(1), push_button_status(1), 
;; Auto vars:     Size  Location     Type
;;  _gpio_pin       1    7[COMMON] PTR struct .
;;		 -> limit_switch(2), push_button(2), 
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	93
global __ptext2
__ptext2:	;psect for function _gpio_pin_read_logic
psect	text2
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	93
	
_gpio_pin_read_logic:	
;incstack = 0
	callstack 6
; Regs used in _gpio_pin_read_logic: [wreg-fsr0h+status,2+status,0+btemp+1]
	movwf	(gpio_pin_read_logic@_gpio_pin)
	line	94
	
l1211:	
	clrf	(gpio_pin_read_logic@ret)
	incf	(gpio_pin_read_logic@ret),f
	line	95
	
l1213:	
	movf	((gpio_pin_read_logic@_gpio_pin)),w
	btfsc	status,2
	goto	u531
	goto	u530
u531:
	goto	l1219
u530:
	
l1215:	
	movf	((gpio_pin_read_logic@_gpio_logic)),w
	btfsc	status,2
	goto	u541
	goto	u540
u541:
	goto	l1219
u540:
	line	96
	
l1217:	
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
	goto	u554
u555:
	clrc
	rrf	(??_gpio_pin_read_logic+3)+0,f
u554:
	addlw	-1
	skipz
	goto	u555
	movf	0+(??_gpio_pin_read_logic+3)+0,w
	andlw	01h
	movwf	btemp+1
	movf	(gpio_pin_read_logic@_gpio_logic),w
	movwf	fsr0
	movf	btemp+1,w
	movwf	indf
	line	97
	goto	l1221
	line	99
	
l1219:	
	clrf	(gpio_pin_read_logic@ret)
	line	100
	
l1221:	
	movf	(gpio_pin_read_logic@ret),w
	line	101
	
l148:	
	return
	callstack 0
GLOBAL	__end_of_gpio_pin_read_logic
	__end_of_gpio_pin_read_logic:
	signat	_gpio_pin_read_logic,8313
	global	_initialization

;; *************** function _initialization *****************
;; Defined at:
;;		line 57 in file "application.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_dc_motor_init
;;		_switch_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"application.c"
	line	57
global __ptext3
__ptext3:	;psect for function _initialization
psect	text3
	file	"application.c"
	line	57
	
_initialization:	
;incstack = 0
	callstack 5
; Regs used in _initialization: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	58
	
l1225:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_push_button_pin),w
	movwf	(_push_button)
	line	59
	
l1227:	
	clrf	0+(_push_button)+01h
	incf	0+(_push_button)+01h,f
	line	61
	movf	(_limit_switch_pin),w
	movwf	(_limit_switch)
	line	62
	
l1229:	
	clrf	0+(_limit_switch)+01h
	incf	0+(_limit_switch)+01h,f
	line	64
	movf	(_dc_motor_pin0),w
	movwf	(_dc_motor)
	line	65
	movf	(_dc_motor_pin1),w
	movwf	0+(_dc_motor)+01h
	line	67
	
l1231:	
	movlw	(low(_push_button|((0x0)<<8)))&0ffh
	fcall	_switch_init
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	68
	
l1233:	
	movlw	(low(_limit_switch|((0x0)<<8)))&0ffh
	fcall	_switch_init
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	70
	
l1235:	
	movlw	(low(_dc_motor|((0x0)<<8)))&0ffh
	fcall	_dc_motor_init
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ret)
	line	72
	
l1237:	
	clrf	(_push_button_status)
	line	73
	
l1239:	
	clrf	(_limit_switch_status)
	line	74
	
l57:	
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
;;		 -> limit_switch(2), push_button(2), 
;; Auto vars:     Size  Location     Type
;;  _switch_obj     1    8[COMMON] PTR struct .
;;		 -> limit_switch(2), push_button(2), 
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"../../ecu_layer/switch_module/switch.c"
	line	6
global __ptext4
__ptext4:	;psect for function _switch_init
psect	text4
	file	"../../ecu_layer/switch_module/switch.c"
	line	6
	
_switch_init:	
;incstack = 0
	callstack 5
; Regs used in _switch_init: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(switch_init@_switch_obj)
	line	7
	
l1157:	
	line	8
	
l1159:	
	movf	((switch_init@_switch_obj)),w
	btfss	status,2
	goto	u481
	goto	u480
u481:
	goto	l1163
u480:
	line	9
	
l1161:	
	clrf	(switch_init@ret)
	goto	l1165
	line	11
	
l1163:	
	movf	(switch_init@_switch_obj),w
	fcall	_gpio_pin_set_direction
	movwf	(switch_init@ret)
	line	12
	
l1165:	
	movf	(switch_init@ret),w
	line	13
	
l192:	
	return
	callstack 0
GLOBAL	__end_of_switch_init
	__end_of_switch_init:
	signat	_switch_init,4217
	global	_dc_motor_init

;; *************** function _dc_motor_init *****************
;; Defined at:
;;		line 9 in file "../../ecu_layer/dc_motor_module/dc_motor.c"
;; Parameters:    Size  Location     Type
;;  _dc_motor       1    wreg     PTR struct .
;;		 -> dc_motor(2), 
;; Auto vars:     Size  Location     Type
;;  _dc_motor       1    8[COMMON] PTR struct .
;;		 -> dc_motor(2), 
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"../../ecu_layer/dc_motor_module/dc_motor.c"
	line	9
global __ptext5
__ptext5:	;psect for function _dc_motor_init
psect	text5
	file	"../../ecu_layer/dc_motor_module/dc_motor.c"
	line	9
	
_dc_motor_init:	
;incstack = 0
	callstack 5
; Regs used in _dc_motor_init: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(dc_motor_init@_dc_motor)
	line	10
	
l1169:	
	clrf	(dc_motor_init@ret)
	incf	(dc_motor_init@ret),f
	line	11
	
l1171:	
	movf	((dc_motor_init@_dc_motor)),w
	btfss	status,2
	goto	u491
	goto	u490
u491:
	goto	l1175
u490:
	line	12
	
l1173:	
	clrf	(dc_motor_init@ret)
	goto	l1177
	line	14
	
l1175:	
	movf	(dc_motor_init@_dc_motor),w
	fcall	_gpio_pin_set_direction
	line	15
	movf	(dc_motor_init@_dc_motor),w
	addlw	01h
	fcall	_gpio_pin_set_direction
	line	17
	
l1177:	
	movf	(dc_motor_init@ret),w
	line	18
	
l216:	
	return
	callstack 0
GLOBAL	__end_of_dc_motor_init
	__end_of_dc_motor_init:
	signat	_dc_motor_init,4217
	global	_gpio_pin_set_direction

;; *************** function _gpio_pin_set_direction *****************
;; Defined at:
;;		line 24 in file "../../mcal_layer/gpio_module/gpio.c"
;; Parameters:    Size  Location     Type
;;  _gpio_pin       1    wreg     PTR struct .
;;		 -> dc_motor(2), limit_switch(2), push_button(2), 
;; Auto vars:     Size  Location     Type
;;  _gpio_pin       1    6[COMMON] PTR struct .
;;		 -> dc_motor(2), limit_switch(2), push_button(2), 
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
;;		_switch_init
;;		_dc_motor_init
;;		_gpio_pin_initialize
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	24
global __ptext6
__ptext6:	;psect for function _gpio_pin_set_direction
psect	text6
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	24
	
_gpio_pin_set_direction:	
;incstack = 0
	callstack 5
; Regs used in _gpio_pin_set_direction: [wreg-fsr0h+status,2+status,0+btemp+1]
	movwf	(gpio_pin_set_direction@_gpio_pin)
	line	25
	
l1113:	
	clrf	(gpio_pin_set_direction@ret)
	incf	(gpio_pin_set_direction@ret),f
	line	26
	
l1115:	
	movf	((gpio_pin_set_direction@_gpio_pin)),w
	btfsc	status,2
	goto	u411
	goto	u410
u411:
	goto	l1123
u410:
	goto	l1125
	line	29
	
l1119:	
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
	goto	u424
u425:
	clrc
	rlf	(??_gpio_pin_set_direction+0)+0,f
u424:
	addlw	-1
	skipz
	goto	u425
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
	line	30
	goto	l1129
	line	32
	
l1121:	
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
	goto	u434
u435:
	clrc
	rlf	(??_gpio_pin_set_direction+0)+0,f
u434:
	addlw	-1
	skipz
	goto	u435
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
	line	33
	goto	l1129
	line	35
	
l1123:	
	clrf	(gpio_pin_set_direction@ret)
	line	36
	goto	l1129
	
l1125:	
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
	goto	l1121
	xorlw	1^0	; case 1
	skipnz
	goto	l1119
	goto	l1123
	asmopt pop

	line	40
	
l1129:	
	movf	(gpio_pin_set_direction@ret),w
	line	41
	
l123:	
	return
	callstack 0
GLOBAL	__end_of_gpio_pin_set_direction
	__end_of_gpio_pin_set_direction:
	signat	_gpio_pin_set_direction,4217
	global	_application_stop_door

;; *************** function _application_stop_door *****************
;; Defined at:
;;		line 77 in file "application.c"
;; Parameters:    Size  Location     Type
;;  _motor          1    wreg     PTR struct .
;;		 -> dc_motor(2), 
;; Auto vars:     Size  Location     Type
;;  _motor          1    9[COMMON] PTR struct .
;;		 -> dc_motor(2), 
;;  ret             1    8[COMMON] unsigned char 
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
;;		_dc_motor_stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"application.c"
	line	77
global __ptext7
__ptext7:	;psect for function _application_stop_door
psect	text7
	file	"application.c"
	line	77
	
_application_stop_door:	
;incstack = 0
	callstack 5
; Regs used in _application_stop_door: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(application_stop_door@_motor)
	line	78
	
l1297:	
	clrf	(application_stop_door@ret)
	incf	(application_stop_door@ret),f
	line	79
	
l1299:	
	movf	((application_stop_door@_motor)),w
	btfss	status,2
	goto	u611
	goto	u610
u611:
	goto	l1303
u610:
	line	80
	
l1301:	
	clrf	(application_stop_door@ret)
	goto	l1305
	line	82
	
l1303:	
	movf	(application_stop_door@_motor),w
	fcall	_dc_motor_stop
	line	84
	
l1305:	
	movf	(application_stop_door@ret),w
	line	85
	
l62:	
	return
	callstack 0
GLOBAL	__end_of_application_stop_door
	__end_of_application_stop_door:
	signat	_application_stop_door,4217
	global	_dc_motor_stop

;; *************** function _dc_motor_stop *****************
;; Defined at:
;;		line 43 in file "../../ecu_layer/dc_motor_module/dc_motor.c"
;; Parameters:    Size  Location     Type
;;  _dc_motor       1    wreg     PTR struct .
;;		 -> dc_motor(2), 
;; Auto vars:     Size  Location     Type
;;  _dc_motor       1    7[COMMON] PTR struct .
;;		 -> dc_motor(2), 
;;  ret             1    0        unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_gpio_pin_clear_logic
;; This function is called by:
;;		_application_stop_door
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"../../ecu_layer/dc_motor_module/dc_motor.c"
	line	43
global __ptext8
__ptext8:	;psect for function _dc_motor_stop
psect	text8
	file	"../../ecu_layer/dc_motor_module/dc_motor.c"
	line	43
	
_dc_motor_stop:	
;incstack = 0
	callstack 5
; Regs used in _dc_motor_stop: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(dc_motor_stop@_dc_motor)
	line	44
	
l1181:	
	line	45
	
l1183:	
	movf	((dc_motor_stop@_dc_motor)),w
	btfss	status,2
	goto	u501
	goto	u500
u501:
	goto	l1187
u500:
	line	46
	
l1185:	
	goto	l231
	line	48
	
l1187:	
	movf	(dc_motor_stop@_dc_motor),w
	addlw	01h
	fcall	_gpio_pin_clear_logic
	line	49
	movf	(dc_motor_stop@_dc_motor),w
	fcall	_gpio_pin_clear_logic
	line	52
	
l231:	
	return
	callstack 0
GLOBAL	__end_of_dc_motor_stop
	__end_of_dc_motor_stop:
	signat	_dc_motor_stop,4217
	global	_application_open_door

;; *************** function _application_open_door *****************
;; Defined at:
;;		line 86 in file "application.c"
;; Parameters:    Size  Location     Type
;;  _motor          1    wreg     PTR struct .
;;		 -> dc_motor(2), 
;; Auto vars:     Size  Location     Type
;;  _motor          1    9[COMMON] PTR struct .
;;		 -> dc_motor(2), 
;;  ret             1    8[COMMON] unsigned char 
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
;;		_dc_motor_turn_ccw
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"application.c"
	line	86
global __ptext9
__ptext9:	;psect for function _application_open_door
psect	text9
	file	"application.c"
	line	86
	
_application_open_door:	
;incstack = 0
	callstack 5
; Regs used in _application_open_door: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(application_open_door@_motor)
	line	87
	
l1273:	
	clrf	(application_open_door@ret)
	incf	(application_open_door@ret),f
	line	88
	
l1275:	
	movf	((application_open_door@_motor)),w
	btfss	status,2
	goto	u591
	goto	u590
u591:
	goto	l1279
u590:
	line	89
	
l1277:	
	clrf	(application_open_door@ret)
	goto	l1281
	line	91
	
l1279:	
	movf	(application_open_door@_motor),w
	fcall	_dc_motor_turn_ccw
	line	93
	
l1281:	
	movf	(application_open_door@ret),w
	line	94
	
l67:	
	return
	callstack 0
GLOBAL	__end_of_application_open_door
	__end_of_application_open_door:
	signat	_application_open_door,4217
	global	_dc_motor_turn_ccw

;; *************** function _dc_motor_turn_ccw *****************
;; Defined at:
;;		line 32 in file "../../ecu_layer/dc_motor_module/dc_motor.c"
;; Parameters:    Size  Location     Type
;;  _dc_motor       1    wreg     PTR struct .
;;		 -> dc_motor(2), 
;; Auto vars:     Size  Location     Type
;;  _dc_motor       1    7[COMMON] PTR struct .
;;		 -> dc_motor(2), 
;;  ret             1    0        unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_gpio_pin_clear_logic
;;		_gpio_pin_set_logic
;; This function is called by:
;;		_application_open_door
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"../../ecu_layer/dc_motor_module/dc_motor.c"
	line	32
global __ptext10
__ptext10:	;psect for function _dc_motor_turn_ccw
psect	text10
	file	"../../ecu_layer/dc_motor_module/dc_motor.c"
	line	32
	
_dc_motor_turn_ccw:	
;incstack = 0
	callstack 5
; Regs used in _dc_motor_turn_ccw: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(dc_motor_turn_ccw@_dc_motor)
	line	33
	
l1191:	
	line	34
	
l1193:	
	movf	((dc_motor_turn_ccw@_dc_motor)),w
	btfss	status,2
	goto	u511
	goto	u510
u511:
	goto	l1197
u510:
	line	35
	
l1195:	
	goto	l226
	line	37
	
l1197:	
	movf	(dc_motor_turn_ccw@_dc_motor),w
	addlw	01h
	fcall	_gpio_pin_set_logic
	line	38
	movf	(dc_motor_turn_ccw@_dc_motor),w
	fcall	_gpio_pin_clear_logic
	line	41
	
l226:	
	return
	callstack 0
GLOBAL	__end_of_dc_motor_turn_ccw
	__end_of_dc_motor_turn_ccw:
	signat	_dc_motor_turn_ccw,4217
	global	_application_close_door

;; *************** function _application_close_door *****************
;; Defined at:
;;		line 95 in file "application.c"
;; Parameters:    Size  Location     Type
;;  _motor          1    wreg     PTR struct .
;;		 -> dc_motor(2), 
;; Auto vars:     Size  Location     Type
;;  _motor          1    9[COMMON] PTR struct .
;;		 -> dc_motor(2), 
;;  ret             1    8[COMMON] unsigned char 
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
;;		_dc_motor_turn_cw
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"application.c"
	line	95
global __ptext11
__ptext11:	;psect for function _application_close_door
psect	text11
	file	"application.c"
	line	95
	
_application_close_door:	
;incstack = 0
	callstack 5
; Regs used in _application_close_door: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(application_close_door@_motor)
	line	96
	
l1285:	
	clrf	(application_close_door@ret)
	incf	(application_close_door@ret),f
	line	97
	
l1287:	
	movf	((application_close_door@_motor)),w
	btfss	status,2
	goto	u601
	goto	u600
u601:
	goto	l1291
u600:
	line	98
	
l1289:	
	clrf	(application_close_door@ret)
	goto	l1293
	line	100
	
l1291:	
	movf	(application_close_door@_motor),w
	fcall	_dc_motor_turn_cw
	line	102
	
l1293:	
	movf	(application_close_door@ret),w
	line	103
	
l72:	
	return
	callstack 0
GLOBAL	__end_of_application_close_door
	__end_of_application_close_door:
	signat	_application_close_door,4217
	global	_dc_motor_turn_cw

;; *************** function _dc_motor_turn_cw *****************
;; Defined at:
;;		line 21 in file "../../ecu_layer/dc_motor_module/dc_motor.c"
;; Parameters:    Size  Location     Type
;;  _dc_motor       1    wreg     PTR struct .
;;		 -> dc_motor(2), 
;; Auto vars:     Size  Location     Type
;;  _dc_motor       1    7[COMMON] PTR struct .
;;		 -> dc_motor(2), 
;;  ret             1    0        unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_gpio_pin_clear_logic
;;		_gpio_pin_set_logic
;; This function is called by:
;;		_application_close_door
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"../../ecu_layer/dc_motor_module/dc_motor.c"
	line	21
global __ptext12
__ptext12:	;psect for function _dc_motor_turn_cw
psect	text12
	file	"../../ecu_layer/dc_motor_module/dc_motor.c"
	line	21
	
_dc_motor_turn_cw:	
;incstack = 0
	callstack 5
; Regs used in _dc_motor_turn_cw: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(dc_motor_turn_cw@_dc_motor)
	line	22
	
l1201:	
	line	23
	
l1203:	
	movf	((dc_motor_turn_cw@_dc_motor)),w
	btfss	status,2
	goto	u521
	goto	u520
u521:
	goto	l1207
u520:
	line	24
	
l1205:	
	goto	l221
	line	26
	
l1207:	
	movf	(dc_motor_turn_cw@_dc_motor),w
	fcall	_gpio_pin_set_logic
	line	27
	movf	(dc_motor_turn_cw@_dc_motor),w
	addlw	01h
	fcall	_gpio_pin_clear_logic
	line	30
	
l221:	
	return
	callstack 0
GLOBAL	__end_of_dc_motor_turn_cw
	__end_of_dc_motor_turn_cw:
	signat	_dc_motor_turn_cw,4217
	global	_gpio_pin_set_logic

;; *************** function _gpio_pin_set_logic *****************
;; Defined at:
;;		line 57 in file "../../mcal_layer/gpio_module/gpio.c"
;; Parameters:    Size  Location     Type
;;  _gpio_pin       1    wreg     PTR struct .
;;		 -> dc_motor(2), 
;; Auto vars:     Size  Location     Type
;;  _gpio_pin       1    6[COMMON] PTR struct .
;;		 -> dc_motor(2), 
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
;;		_dc_motor_turn_cw
;;		_dc_motor_turn_ccw
;;		_gpio_pin_initialize
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	57
global __ptext13
__ptext13:	;psect for function _gpio_pin_set_logic
psect	text13
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	57
	
_gpio_pin_set_logic:	
;incstack = 0
	callstack 5
; Regs used in _gpio_pin_set_logic: [wreg-fsr0h+status,2+status,0+btemp+1]
	movwf	(gpio_pin_set_logic@_gpio_pin)
	line	58
	
l1133:	
	clrf	(gpio_pin_set_logic@ret)
	incf	(gpio_pin_set_logic@ret),f
	line	59
	
l1135:	
	movf	((gpio_pin_set_logic@_gpio_pin)),w
	btfsc	status,2
	goto	u441
	goto	u440
u441:
	goto	l1139
u440:
	line	60
	
l1137:	
	movlw	low(01h)
	movwf	(??_gpio_pin_set_logic+0)+0
	movf	(gpio_pin_set_logic@_gpio_pin),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	rrf	indf,w
	movwf	(??_gpio_pin_set_logic+1)+0
	rrf	(??_gpio_pin_set_logic+1)+0,f
	rrf	(??_gpio_pin_set_logic+1)+0,w
	andlw	(1<<3)-1
	addlw	1
	goto	u454
u455:
	clrc
	rlf	(??_gpio_pin_set_logic+0)+0,f
u454:
	addlw	-1
	skipz
	goto	u455
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
	line	61
	goto	l1141
	line	63
	
l1139:	
	clrf	(gpio_pin_set_logic@ret)
	line	64
	
l1141:	
	movf	(gpio_pin_set_logic@ret),w
	line	65
	
l133:	
	return
	callstack 0
GLOBAL	__end_of_gpio_pin_set_logic
	__end_of_gpio_pin_set_logic:
	signat	_gpio_pin_set_logic,4217
	global	_gpio_pin_clear_logic

;; *************** function _gpio_pin_clear_logic *****************
;; Defined at:
;;		line 81 in file "../../mcal_layer/gpio_module/gpio.c"
;; Parameters:    Size  Location     Type
;;  _gpio_pin       1    wreg     PTR struct .
;;		 -> dc_motor(2), 
;; Auto vars:     Size  Location     Type
;;  _gpio_pin       1    6[COMMON] PTR struct .
;;		 -> dc_motor(2), 
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
;;		_dc_motor_turn_cw
;;		_dc_motor_turn_ccw
;;		_dc_motor_stop
;;		_gpio_pin_initialize
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	81
global __ptext14
__ptext14:	;psect for function _gpio_pin_clear_logic
psect	text14
	file	"../../mcal_layer/gpio_module/gpio.c"
	line	81
	
_gpio_pin_clear_logic:	
;incstack = 0
	callstack 5
; Regs used in _gpio_pin_clear_logic: [wreg-fsr0h+status,2+status,0+btemp+1]
	movwf	(gpio_pin_clear_logic@_gpio_pin)
	line	82
	
l1145:	
	clrf	(gpio_pin_clear_logic@ret)
	incf	(gpio_pin_clear_logic@ret),f
	line	83
	
l1147:	
	movf	((gpio_pin_clear_logic@_gpio_pin)),w
	btfsc	status,2
	goto	u461
	goto	u460
u461:
	goto	l1151
u460:
	line	84
	
l1149:	
	movlw	low(01h)
	movwf	(??_gpio_pin_clear_logic+0)+0
	movf	(gpio_pin_clear_logic@_gpio_pin),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	rrf	indf,w
	movwf	(??_gpio_pin_clear_logic+1)+0
	rrf	(??_gpio_pin_clear_logic+1)+0,f
	rrf	(??_gpio_pin_clear_logic+1)+0,w
	andlw	(1<<3)-1
	addlw	1
	goto	u474
u475:
	clrc
	rlf	(??_gpio_pin_clear_logic+0)+0,f
u474:
	addlw	-1
	skipz
	goto	u475
	movf	0+(??_gpio_pin_clear_logic+0)+0,w
	xorlw	0ffh
	movwf	btemp+1
	movf	(gpio_pin_clear_logic@_gpio_pin),w
	movwf	fsr0
	movf	indf,w
	andlw	(1<<3)-1
	movwf	(??_gpio_pin_clear_logic+2)+0
	addwf	(??_gpio_pin_clear_logic+2)+0,w
	addlw	low(_ports|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_gpio_pin_clear_logic+3)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_gpio_pin_clear_logic+3)+0+1
	movf	0+(??_gpio_pin_clear_logic+3)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_gpio_pin_clear_logic+3)+0,0
	bcf	status,7
	movf	btemp+1,w
	andwf	indf,f
	line	85
	goto	l1153
	line	87
	
l1151:	
	clrf	(gpio_pin_clear_logic@ret)
	line	88
	
l1153:	
	movf	(gpio_pin_clear_logic@ret),w
	line	89
	
l143:	
	return
	callstack 0
GLOBAL	__end_of_gpio_pin_clear_logic
	__end_of_gpio_pin_clear_logic:
	signat	_gpio_pin_clear_logic,4217
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
