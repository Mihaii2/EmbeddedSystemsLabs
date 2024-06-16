                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module keypad2
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _keyPressed
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 ;--------------------------------------------------------
                                    110 ; special function registers
                                    111 ;--------------------------------------------------------
                                    112 	.area RSEG    (ABS,DATA)
      000000                        113 	.org 0x0000
                           000080   114 _P0	=	0x0080
                           000081   115 _SP	=	0x0081
                           000082   116 _DPL	=	0x0082
                           000083   117 _DPH	=	0x0083
                           000087   118 _PCON	=	0x0087
                           000088   119 _TCON	=	0x0088
                           000089   120 _TMOD	=	0x0089
                           00008A   121 _TL0	=	0x008a
                           00008B   122 _TL1	=	0x008b
                           00008C   123 _TH0	=	0x008c
                           00008D   124 _TH1	=	0x008d
                           000090   125 _P1	=	0x0090
                           000098   126 _SCON	=	0x0098
                           000099   127 _SBUF	=	0x0099
                           0000A0   128 _P2	=	0x00a0
                           0000A8   129 _IE	=	0x00a8
                           0000B0   130 _P3	=	0x00b0
                           0000B8   131 _IP	=	0x00b8
                           0000D0   132 _PSW	=	0x00d0
                           0000E0   133 _ACC	=	0x00e0
                           0000F0   134 _B	=	0x00f0
                                    135 ;--------------------------------------------------------
                                    136 ; special function bits
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0_0	=	0x0080
                           000081   141 _P0_1	=	0x0081
                           000082   142 _P0_2	=	0x0082
                           000083   143 _P0_3	=	0x0083
                           000084   144 _P0_4	=	0x0084
                           000085   145 _P0_5	=	0x0085
                           000086   146 _P0_6	=	0x0086
                           000087   147 _P0_7	=	0x0087
                           000088   148 _IT0	=	0x0088
                           000089   149 _IE0	=	0x0089
                           00008A   150 _IT1	=	0x008a
                           00008B   151 _IE1	=	0x008b
                           00008C   152 _TR0	=	0x008c
                           00008D   153 _TF0	=	0x008d
                           00008E   154 _TR1	=	0x008e
                           00008F   155 _TF1	=	0x008f
                           000090   156 _P1_0	=	0x0090
                           000091   157 _P1_1	=	0x0091
                           000092   158 _P1_2	=	0x0092
                           000093   159 _P1_3	=	0x0093
                           000094   160 _P1_4	=	0x0094
                           000095   161 _P1_5	=	0x0095
                           000096   162 _P1_6	=	0x0096
                           000097   163 _P1_7	=	0x0097
                           000098   164 _RI	=	0x0098
                           000099   165 _TI	=	0x0099
                           00009A   166 _RB8	=	0x009a
                           00009B   167 _TB8	=	0x009b
                           00009C   168 _REN	=	0x009c
                           00009D   169 _SM2	=	0x009d
                           00009E   170 _SM1	=	0x009e
                           00009F   171 _SM0	=	0x009f
                           0000A0   172 _P2_0	=	0x00a0
                           0000A1   173 _P2_1	=	0x00a1
                           0000A2   174 _P2_2	=	0x00a2
                           0000A3   175 _P2_3	=	0x00a3
                           0000A4   176 _P2_4	=	0x00a4
                           0000A5   177 _P2_5	=	0x00a5
                           0000A6   178 _P2_6	=	0x00a6
                           0000A7   179 _P2_7	=	0x00a7
                           0000A8   180 _EX0	=	0x00a8
                           0000A9   181 _ET0	=	0x00a9
                           0000AA   182 _EX1	=	0x00aa
                           0000AB   183 _ET1	=	0x00ab
                           0000AC   184 _ES	=	0x00ac
                           0000AF   185 _EA	=	0x00af
                           0000B0   186 _P3_0	=	0x00b0
                           0000B1   187 _P3_1	=	0x00b1
                           0000B2   188 _P3_2	=	0x00b2
                           0000B3   189 _P3_3	=	0x00b3
                           0000B4   190 _P3_4	=	0x00b4
                           0000B5   191 _P3_5	=	0x00b5
                           0000B6   192 _P3_6	=	0x00b6
                           0000B7   193 _P3_7	=	0x00b7
                           0000B0   194 _RXD	=	0x00b0
                           0000B1   195 _TXD	=	0x00b1
                           0000B2   196 _INT0	=	0x00b2
                           0000B3   197 _INT1	=	0x00b3
                           0000B4   198 _T0	=	0x00b4
                           0000B5   199 _T1	=	0x00b5
                           0000B6   200 _WR	=	0x00b6
                           0000B7   201 _RD	=	0x00b7
                           0000B8   202 _PX0	=	0x00b8
                           0000B9   203 _PT0	=	0x00b9
                           0000BA   204 _PX1	=	0x00ba
                           0000BB   205 _PT1	=	0x00bb
                           0000BC   206 _PS	=	0x00bc
                           0000D0   207 _P	=	0x00d0
                           0000D1   208 _F1	=	0x00d1
                           0000D2   209 _OV	=	0x00d2
                           0000D3   210 _RS0	=	0x00d3
                           0000D4   211 _RS1	=	0x00d4
                           0000D5   212 _F0	=	0x00d5
                           0000D6   213 _AC	=	0x00d6
                           0000D7   214 _CY	=	0x00d7
                                    215 ;--------------------------------------------------------
                                    216 ; overlayable register banks
                                    217 ;--------------------------------------------------------
                                    218 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        219 	.ds 8
                                    220 ;--------------------------------------------------------
                                    221 ; internal ram data
                                    222 ;--------------------------------------------------------
                                    223 	.area DSEG    (DATA)
      000008                        224 _main_numbers_10000_13:
      000008                        225 	.ds 10
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable items in internal ram
                                    228 ;--------------------------------------------------------
                                    229 	.area	OSEG    (OVR,DATA)
      000012                        230 _keyPressed_numbers_10000_1:
      000012                        231 	.ds 10
                                    232 ;--------------------------------------------------------
                                    233 ; Stack segment in internal ram
                                    234 ;--------------------------------------------------------
                                    235 	.area SSEG
      00001C                        236 __start__stack:
      00001C                        237 	.ds	1
                                    238 
                                    239 ;--------------------------------------------------------
                                    240 ; indirectly addressable internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area ISEG    (DATA)
                                    243 ;--------------------------------------------------------
                                    244 ; absolute internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area IABS    (ABS,DATA)
                                    247 	.area IABS    (ABS,DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; bit data
                                    250 ;--------------------------------------------------------
                                    251 	.area BSEG    (BIT)
                                    252 ;--------------------------------------------------------
                                    253 ; paged external ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area PSEG    (PAG,XDATA)
                                    256 ;--------------------------------------------------------
                                    257 ; uninitialized external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XSEG    (XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; absolute external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XABS    (ABS,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; initialized external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XISEG   (XDATA)
                                    268 	.area HOME    (CODE)
                                    269 	.area GSINIT0 (CODE)
                                    270 	.area GSINIT1 (CODE)
                                    271 	.area GSINIT2 (CODE)
                                    272 	.area GSINIT3 (CODE)
                                    273 	.area GSINIT4 (CODE)
                                    274 	.area GSINIT5 (CODE)
                                    275 	.area GSINIT  (CODE)
                                    276 	.area GSFINAL (CODE)
                                    277 	.area CSEG    (CODE)
                                    278 ;--------------------------------------------------------
                                    279 ; interrupt vector
                                    280 ;--------------------------------------------------------
                                    281 	.area HOME    (CODE)
      000000                        282 __interrupt_vect:
      000000 02 00 06         [24]  283 	ljmp	__sdcc_gsinit_startup
                                    284 ;--------------------------------------------------------
                                    285 ; global & static initialisations
                                    286 ;--------------------------------------------------------
                                    287 	.area HOME    (CODE)
                                    288 	.area GSINIT  (CODE)
                                    289 	.area GSFINAL (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 	.globl __sdcc_gsinit_startup
                                    292 	.globl __sdcc_program_startup
                                    293 	.globl __start__stack
                                    294 	.globl __mcs51_genXINIT
                                    295 	.globl __mcs51_genXRAMCLEAR
                                    296 	.globl __mcs51_genRAMCLEAR
                                    297 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  298 	ljmp	__sdcc_program_startup
                                    299 ;--------------------------------------------------------
                                    300 ; Home
                                    301 ;--------------------------------------------------------
                                    302 	.area HOME    (CODE)
                                    303 	.area HOME    (CODE)
      000003                        304 __sdcc_program_startup:
      000003 02 00 C7         [24]  305 	ljmp	_main
                                    306 ;	return from main will return to caller
                                    307 ;--------------------------------------------------------
                                    308 ; code
                                    309 ;--------------------------------------------------------
                                    310 	.area CSEG    (CODE)
                                    311 ;------------------------------------------------------------
                                    312 ;Allocation info for local variables in function 'keyPressed'
                                    313 ;------------------------------------------------------------
                                    314 ;numbers                   Allocated with name '_keyPressed_numbers_10000_1'
                                    315 ;number                    Allocated to registers r7 
                                    316 ;------------------------------------------------------------
                                    317 ;	.\keypad2.c:3: char keyPressed() {
                                    318 ;	-----------------------------------------
                                    319 ;	 function keyPressed
                                    320 ;	-----------------------------------------
      000062                        321 _keyPressed:
                           000007   322 	ar7 = 0x07
                           000006   323 	ar6 = 0x06
                           000005   324 	ar5 = 0x05
                           000004   325 	ar4 = 0x04
                           000003   326 	ar3 = 0x03
                           000002   327 	ar2 = 0x02
                           000001   328 	ar1 = 0x01
                           000000   329 	ar0 = 0x00
                                    330 ;	.\keypad2.c:5: numbers[0] = 0b11000000;
      000062 75 12 C0         [24]  331 	mov	_keyPressed_numbers_10000_1,#0xc0
                                    332 ;	.\keypad2.c:6: numbers[1] = 0b11111001;
      000065 75 13 F9         [24]  333 	mov	(_keyPressed_numbers_10000_1 + 0x0001),#0xf9
                                    334 ;	.\keypad2.c:7: numbers[2] = 0b10100100;
      000068 75 14 A4         [24]  335 	mov	(_keyPressed_numbers_10000_1 + 0x0002),#0xa4
                                    336 ;	.\keypad2.c:8: numbers[3] = 0b10110000;
      00006B 75 15 B0         [24]  337 	mov	(_keyPressed_numbers_10000_1 + 0x0003),#0xb0
                                    338 ;	.\keypad2.c:9: numbers[4] = 0b10011001;
      00006E 75 16 99         [24]  339 	mov	(_keyPressed_numbers_10000_1 + 0x0004),#0x99
                                    340 ;	.\keypad2.c:10: numbers[5] = 0b10010010;
      000071 75 17 92         [24]  341 	mov	(_keyPressed_numbers_10000_1 + 0x0005),#0x92
                                    342 ;	.\keypad2.c:11: numbers[6] = 0b10000010;
      000074 75 18 82         [24]  343 	mov	(_keyPressed_numbers_10000_1 + 0x0006),#0x82
                                    344 ;	.\keypad2.c:12: numbers[7] = 0b11111000;
      000077 75 19 F8         [24]  345 	mov	(_keyPressed_numbers_10000_1 + 0x0007),#0xf8
                                    346 ;	.\keypad2.c:13: numbers[8] = 0b10000000;
      00007A 75 1A 80         [24]  347 	mov	(_keyPressed_numbers_10000_1 + 0x0008),#0x80
                                    348 ;	.\keypad2.c:14: numbers[9] = 0b10011000;
      00007D 75 1B 98         [24]  349 	mov	(_keyPressed_numbers_10000_1 + 0x0009),#0x98
                                    350 ;	.\keypad2.c:15: char number = numbers[0];
      000080 AF 12            [24]  351 	mov	r7,_keyPressed_numbers_10000_1
                                    352 ;	.\keypad2.c:18: P0 = 0b11111101;
      000082 75 80 FD         [24]  353 	mov	_P0,#0xfd
                                    354 ;	.\keypad2.c:19: if(P0_4 == 0) {
      000085 20 84 04         [24]  355 	jb	_P0_4,00107$
                                    356 ;	.\keypad2.c:20: number = numbers[9];
      000088 AF 1B            [24]  357 	mov	r7,(_keyPressed_numbers_10000_1 + 0x0009)
      00008A 80 0C            [24]  358 	sjmp	00108$
      00008C                        359 00107$:
                                    360 ;	.\keypad2.c:21: } else if(P0_5 == 0) {
      00008C 20 85 04         [24]  361 	jb	_P0_5,00104$
                                    362 ;	.\keypad2.c:22: number = numbers[8];
      00008F AF 1A            [24]  363 	mov	r7,(_keyPressed_numbers_10000_1 + 0x0008)
      000091 80 05            [24]  364 	sjmp	00108$
      000093                        365 00104$:
                                    366 ;	.\keypad2.c:23: } else if(P0_6 == 0) {
      000093 20 86 02         [24]  367 	jb	_P0_6,00108$
                                    368 ;	.\keypad2.c:24: number = numbers[7];
      000096 AF 19            [24]  369 	mov	r7,(_keyPressed_numbers_10000_1 + 0x0007)
      000098                        370 00108$:
                                    371 ;	.\keypad2.c:26: P0 = 0b11111011;
      000098 75 80 FB         [24]  372 	mov	_P0,#0xfb
                                    373 ;	.\keypad2.c:27: if(P0_4 == 0) {
      00009B 20 84 04         [24]  374 	jb	_P0_4,00115$
                                    375 ;	.\keypad2.c:28: number = numbers[6];
      00009E AF 18            [24]  376 	mov	r7,(_keyPressed_numbers_10000_1 + 0x0006)
      0000A0 80 0C            [24]  377 	sjmp	00116$
      0000A2                        378 00115$:
                                    379 ;	.\keypad2.c:29: } else if(P0_5 == 0) {
      0000A2 20 85 04         [24]  380 	jb	_P0_5,00112$
                                    381 ;	.\keypad2.c:30: number = numbers[5];
      0000A5 AF 17            [24]  382 	mov	r7,(_keyPressed_numbers_10000_1 + 0x0005)
      0000A7 80 05            [24]  383 	sjmp	00116$
      0000A9                        384 00112$:
                                    385 ;	.\keypad2.c:31: } else if(P0_6 == 0) {
      0000A9 20 86 02         [24]  386 	jb	_P0_6,00116$
                                    387 ;	.\keypad2.c:32: number = numbers[4];
      0000AC AF 16            [24]  388 	mov	r7,(_keyPressed_numbers_10000_1 + 0x0004)
      0000AE                        389 00116$:
                                    390 ;	.\keypad2.c:35: P0 = 0b11110111;
      0000AE 75 80 F7         [24]  391 	mov	_P0,#0xf7
                                    392 ;	.\keypad2.c:36: if(P0_4 == 0) {
      0000B1 20 84 04         [24]  393 	jb	_P0_4,00123$
                                    394 ;	.\keypad2.c:37: number = numbers[3];
      0000B4 AF 15            [24]  395 	mov	r7,(_keyPressed_numbers_10000_1 + 0x0003)
      0000B6 80 0C            [24]  396 	sjmp	00124$
      0000B8                        397 00123$:
                                    398 ;	.\keypad2.c:38: } else if(P0_5 == 0) {
      0000B8 20 85 04         [24]  399 	jb	_P0_5,00120$
                                    400 ;	.\keypad2.c:39: number = numbers[2];
      0000BB AF 14            [24]  401 	mov	r7,(_keyPressed_numbers_10000_1 + 0x0002)
      0000BD 80 05            [24]  402 	sjmp	00124$
      0000BF                        403 00120$:
                                    404 ;	.\keypad2.c:40: } else if(P0_6 == 0) {
      0000BF 20 86 02         [24]  405 	jb	_P0_6,00124$
                                    406 ;	.\keypad2.c:41: number = numbers[1];
      0000C2 AF 13            [24]  407 	mov	r7,(_keyPressed_numbers_10000_1 + 0x0001)
      0000C4                        408 00124$:
                                    409 ;	.\keypad2.c:44: return number;
      0000C4 8F 82            [24]  410 	mov	dpl, r7
                                    411 ;	.\keypad2.c:45: }
      0000C6 22               [24]  412 	ret
                                    413 ;------------------------------------------------------------
                                    414 ;Allocation info for local variables in function 'main'
                                    415 ;------------------------------------------------------------
                                    416 ;numbers                   Allocated with name '_main_numbers_10000_13'
                                    417 ;number                    Allocated to registers 
                                    418 ;first                     Allocated to registers r6 
                                    419 ;second                    Allocated to registers r5 
                                    420 ;third                     Allocated to registers r4 
                                    421 ;fourth                    Allocated to registers r3 
                                    422 ;i                         Allocated to registers r7 
                                    423 ;i                         Allocated to registers r7 
                                    424 ;i                         Allocated to registers r7 
                                    425 ;i                         Allocated to registers r7 
                                    426 ;------------------------------------------------------------
                                    427 ;	.\keypad2.c:47: int main(void) {
                                    428 ;	-----------------------------------------
                                    429 ;	 function main
                                    430 ;	-----------------------------------------
      0000C7                        431 _main:
                                    432 ;	.\keypad2.c:50: numbers[0] = 0b11000000;
      0000C7 75 08 C0         [24]  433 	mov	_main_numbers_10000_13,#0xc0
                                    434 ;	.\keypad2.c:51: numbers[1] = 0b11111001;
      0000CA 75 09 F9         [24]  435 	mov	(_main_numbers_10000_13 + 0x0001),#0xf9
                                    436 ;	.\keypad2.c:52: numbers[2] = 0b10100100;
      0000CD 75 0A A4         [24]  437 	mov	(_main_numbers_10000_13 + 0x0002),#0xa4
                                    438 ;	.\keypad2.c:53: numbers[3] = 0b10110000;
      0000D0 75 0B B0         [24]  439 	mov	(_main_numbers_10000_13 + 0x0003),#0xb0
                                    440 ;	.\keypad2.c:54: numbers[4] = 0b10011001;
      0000D3 75 0C 99         [24]  441 	mov	(_main_numbers_10000_13 + 0x0004),#0x99
                                    442 ;	.\keypad2.c:55: numbers[5] = 0b10010010;
      0000D6 75 0D 92         [24]  443 	mov	(_main_numbers_10000_13 + 0x0005),#0x92
                                    444 ;	.\keypad2.c:56: numbers[6] = 0b10000010;
      0000D9 75 0E 82         [24]  445 	mov	(_main_numbers_10000_13 + 0x0006),#0x82
                                    446 ;	.\keypad2.c:57: numbers[7] = 0b11111000;
      0000DC 75 0F F8         [24]  447 	mov	(_main_numbers_10000_13 + 0x0007),#0xf8
                                    448 ;	.\keypad2.c:58: numbers[8] = 0b10000000;
      0000DF 75 10 80         [24]  449 	mov	(_main_numbers_10000_13 + 0x0008),#0x80
                                    450 ;	.\keypad2.c:59: numbers[9] = 0b10011000;
      0000E2 75 11 98         [24]  451 	mov	(_main_numbers_10000_13 + 0x0009),#0x98
                                    452 ;	.\keypad2.c:62: while((first = keyPressed()) == 0b11000000) ;
      0000E5                        453 00101$:
      0000E5 12 00 62         [24]  454 	lcall	_keyPressed
      0000E8 AF 82            [24]  455 	mov	r7, dpl
      0000EA 8F 06            [24]  456 	mov	ar6,r7
      0000EC BF C0 02         [24]  457 	cjne	r7,#0xc0,00242$
      0000EF 80 F4            [24]  458 	sjmp	00101$
      0000F1                        459 00242$:
                                    460 ;	.\keypad2.c:63: while(keyPressed() != 0b11000000) ;
      0000F1                        461 00104$:
      0000F1 C0 06            [24]  462 	push	ar6
      0000F3 12 00 62         [24]  463 	lcall	_keyPressed
      0000F6 AF 82            [24]  464 	mov	r7, dpl
      0000F8 D0 06            [24]  465 	pop	ar6
      0000FA BF C0 F4         [24]  466 	cjne	r7,#0xc0,00104$
                                    467 ;	.\keypad2.c:65: while((second = keyPressed()) == 0b11000000) ;
      0000FD                        468 00107$:
      0000FD C0 06            [24]  469 	push	ar6
      0000FF 12 00 62         [24]  470 	lcall	_keyPressed
      000102 AF 82            [24]  471 	mov	r7, dpl
      000104 D0 06            [24]  472 	pop	ar6
      000106 8F 05            [24]  473 	mov	ar5,r7
      000108 BF C0 02         [24]  474 	cjne	r7,#0xc0,00245$
      00010B 80 F0            [24]  475 	sjmp	00107$
      00010D                        476 00245$:
                                    477 ;	.\keypad2.c:66: while(keyPressed() != 0b11000000) ;
      00010D                        478 00110$:
      00010D C0 06            [24]  479 	push	ar6
      00010F C0 05            [24]  480 	push	ar5
      000111 12 00 62         [24]  481 	lcall	_keyPressed
      000114 AF 82            [24]  482 	mov	r7, dpl
      000116 D0 05            [24]  483 	pop	ar5
      000118 D0 06            [24]  484 	pop	ar6
      00011A BF C0 F0         [24]  485 	cjne	r7,#0xc0,00110$
                                    486 ;	.\keypad2.c:68: while((third = keyPressed()) == 0b11000000) ;
      00011D                        487 00113$:
      00011D C0 06            [24]  488 	push	ar6
      00011F C0 05            [24]  489 	push	ar5
      000121 12 00 62         [24]  490 	lcall	_keyPressed
      000124 AF 82            [24]  491 	mov	r7, dpl
      000126 D0 05            [24]  492 	pop	ar5
      000128 D0 06            [24]  493 	pop	ar6
      00012A 8F 04            [24]  494 	mov	ar4,r7
      00012C BF C0 02         [24]  495 	cjne	r7,#0xc0,00248$
      00012F 80 EC            [24]  496 	sjmp	00113$
      000131                        497 00248$:
                                    498 ;	.\keypad2.c:69: while(keyPressed() != 0b11000000) ;
      000131                        499 00116$:
      000131 C0 06            [24]  500 	push	ar6
      000133 C0 05            [24]  501 	push	ar5
      000135 C0 04            [24]  502 	push	ar4
      000137 12 00 62         [24]  503 	lcall	_keyPressed
      00013A AF 82            [24]  504 	mov	r7, dpl
      00013C D0 04            [24]  505 	pop	ar4
      00013E D0 05            [24]  506 	pop	ar5
      000140 D0 06            [24]  507 	pop	ar6
      000142 BF C0 EC         [24]  508 	cjne	r7,#0xc0,00116$
                                    509 ;	.\keypad2.c:71: while((fourth = keyPressed()) == 0b11000000) ;
      000145                        510 00119$:
      000145 C0 06            [24]  511 	push	ar6
      000147 C0 05            [24]  512 	push	ar5
      000149 C0 04            [24]  513 	push	ar4
      00014B 12 00 62         [24]  514 	lcall	_keyPressed
      00014E AF 82            [24]  515 	mov	r7, dpl
      000150 D0 04            [24]  516 	pop	ar4
      000152 D0 05            [24]  517 	pop	ar5
      000154 D0 06            [24]  518 	pop	ar6
      000156 8F 03            [24]  519 	mov	ar3,r7
      000158 BF C0 02         [24]  520 	cjne	r7,#0xc0,00251$
      00015B 80 E8            [24]  521 	sjmp	00119$
      00015D                        522 00251$:
                                    523 ;	.\keypad2.c:72: while(1) {
      00015D                        524 00127$:
                                    525 ;	.\keypad2.c:73: P0_7 = 0;
                                    526 ;	assignBit
      00015D C2 87            [12]  527 	clr	_P0_7
                                    528 ;	.\keypad2.c:74: P3_3 = 0;
                                    529 ;	assignBit
      00015F C2 B3            [12]  530 	clr	_P3_3
                                    531 ;	.\keypad2.c:75: P3_4 = 0;
                                    532 ;	assignBit
      000161 C2 B4            [12]  533 	clr	_P3_4
                                    534 ;	.\keypad2.c:76: P0_7 = 1;
                                    535 ;	assignBit
      000163 D2 87            [12]  536 	setb	_P0_7
                                    537 ;	.\keypad2.c:77: P1 = fourth;
      000165 8B 90            [24]  538 	mov	_P1,r3
                                    539 ;	.\keypad2.c:78: for(int i = 0; i < 5; i++) ;
      000167 7F 00            [12]  540 	mov	r7,#0x00
      000169                        541 00130$:
      000169 BF 05 00         [24]  542 	cjne	r7,#0x05,00252$
      00016C                        543 00252$:
      00016C 50 03            [24]  544 	jnc	00122$
      00016E 0F               [12]  545 	inc	r7
      00016F 80 F8            [24]  546 	sjmp	00130$
      000171                        547 00122$:
                                    548 ;	.\keypad2.c:80: P0_7 = 0;
                                    549 ;	assignBit
      000171 C2 87            [12]  550 	clr	_P0_7
                                    551 ;	.\keypad2.c:81: P3_3 = 1;
                                    552 ;	assignBit
      000173 D2 B3            [12]  553 	setb	_P3_3
                                    554 ;	.\keypad2.c:82: P3_4 = 0;
                                    555 ;	assignBit
      000175 C2 B4            [12]  556 	clr	_P3_4
                                    557 ;	.\keypad2.c:83: P0_7 = 1;
                                    558 ;	assignBit
      000177 D2 87            [12]  559 	setb	_P0_7
                                    560 ;	.\keypad2.c:84: P1 = third;
      000179 8C 90            [24]  561 	mov	_P1,r4
                                    562 ;	.\keypad2.c:85: for(int i = 0; i < 5; i++) ;
      00017B 7F 00            [12]  563 	mov	r7,#0x00
      00017D                        564 00133$:
      00017D BF 05 00         [24]  565 	cjne	r7,#0x05,00254$
      000180                        566 00254$:
      000180 50 03            [24]  567 	jnc	00123$
      000182 0F               [12]  568 	inc	r7
      000183 80 F8            [24]  569 	sjmp	00133$
      000185                        570 00123$:
                                    571 ;	.\keypad2.c:87: P0_7 = 0;
                                    572 ;	assignBit
      000185 C2 87            [12]  573 	clr	_P0_7
                                    574 ;	.\keypad2.c:88: P3_3 = 0;
                                    575 ;	assignBit
      000187 C2 B3            [12]  576 	clr	_P3_3
                                    577 ;	.\keypad2.c:89: P3_4 = 1;
                                    578 ;	assignBit
      000189 D2 B4            [12]  579 	setb	_P3_4
                                    580 ;	.\keypad2.c:90: P0_7 = 1;
                                    581 ;	assignBit
      00018B D2 87            [12]  582 	setb	_P0_7
                                    583 ;	.\keypad2.c:91: P1 = second;
      00018D 8D 90            [24]  584 	mov	_P1,r5
                                    585 ;	.\keypad2.c:92: for(int i = 0; i < 5; i++) ;
      00018F 7F 00            [12]  586 	mov	r7,#0x00
      000191                        587 00136$:
      000191 BF 05 00         [24]  588 	cjne	r7,#0x05,00256$
      000194                        589 00256$:
      000194 50 03            [24]  590 	jnc	00124$
      000196 0F               [12]  591 	inc	r7
      000197 80 F8            [24]  592 	sjmp	00136$
      000199                        593 00124$:
                                    594 ;	.\keypad2.c:94: P0_7 = 0;
                                    595 ;	assignBit
      000199 C2 87            [12]  596 	clr	_P0_7
                                    597 ;	.\keypad2.c:95: P3_3 = 1;
                                    598 ;	assignBit
      00019B D2 B3            [12]  599 	setb	_P3_3
                                    600 ;	.\keypad2.c:96: P3_4 = 1;
                                    601 ;	assignBit
      00019D D2 B4            [12]  602 	setb	_P3_4
                                    603 ;	.\keypad2.c:97: P0_7 = 1;
                                    604 ;	assignBit
      00019F D2 87            [12]  605 	setb	_P0_7
                                    606 ;	.\keypad2.c:98: P1 = first;
      0001A1 8E 90            [24]  607 	mov	_P1,r6
                                    608 ;	.\keypad2.c:99: for(int i = 0; i < 5; i++) ;
      0001A3 7F 00            [12]  609 	mov	r7,#0x00
      0001A5                        610 00139$:
      0001A5 BF 05 00         [24]  611 	cjne	r7,#0x05,00258$
      0001A8                        612 00258$:
      0001A8 50 B3            [24]  613 	jnc	00127$
      0001AA 0F               [12]  614 	inc	r7
                                    615 ;	.\keypad2.c:101: }
      0001AB 80 F8            [24]  616 	sjmp	00139$
                                    617 	.area CSEG    (CODE)
                                    618 	.area CONST   (CODE)
                                    619 	.area XINIT   (CODE)
                                    620 	.area CABS    (ABS,CODE)
