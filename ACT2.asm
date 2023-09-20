;label1st
 ;instruction2nd
  ;values3rd

 processor 16F84A

include <p16F84A.INC>
__config _XT_OSC &_WDT_OFF

org 100h

BSF STATUS, RP0
MOVLW B'00000000'
MOVWF TRISB
MOVLW B'00000'
MOVWF TRISA
BCF STATUS, RP0

START:
 MOVLW B'0001'
 MOVWF PORTA
 MOVLW B'00001000'
 MOVWF PORTB

 goto start
END 