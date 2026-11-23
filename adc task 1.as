opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F877A
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
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_lcd_int
	FNCALL	_main,_adc_read
	FNCALL	_main,_cmd
	FNCALL	_main,_show
	FNCALL	_main,___lwdiv
	FNCALL	_main,_dat
	FNCALL	_main,___lwmod
	FNCALL	_main,_delay
	FNCALL	_show,_dat
	FNCALL	_lcd_int,_delay
	FNCALL	_lcd_int,_cmd
	FNCALL	_dat,_delay
	FNCALL	_cmd,_delay
	FNROOT	_main
	global	_ADCON0
psect	text190,local,class=CODE,delta=2
global __ptext190
__ptext190:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	86	;'V'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	0
psect	strings
	file	"adc task 1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_int
?_lcd_int:	; 0 bytes @ 0x0
	global	?_cmd
?_cmd:	; 0 bytes @ 0x0
	global	?_show
?_show:	; 0 bytes @ 0x0
	global	?_dat
?_dat:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_adc_read
?_adc_read:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	delay@i
delay@i:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_adc_read
??_adc_read:	; 0 bytes @ 0x2
	global	??_cmd
??_cmd:	; 0 bytes @ 0x2
	global	??_dat
??_dat:	; 0 bytes @ 0x2
	global	cmd@a
cmd@a:	; 1 bytes @ 0x2
	global	dat@b
dat@b:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_lcd_int
??_lcd_int:	; 0 bytes @ 0x3
	global	??_show
??_show:	; 0 bytes @ 0x3
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	show@s
show@s:	; 1 bytes @ 0x4
	global	adc_read@adcval
adc_read@adcval:	; 2 bytes @ 0x4
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@adcval
main@adcval:	; 2 bytes @ 0x0
	ds	2
;;Data sizes: Strings 11, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      2       2
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_adc_read	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; show@s	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_1(CODE[11]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lwmod
;;   _show->_dat
;;   _lcd_int->_cmd
;;   _dat->_delay
;;   _cmd->_delay
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0     842
;;                                              0 BANK0      2     2      0
;;                            _lcd_int
;;                           _adc_read
;;                                _cmd
;;                               _show
;;                            ___lwdiv
;;                                _dat
;;                            ___lwmod
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _show                                                 2     2      0     113
;;                                              3 COMMON     2     2      0
;;                                _dat
;; ---------------------------------------------------------------------------------
;; (1) _lcd_int                                              0     0      0     114
;;                              _delay
;;                                _cmd
;; ---------------------------------------------------------------------------------
;; (1) _dat                                                  1     1      0      68
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  1     1      0      68
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___lwmod                                              6     2      4     159
;;                                              8 COMMON     6     2      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _adc_read                                             6     4      2      23
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     2      0      46
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_int
;;     _delay
;;     _cmd
;;       _delay
;;   _adc_read
;;   _cmd
;;     _delay
;;   _show
;;     _dat
;;       _delay
;;   ___lwdiv
;;   _dat
;;     _delay
;;   ___lwmod
;;     ___lwdiv (ARG)
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      2       2       5        2.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 24 in file "D:\pic\adc task 1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adcval          2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_int
;;		_adc_read
;;		_cmd
;;		_show
;;		___lwdiv
;;		_dat
;;		___lwmod
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\pic\adc task 1.c"
	line	24
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	28
	
l2047:	
;adc task 1.c: 25: unsigned int adcval;
;adc task 1.c: 28: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	29
;adc task 1.c: 29: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	30
	
l2049:	
;adc task 1.c: 30: TRISA = 0x01;
	movlw	(01h)
	movwf	(133)^080h	;volatile
	line	32
	
l2051:	
;adc task 1.c: 32: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	33
	
l2053:	
;adc task 1.c: 33: PORTC = 0x00;
	clrf	(7)	;volatile
	line	36
	
l2055:	
;adc task 1.c: 36: ADCON1 = 0x8E;
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	37
	
l2057:	
;adc task 1.c: 37: ADCON0 = 0x81;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	40
	
l2059:	
;adc task 1.c: 40: lcd_int();
	fcall	_lcd_int
	goto	l2061
	line	42
;adc task 1.c: 42: while(1)
	
l574:	
	line	44
	
l2061:	
;adc task 1.c: 43: {
;adc task 1.c: 44: adcval = adc_read();
	fcall	_adc_read
	movf	(1+(?_adc_read)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@adcval+1)
	addwf	(main@adcval+1)
	movf	(0+(?_adc_read)),w
	clrf	(main@adcval)
	addwf	(main@adcval)

	line	46
	
l2063:	
;adc task 1.c: 46: cmd(0x80);
	movlw	(080h)
	fcall	_cmd
	line	47
	
l2065:	
;adc task 1.c: 47: show("ADC Value:");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_show
	line	49
	
l2067:	
;adc task 1.c: 49: cmd(0xC0);
	movlw	(0C0h)
	fcall	_cmd
	line	51
	
l2069:	
;adc task 1.c: 51: dat((adcval / 1000) + '0');
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@adcval+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@adcval),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_dat
	line	52
	
l2071:	
;adc task 1.c: 52: dat(((adcval / 100) % 10) + '0');
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@adcval+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@adcval),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_dat
	line	53
	
