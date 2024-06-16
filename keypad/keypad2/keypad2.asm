;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module keypad2
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _keyPressed
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_main_numbers_10000_13:
	.ds 10
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_keyPressed_numbers_10000_1:
	.ds 10
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'keyPressed'
;------------------------------------------------------------
;numbers                   Allocated with name '_keyPressed_numbers_10000_1'
;number                    Allocated to registers r7 
;------------------------------------------------------------
;	.\keypad2.c:3: char keyPressed() {
;	-----------------------------------------
;	 function keyPressed
;	-----------------------------------------
_keyPressed:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	.\keypad2.c:5: numbers[0] = 0b11000000;
	mov	_keyPressed_numbers_10000_1,#0xc0
;	.\keypad2.c:6: numbers[1] = 0b11111001;
	mov	(_keyPressed_numbers_10000_1 + 0x0001),#0xf9
;	.\keypad2.c:7: numbers[2] = 0b10100100;
	mov	(_keyPressed_numbers_10000_1 + 0x0002),#0xa4
;	.\keypad2.c:8: numbers[3] = 0b10110000;
	mov	(_keyPressed_numbers_10000_1 + 0x0003),#0xb0
;	.\keypad2.c:9: numbers[4] = 0b10011001;
	mov	(_keyPressed_numbers_10000_1 + 0x0004),#0x99
;	.\keypad2.c:10: numbers[5] = 0b10010010;
	mov	(_keyPressed_numbers_10000_1 + 0x0005),#0x92
;	.\keypad2.c:11: numbers[6] = 0b10000010;
	mov	(_keyPressed_numbers_10000_1 + 0x0006),#0x82
;	.\keypad2.c:12: numbers[7] = 0b11111000;
	mov	(_keyPressed_numbers_10000_1 + 0x0007),#0xf8
;	.\keypad2.c:13: numbers[8] = 0b10000000;
	mov	(_keyPressed_numbers_10000_1 + 0x0008),#0x80
;	.\keypad2.c:14: numbers[9] = 0b10011000;
	mov	(_keyPressed_numbers_10000_1 + 0x0009),#0x98
;	.\keypad2.c:15: char number = numbers[0];
	mov	r7,_keyPressed_numbers_10000_1
;	.\keypad2.c:18: P0 = 0b11111101;
	mov	_P0,#0xfd
;	.\keypad2.c:19: if(P0_4 == 0) {
	jb	_P0_4,00107$
;	.\keypad2.c:20: number = numbers[9];
	mov	r7,(_keyPressed_numbers_10000_1 + 0x0009)
	sjmp	00108$
00107$:
;	.\keypad2.c:21: } else if(P0_5 == 0) {
	jb	_P0_5,00104$
;	.\keypad2.c:22: number = numbers[8];
	mov	r7,(_keyPressed_numbers_10000_1 + 0x0008)
	sjmp	00108$
00104$:
;	.\keypad2.c:23: } else if(P0_6 == 0) {
	jb	_P0_6,00108$
;	.\keypad2.c:24: number = numbers[7];
	mov	r7,(_keyPressed_numbers_10000_1 + 0x0007)
00108$:
;	.\keypad2.c:26: P0 = 0b11111011;
	mov	_P0,#0xfb
;	.\keypad2.c:27: if(P0_4 == 0) {
	jb	_P0_4,00115$
;	.\keypad2.c:28: number = numbers[6];
	mov	r7,(_keyPressed_numbers_10000_1 + 0x0006)
	sjmp	00116$
00115$:
;	.\keypad2.c:29: } else if(P0_5 == 0) {
	jb	_P0_5,00112$
;	.\keypad2.c:30: number = numbers[5];
	mov	r7,(_keyPressed_numbers_10000_1 + 0x0005)
	sjmp	00116$
00112$:
;	.\keypad2.c:31: } else if(P0_6 == 0) {
	jb	_P0_6,00116$
;	.\keypad2.c:32: number = numbers[4];
	mov	r7,(_keyPressed_numbers_10000_1 + 0x0004)
00116$:
;	.\keypad2.c:35: P0 = 0b11110111;
	mov	_P0,#0xf7
;	.\keypad2.c:36: if(P0_4 == 0) {
	jb	_P0_4,00123$
;	.\keypad2.c:37: number = numbers[3];
	mov	r7,(_keyPressed_numbers_10000_1 + 0x0003)
	sjmp	00124$
00123$:
;	.\keypad2.c:38: } else if(P0_5 == 0) {
	jb	_P0_5,00120$
;	.\keypad2.c:39: number = numbers[2];
	mov	r7,(_keyPressed_numbers_10000_1 + 0x0002)
	sjmp	00124$
00120$:
;	.\keypad2.c:40: } else if(P0_6 == 0) {
	jb	_P0_6,00124$
;	.\keypad2.c:41: number = numbers[1];
	mov	r7,(_keyPressed_numbers_10000_1 + 0x0001)
00124$:
;	.\keypad2.c:44: return number;
	mov	dpl, r7
;	.\keypad2.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;numbers                   Allocated with name '_main_numbers_10000_13'
;number                    Allocated to registers 
;first                     Allocated to registers r6 
;second                    Allocated to registers r5 
;third                     Allocated to registers r4 
;fourth                    Allocated to registers r3 
;i                         Allocated to registers r7 
;i                         Allocated to registers r7 
;i                         Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	.\keypad2.c:47: int main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	.\keypad2.c:50: numbers[0] = 0b11000000;
	mov	_main_numbers_10000_13,#0xc0
;	.\keypad2.c:51: numbers[1] = 0b11111001;
	mov	(_main_numbers_10000_13 + 0x0001),#0xf9
;	.\keypad2.c:52: numbers[2] = 0b10100100;
	mov	(_main_numbers_10000_13 + 0x0002),#0xa4
;	.\keypad2.c:53: numbers[3] = 0b10110000;
	mov	(_main_numbers_10000_13 + 0x0003),#0xb0
;	.\keypad2.c:54: numbers[4] = 0b10011001;
	mov	(_main_numbers_10000_13 + 0x0004),#0x99
;	.\keypad2.c:55: numbers[5] = 0b10010010;
	mov	(_main_numbers_10000_13 + 0x0005),#0x92
;	.\keypad2.c:56: numbers[6] = 0b10000010;
	mov	(_main_numbers_10000_13 + 0x0006),#0x82
;	.\keypad2.c:57: numbers[7] = 0b11111000;
	mov	(_main_numbers_10000_13 + 0x0007),#0xf8
;	.\keypad2.c:58: numbers[8] = 0b10000000;
	mov	(_main_numbers_10000_13 + 0x0008),#0x80
;	.\keypad2.c:59: numbers[9] = 0b10011000;
	mov	(_main_numbers_10000_13 + 0x0009),#0x98
;	.\keypad2.c:62: while((first = keyPressed()) == 0b11000000) ;
00101$:
	lcall	_keyPressed
	mov	r7, dpl
	mov	ar6,r7
	cjne	r7,#0xc0,00242$
	sjmp	00101$
00242$:
;	.\keypad2.c:63: while(keyPressed() != 0b11000000) ;
00104$:
	push	ar6
	lcall	_keyPressed
	mov	r7, dpl
	pop	ar6
	cjne	r7,#0xc0,00104$
;	.\keypad2.c:65: while((second = keyPressed()) == 0b11000000) ;
00107$:
	push	ar6
	lcall	_keyPressed
	mov	r7, dpl
	pop	ar6
	mov	ar5,r7
	cjne	r7,#0xc0,00245$
	sjmp	00107$
00245$:
;	.\keypad2.c:66: while(keyPressed() != 0b11000000) ;
00110$:
	push	ar6
	push	ar5
	lcall	_keyPressed
	mov	r7, dpl
	pop	ar5
	pop	ar6
	cjne	r7,#0xc0,00110$
;	.\keypad2.c:68: while((third = keyPressed()) == 0b11000000) ;
00113$:
	push	ar6
	push	ar5
	lcall	_keyPressed
	mov	r7, dpl
	pop	ar5
	pop	ar6
	mov	ar4,r7
	cjne	r7,#0xc0,00248$
	sjmp	00113$
00248$:
;	.\keypad2.c:69: while(keyPressed() != 0b11000000) ;
00116$:
	push	ar6
	push	ar5
	push	ar4
	lcall	_keyPressed
	mov	r7, dpl
	pop	ar4
	pop	ar5
	pop	ar6
	cjne	r7,#0xc0,00116$
;	.\keypad2.c:71: while((fourth = keyPressed()) == 0b11000000) ;
00119$:
	push	ar6
	push	ar5
	push	ar4
	lcall	_keyPressed
	mov	r7, dpl
	pop	ar4
	pop	ar5
	pop	ar6
	mov	ar3,r7
	cjne	r7,#0xc0,00251$
	sjmp	00119$
00251$:
;	.\keypad2.c:72: while(1) {
00127$:
;	.\keypad2.c:73: P0_7 = 0;
;	assignBit
	clr	_P0_7
;	.\keypad2.c:74: P3_3 = 0;
;	assignBit
	clr	_P3_3
;	.\keypad2.c:75: P3_4 = 0;
;	assignBit
	clr	_P3_4
;	.\keypad2.c:76: P0_7 = 1;
;	assignBit
	setb	_P0_7
;	.\keypad2.c:77: P1 = fourth;
	mov	_P1,r3
;	.\keypad2.c:78: for(int i = 0; i < 5; i++) ;
	mov	r7,#0x00
00130$:
	cjne	r7,#0x05,00252$
00252$:
	jnc	00122$
	inc	r7
	sjmp	00130$
00122$:
;	.\keypad2.c:80: P0_7 = 0;
;	assignBit
	clr	_P0_7
;	.\keypad2.c:81: P3_3 = 1;
;	assignBit
	setb	_P3_3
;	.\keypad2.c:82: P3_4 = 0;
;	assignBit
	clr	_P3_4
;	.\keypad2.c:83: P0_7 = 1;
;	assignBit
	setb	_P0_7
;	.\keypad2.c:84: P1 = third;
	mov	_P1,r4
;	.\keypad2.c:85: for(int i = 0; i < 5; i++) ;
	mov	r7,#0x00
00133$:
	cjne	r7,#0x05,00254$
00254$:
	jnc	00123$
	inc	r7
	sjmp	00133$
00123$:
;	.\keypad2.c:87: P0_7 = 0;
;	assignBit
	clr	_P0_7
;	.\keypad2.c:88: P3_3 = 0;
;	assignBit
	clr	_P3_3
;	.\keypad2.c:89: P3_4 = 1;
;	assignBit
	setb	_P3_4
;	.\keypad2.c:90: P0_7 = 1;
;	assignBit
	setb	_P0_7
;	.\keypad2.c:91: P1 = second;
	mov	_P1,r5
;	.\keypad2.c:92: for(int i = 0; i < 5; i++) ;
	mov	r7,#0x00
00136$:
	cjne	r7,#0x05,00256$
00256$:
	jnc	00124$
	inc	r7
	sjmp	00136$
00124$:
;	.\keypad2.c:94: P0_7 = 0;
;	assignBit
	clr	_P0_7
;	.\keypad2.c:95: P3_3 = 1;
;	assignBit
	setb	_P3_3
;	.\keypad2.c:96: P3_4 = 1;
;	assignBit
	setb	_P3_4
;	.\keypad2.c:97: P0_7 = 1;
;	assignBit
	setb	_P0_7
;	.\keypad2.c:98: P1 = first;
	mov	_P1,r6
;	.\keypad2.c:99: for(int i = 0; i < 5; i++) ;
	mov	r7,#0x00
00139$:
	cjne	r7,#0x05,00258$
00258$:
	jnc	00127$
	inc	r7
;	.\keypad2.c:101: }
	sjmp	00139$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
