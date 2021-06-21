list p=16F84A
#include"P16F84A.inc"
    
ORG 0H
    
MAIN
    bsf	    STATUS,5
    movlw   0H
    movwf   TRISB
    ;movwf   TRISB
    bcf	    STATUS,5
    
    movlw   b'00000001'
    movwf   PORTB
    CALL DELAY
    CALL DELAY
    movlw   b'00000010'
    movwf   PORTB
    CALL DELAY
    CALL DELAY
    movlw   b'00000100'
    movwf   PORTB
    CALL DELAY
    CALL DELAY
    movlw   b'00001000'
    movwf   PORTB
    CALL DELAY
    CALL DELAY
    movlw   b'00010000'
    movwf   PORTB
    CALL DELAY
    CALL DELAY
    movlw   b'00100000'
    movwf   PORTB
    CALL DELAY
    CALL DELAY
    movlw   b'01000000'
    movwf   PORTB
    CALL DELAY
    CALL DELAY
    movlw   b'10000000'
    movwf   PORTB
    CALL DELAY
    CALL DELAY
    GOTO MAIN 
    
    DELAY   DECFSZ 0CH,1
	GOTO DELAY
	DECFSZ 0DH,1
	GOTO DELAY
	
    END