l2073:	
;adc task 1.c: 53: dat(((adcval / 10) % 10) + '0');
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@adcval+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@adcval),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_dat
	line	54
	
l2075:	
;adc task 1.c: 54: dat((adcval % 10) + '0');
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@adcval+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(main@adcval),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_dat
	line	56
	
l2077:	
;adc task 1.c: 56: delay();
	fcall	_delay
	goto	l2061
	line	57
	
l575:	
	line	42
	goto	l2061
	
l576:	
	line	58
	
l577:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_show
psect	text191,local,class=CODE,delta=2
global __ptext191
__ptext191:

;; *************** function _show *****************
;; Defined at:
;;		line 93 in file "D:\pic\adc task 1.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  s               1    4[COMMON] PTR const unsigned char 
;;		 -> STR_1(11), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dat
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text191
	file	"D:\pic\adc task 1.c"
	line	93
	global	__size_of_show
	__size_of_show	equ	__end_of_show-_show
	
_show:	
	opt	stack 5
; Regs used in _show: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;show@s stored from wreg
	movwf	(show@s)
	line	94
	
l2039:	
;adc task 1.c: 94: while(*s)
	goto	l2045
	
l590:	
	line	96
	
l2041:	
;adc task 1.c: 95: {
;adc task 1.c: 96: dat(*s++);
	movf	(show@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_dat
	
l2043:	
	movlw	(01h)
	movwf	(??_show+0)+0
	movf	(??_show+0)+0,w
	addwf	(show@s),f
	goto	l2045
	line	97
	
l589:	
	line	94
	
l2045:	
	movf	(show@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l2041
u2360:
	goto	l592
	
l591:	
	line	98
	
l592:	
	return
	opt stack 0
GLOBAL	__end_of_show
	__end_of_show:
;; =============== function _show ends ============

	signat	_show,4216
	global	_lcd_int
psect	text192,local,class=CODE,delta=2
global __ptext192
__ptext192:

;; *************** function _lcd_int *****************
;; Defined at:
;;		line 61 in file "D:\pic\adc task 1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text192
	file	"D:\pic\adc task 1.c"
	line	61
	global	__size_of_lcd_int
	__size_of_lcd_int	equ	__end_of_lcd_int-_lcd_int
	
_lcd_int:	
	opt	stack 5
; Regs used in _lcd_int: [wreg+status,2+status,0+pclath+cstack]
	line	62
	
l2037:	
;adc task 1.c: 62: delay();
	fcall	_delay
	line	63
;adc task 1.c: 63: cmd(0x38);
	movlw	(038h)
	fcall	_cmd
	line	64
;adc task 1.c: 64: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	65
;adc task 1.c: 65: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	66
;adc task 1.c: 66: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	67
;adc task 1.c: 67: delay();
	fcall	_delay
	line	68
	
l580:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_int
	__end_of_lcd_int:
;; =============== function _lcd_int ends ============

	signat	_lcd_int,88
	global	_dat
psect	text193,local,class=CODE,delta=2
global __ptext193
__ptext193:

;; *************** function _dat *****************
;; Defined at:
;;		line 82 in file "D:\pic\adc task 1.c"
;; Parameters:    Size  Location     Type
;;  b               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_show
;; This function uses a non-reentrant model
;;
psect	text193
	file	"D:\pic\adc task 1.c"
	line	82
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 6
; Regs used in _dat: [wreg+status,2+status,0+pclath+cstack]
;dat@b stored from wreg
	movwf	(dat@b)
	line	83
	
l2023:	
;adc task 1.c: 83: PORTB = b;
	movf	(dat@b),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	84
	
l2025:	
;adc task 1.c: 84: RC0 = 1;
	bsf	(56/8),(56)&7
	line	85
	
l2027:	
;adc task 1.c: 85: RC1 = 0;
	bcf	(57/8),(57)&7
	line	86
	
l2029:	
;adc task 1.c: 86: RC2 = 1;
	bsf	(58/8),(58)&7
	line	87
	
l2031:	
;adc task 1.c: 87: delay();
	fcall	_delay
	line	88
	
l2033:	
;adc task 1.c: 88: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	89
	
l2035:	
;adc task 1.c: 89: delay();
	fcall	_delay
	line	90
	
l586:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,4216
	global	_cmd
psect	text194,local,class=CODE,delta=2
global __ptext194
__ptext194:

;; *************** function _cmd *****************
;; Defined at:
;;		line 71 in file "D:\pic\adc task 1.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_lcd_int
;; This function uses a non-reentrant model
;;
psect	text194
	file	"D:\pic\adc task 1.c"
	line	71
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 6
; Regs used in _cmd: [wreg+status,2+status,0+pclath+cstack]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	72
	
l2009:	
;adc task 1.c: 72: PORTB = a;
	movf	(cmd@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	73
	
l2011:	
;adc task 1.c: 73: RC0 = 0;
	bcf	(56/8),(56)&7
	line	74
	
l2013:	
;adc task 1.c: 74: RC1 = 0;
	bcf	(57/8),(57)&7
	line	75
	
l2015:	
;adc task 1.c: 75: RC2 = 1;
	bsf	(58/8),(58)&7
	line	76
	
l2017:	
;adc task 1.c: 76: delay();
	fcall	_delay
	line	77
	
l2019:	
;adc task 1.c: 77: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	78
	
l2021:	
;adc task 1.c: 78: delay();
	fcall	_delay
	line	79
	
l583:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	___lwmod
psect	text195,local,class=CODE,delta=2
global __ptext195
__ptext195:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] unsigned int 
;;  dividend        2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text195
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 7
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l1987:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2301
	goto	u2300
u2301:
	goto	l2005
u2300:
	line	9
	
l1989:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l1995
	
l625:	
	line	11
	
l1991:	
	movlw	01h
	
u2315:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2315
	line	12
	
l1993:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1995
	line	13
	
l624:	
	line	10
	
l1995:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l1991
u2320:
	goto	l1997
	
l626:	
	goto	l1997
	line	14
	
l627:	
	line	15
	
l1997:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2335
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2335:
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l2001
u2330:
	line	16
	
l1999:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l2001
	
l628:	
	line	17
	
l2001:	
	movlw	01h
	
u2345:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2345
	line	18
	
l2003:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l1997
u2350:
	goto	l2005
	
l629:	
	goto	l2005
	line	19
	
l623:	
	line	20
	
l2005:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l630
	
l2007:	
	line	21
	
l630:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text196,local,class=CODE,delta=2
global __ptext196
__ptext196:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text196
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l1963:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2231
	goto	u2230
u2231:
	goto	l1983
u2230:
	line	11
	
l1965:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l1971
	
l615:	
	line	13
	
l1967:	
	movlw	01h
	
u2245:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2245
	line	14
	
l1969:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1971
	line	15
	
l614:	
	line	12
	
l1971:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l1967
u2250:
	goto	l1973
	
l616:	
	goto	l1973
	line	16
	
l617:	
	line	17
	
l1973:	
	movlw	01h
	
u2265:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2265
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2275
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2275:
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l1979
u2270:
	line	19
	
l1975:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l1977:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1979
	line	21
	
l618:	
	line	22
	
l1979:	
	movlw	01h
	
u2285:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2285
	line	23
	
l1981:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l1973
u2290:
	goto	l1983
	
l619:	
	goto	l1983
	line	24
	
l613:	
	line	25
	
l1983:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l620
	
l1985:	
	line	26
	
l620:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_adc_read
psect	text197,local,class=CODE,delta=2
global __ptext197
__ptext197:

;; *************** function _adc_read *****************
;; Defined at:
;;		line 101 in file "D:\pic\adc task 1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adcval          2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text197
	file	"D:\pic\adc task 1.c"
	line	101
	global	__size_of_adc_read
	__size_of_adc_read	equ	__end_of_adc_read-_adc_read
	
_adc_read:	
	opt	stack 7
; Regs used in _adc_read: [wreg+status,2+status,0+btemp+1]
	line	105
	
l1953:	
;adc task 1.c: 102: unsigned int adcval;
;adc task 1.c: 105: ADCON0 = 0x81;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	108
	
l1955:	
;adc task 1.c: 108: ADCON0 |= 0x04;
	bsf	(31)+(2/8),(2)&7	;volatile
	line	111
;adc task 1.c: 111: while(ADCON0 & 0x04);
	goto	l595
	
l596:	
	
l595:	
	btfsc	(31),(2)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l595
u2210:
	goto	l1957
	
l597:	
	line	114
	
l1957:	
;adc task 1.c: 114: adcval = ((unsigned int)ADRESH << 8) | ADRESL;
	movf	(30),w	;volatile
	movwf	(??_adc_read+0)+0
	clrf	(??_adc_read+0)+0+1
	movlw	08h
	movwf	btemp+1
u2225:
	clrc
	rlf	(??_adc_read+0)+0,f
	rlf	(??_adc_read+0)+1,f
	decfsz	btemp+1,f
	goto	u2225
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	iorwf	0+(??_adc_read+0)+0,w
	movwf	(adc_read@adcval)
	movf	1+(??_adc_read+0)+0,w
	movwf	1+(adc_read@adcval)
	line	116
	
l1959:	
;adc task 1.c: 116: return adcval;
	movf	(adc_read@adcval+1),w
	clrf	(?_adc_read+1)
	addwf	(?_adc_read+1)
	movf	(adc_read@adcval),w
	clrf	(?_adc_read)
	addwf	(?_adc_read)

	goto	l598
	
l1961:	
	line	117
	
l598:	
	return
	opt stack 0
GLOBAL	__end_of_adc_read
	__end_of_adc_read:
;; =============== function _adc_read ends ============

	signat	_adc_read,90
	global	_delay
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:

;; *************** function _delay *****************
;; Defined at:
;;		line 18 in file "D:\pic\adc task 1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_lcd_int
;;		_cmd
;;		_dat
;; This function uses a non-reentrant model
;;
psect	text198
	file	"D:\pic\adc task 1.c"
	line	18
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	20
	
l1947:	
;adc task 1.c: 19: unsigned int i;
;adc task 1.c: 20: for(i = 0; i < 1000; i++);
	movlw	low(0)
	movwf	(delay@i)
	movlw	high(0)
	movwf	((delay@i))+1
	movlw	high(03E8h)
	subwf	(delay@i+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay@i),w
	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l1951
u2190:
	goto	l571
	
l1949:	
	goto	l571
	
l569:	
	
l1951:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	movlw	high(03E8h)
	subwf	(delay@i+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay@i),w
	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l1951
u2200:
	goto	l571
	
l570:	
	line	21
	
l571:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text199,local,class=CODE,delta=2
global __ptext199
__ptext199:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
