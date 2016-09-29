                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Thu Sep 29 13:34:06 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module LEDSHU
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _TF2
                                     13 	.globl _EXF2
                                     14 	.globl _RCLK
                                     15 	.globl _TCLK
                                     16 	.globl _EXEN2
                                     17 	.globl _TR2
                                     18 	.globl _C_T2
                                     19 	.globl _CP_RL2
                                     20 	.globl _T2CON_7
                                     21 	.globl _T2CON_6
                                     22 	.globl _T2CON_5
                                     23 	.globl _T2CON_4
                                     24 	.globl _T2CON_3
                                     25 	.globl _T2CON_2
                                     26 	.globl _T2CON_1
                                     27 	.globl _T2CON_0
                                     28 	.globl _PT2
                                     29 	.globl _ET2
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _PS
                                     39 	.globl _PT1
                                     40 	.globl _PX1
                                     41 	.globl _PT0
                                     42 	.globl _PX0
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _EA
                                     60 	.globl _ES
                                     61 	.globl _ET1
                                     62 	.globl _EX1
                                     63 	.globl _ET0
                                     64 	.globl _EX0
                                     65 	.globl _P2_7
                                     66 	.globl _P2_6
                                     67 	.globl _P2_5
                                     68 	.globl _P2_4
                                     69 	.globl _P2_3
                                     70 	.globl _P2_2
                                     71 	.globl _P2_1
                                     72 	.globl _P2_0
                                     73 	.globl _SM0
                                     74 	.globl _SM1
                                     75 	.globl _SM2
                                     76 	.globl _REN
                                     77 	.globl _TB8
                                     78 	.globl _RB8
                                     79 	.globl _TI
                                     80 	.globl _RI
                                     81 	.globl _P1_7
                                     82 	.globl _P1_6
                                     83 	.globl _P1_5
                                     84 	.globl _P1_4
                                     85 	.globl _P1_3
                                     86 	.globl _P1_2
                                     87 	.globl _P1_1
                                     88 	.globl _P1_0
                                     89 	.globl _TF1
                                     90 	.globl _TR1
                                     91 	.globl _TF0
                                     92 	.globl _TR0
                                     93 	.globl _IE1
                                     94 	.globl _IT1
                                     95 	.globl _IE0
                                     96 	.globl _IT0
                                     97 	.globl _P0_7
                                     98 	.globl _P0_6
                                     99 	.globl _P0_5
                                    100 	.globl _P0_4
                                    101 	.globl _P0_3
                                    102 	.globl _P0_2
                                    103 	.globl _P0_1
                                    104 	.globl _P0_0
                                    105 	.globl _TH2
                                    106 	.globl _TL2
                                    107 	.globl _RCAP2H
                                    108 	.globl _RCAP2L
                                    109 	.globl _T2CON
                                    110 	.globl _B
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _IP
                                    114 	.globl _P3
                                    115 	.globl _IE
                                    116 	.globl _P2
                                    117 	.globl _SBUF
                                    118 	.globl _SCON
                                    119 	.globl _P1
                                    120 	.globl _TH1
                                    121 	.globl _TH0
                                    122 	.globl _TL1
                                    123 	.globl _TL0
                                    124 	.globl _TMOD
                                    125 	.globl _TCON
                                    126 	.globl _PCON
                                    127 	.globl _DPH
                                    128 	.globl _DPL
                                    129 	.globl _SP
                                    130 	.globl _P0
                                    131 	.globl _LedChar
                                    132 	.globl _updateLedShu
                                    133 ;--------------------------------------------------------
                                    134 ; special function registers
                                    135 ;--------------------------------------------------------
                                    136 	.area RSEG    (ABS,DATA)
      000000                        137 	.org 0x0000
                           000080   138 _P0	=	0x0080
                           000081   139 _SP	=	0x0081
                           000082   140 _DPL	=	0x0082
                           000083   141 _DPH	=	0x0083
                           000087   142 _PCON	=	0x0087
                           000088   143 _TCON	=	0x0088
                           000089   144 _TMOD	=	0x0089
                           00008A   145 _TL0	=	0x008a
                           00008B   146 _TL1	=	0x008b
                           00008C   147 _TH0	=	0x008c
                           00008D   148 _TH1	=	0x008d
                           000090   149 _P1	=	0x0090
                           000098   150 _SCON	=	0x0098
                           000099   151 _SBUF	=	0x0099
                           0000A0   152 _P2	=	0x00a0
                           0000A8   153 _IE	=	0x00a8
                           0000B0   154 _P3	=	0x00b0
                           0000B8   155 _IP	=	0x00b8
                           0000D0   156 _PSW	=	0x00d0
                           0000E0   157 _ACC	=	0x00e0
                           0000F0   158 _B	=	0x00f0
                           0000C8   159 _T2CON	=	0x00c8
                           0000CA   160 _RCAP2L	=	0x00ca
                           0000CB   161 _RCAP2H	=	0x00cb
                           0000CC   162 _TL2	=	0x00cc
                           0000CD   163 _TH2	=	0x00cd
                                    164 ;--------------------------------------------------------
                                    165 ; special function bits
                                    166 ;--------------------------------------------------------
                                    167 	.area RSEG    (ABS,DATA)
      000000                        168 	.org 0x0000
                           000080   169 _P0_0	=	0x0080
                           000081   170 _P0_1	=	0x0081
                           000082   171 _P0_2	=	0x0082
                           000083   172 _P0_3	=	0x0083
                           000084   173 _P0_4	=	0x0084
                           000085   174 _P0_5	=	0x0085
                           000086   175 _P0_6	=	0x0086
                           000087   176 _P0_7	=	0x0087
                           000088   177 _IT0	=	0x0088
                           000089   178 _IE0	=	0x0089
                           00008A   179 _IT1	=	0x008a
                           00008B   180 _IE1	=	0x008b
                           00008C   181 _TR0	=	0x008c
                           00008D   182 _TF0	=	0x008d
                           00008E   183 _TR1	=	0x008e
                           00008F   184 _TF1	=	0x008f
                           000090   185 _P1_0	=	0x0090
                           000091   186 _P1_1	=	0x0091
                           000092   187 _P1_2	=	0x0092
                           000093   188 _P1_3	=	0x0093
                           000094   189 _P1_4	=	0x0094
                           000095   190 _P1_5	=	0x0095
                           000096   191 _P1_6	=	0x0096
                           000097   192 _P1_7	=	0x0097
                           000098   193 _RI	=	0x0098
                           000099   194 _TI	=	0x0099
                           00009A   195 _RB8	=	0x009a
                           00009B   196 _TB8	=	0x009b
                           00009C   197 _REN	=	0x009c
                           00009D   198 _SM2	=	0x009d
                           00009E   199 _SM1	=	0x009e
                           00009F   200 _SM0	=	0x009f
                           0000A0   201 _P2_0	=	0x00a0
                           0000A1   202 _P2_1	=	0x00a1
                           0000A2   203 _P2_2	=	0x00a2
                           0000A3   204 _P2_3	=	0x00a3
                           0000A4   205 _P2_4	=	0x00a4
                           0000A5   206 _P2_5	=	0x00a5
                           0000A6   207 _P2_6	=	0x00a6
                           0000A7   208 _P2_7	=	0x00a7
                           0000A8   209 _EX0	=	0x00a8
                           0000A9   210 _ET0	=	0x00a9
                           0000AA   211 _EX1	=	0x00aa
                           0000AB   212 _ET1	=	0x00ab
                           0000AC   213 _ES	=	0x00ac
                           0000AF   214 _EA	=	0x00af
                           0000B0   215 _P3_0	=	0x00b0
                           0000B1   216 _P3_1	=	0x00b1
                           0000B2   217 _P3_2	=	0x00b2
                           0000B3   218 _P3_3	=	0x00b3
                           0000B4   219 _P3_4	=	0x00b4
                           0000B5   220 _P3_5	=	0x00b5
                           0000B6   221 _P3_6	=	0x00b6
                           0000B7   222 _P3_7	=	0x00b7
                           0000B0   223 _RXD	=	0x00b0
                           0000B1   224 _TXD	=	0x00b1
                           0000B2   225 _INT0	=	0x00b2
                           0000B3   226 _INT1	=	0x00b3
                           0000B4   227 _T0	=	0x00b4
                           0000B5   228 _T1	=	0x00b5
                           0000B6   229 _WR	=	0x00b6
                           0000B7   230 _RD	=	0x00b7
                           0000B8   231 _PX0	=	0x00b8
                           0000B9   232 _PT0	=	0x00b9
                           0000BA   233 _PX1	=	0x00ba
                           0000BB   234 _PT1	=	0x00bb
                           0000BC   235 _PS	=	0x00bc
                           0000D0   236 _P	=	0x00d0
                           0000D1   237 _F1	=	0x00d1
                           0000D2   238 _OV	=	0x00d2
                           0000D3   239 _RS0	=	0x00d3
                           0000D4   240 _RS1	=	0x00d4
                           0000D5   241 _F0	=	0x00d5
                           0000D6   242 _AC	=	0x00d6
                           0000D7   243 _CY	=	0x00d7
                           0000AD   244 _ET2	=	0x00ad
                           0000BD   245 _PT2	=	0x00bd
                           0000C8   246 _T2CON_0	=	0x00c8
                           0000C9   247 _T2CON_1	=	0x00c9
                           0000CA   248 _T2CON_2	=	0x00ca
                           0000CB   249 _T2CON_3	=	0x00cb
                           0000CC   250 _T2CON_4	=	0x00cc
                           0000CD   251 _T2CON_5	=	0x00cd
                           0000CE   252 _T2CON_6	=	0x00ce
                           0000CF   253 _T2CON_7	=	0x00cf
                           0000C8   254 _CP_RL2	=	0x00c8
                           0000C9   255 _C_T2	=	0x00c9
                           0000CA   256 _TR2	=	0x00ca
                           0000CB   257 _EXEN2	=	0x00cb
                           0000CC   258 _TCLK	=	0x00cc
                           0000CD   259 _RCLK	=	0x00cd
                           0000CE   260 _EXF2	=	0x00ce
                           0000CF   261 _TF2	=	0x00cf
                                    262 ;--------------------------------------------------------
                                    263 ; overlayable register banks
                                    264 ;--------------------------------------------------------
                                    265 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        266 	.ds 8
                                    267 ;--------------------------------------------------------
                                    268 ; internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area DSEG    (DATA)
      000009                        271 _updateLedShu_ledShuNum_1_3:
      000009                        272 	.ds 1
                                    273 ;--------------------------------------------------------
                                    274 ; overlayable items in internal ram 
                                    275 ;--------------------------------------------------------
                                    276 	.area	OSEG    (OVR,DATA)
                                    277 ;--------------------------------------------------------
                                    278 ; indirectly addressable internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area ISEG    (DATA)
                                    281 ;--------------------------------------------------------
                                    282 ; absolute internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area IABS    (ABS,DATA)
                                    285 	.area IABS    (ABS,DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; bit data
                                    288 ;--------------------------------------------------------
                                    289 	.area BSEG    (BIT)
                                    290 ;--------------------------------------------------------
                                    291 ; paged external ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area PSEG    (PAG,XDATA)
                                    294 ;--------------------------------------------------------
                                    295 ; external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area XSEG    (XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; absolute external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XABS    (ABS,XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; external initialized ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XISEG   (XDATA)
      0000C8                        306 _LedChar::
      0000C8                        307 	.ds 16
                                    308 	.area HOME    (CODE)
                                    309 	.area GSINIT0 (CODE)
                                    310 	.area GSINIT1 (CODE)
                                    311 	.area GSINIT2 (CODE)
                                    312 	.area GSINIT3 (CODE)
                                    313 	.area GSINIT4 (CODE)
                                    314 	.area GSINIT5 (CODE)
                                    315 	.area GSINIT  (CODE)
                                    316 	.area GSFINAL (CODE)
                                    317 	.area CSEG    (CODE)
                                    318 ;--------------------------------------------------------
                                    319 ; global & static initialisations
                                    320 ;--------------------------------------------------------
                                    321 	.area HOME    (CODE)
                                    322 	.area GSINIT  (CODE)
                                    323 	.area GSFINAL (CODE)
                                    324 	.area GSINIT  (CODE)
                                    325 ;------------------------------------------------------------
                                    326 ;Allocation info for local variables in function 'updateLedShu'
                                    327 ;------------------------------------------------------------
                                    328 ;ledShuNum                 Allocated with name '_updateLedShu_ledShuNum_1_3'
                                    329 ;data                      Allocated to registers r5 r6 r7 
                                    330 ;------------------------------------------------------------
                                    331 ;	LEDSHU/LEDSHU.c:20: static unsigned char ledShuNum = 0;
      0000A1 75 09 00         [24]  332 	mov	_updateLedShu_ledShuNum_1_3,#0x00
                                    333 ;--------------------------------------------------------
                                    334 ; Home
                                    335 ;--------------------------------------------------------
                                    336 	.area HOME    (CODE)
                                    337 	.area HOME    (CODE)
                                    338 ;--------------------------------------------------------
                                    339 ; code
                                    340 ;--------------------------------------------------------
                                    341 	.area CSEG    (CODE)
                                    342 ;------------------------------------------------------------
                                    343 ;Allocation info for local variables in function 'updateLedShu'
                                    344 ;------------------------------------------------------------
                                    345 ;ledShuNum                 Allocated with name '_updateLedShu_ledShuNum_1_3'
                                    346 ;data                      Allocated to registers r5 r6 r7 
                                    347 ;------------------------------------------------------------
                                    348 ;	LEDSHU/LEDSHU.c:18: void updateLedShu(unsigned char data[])
                                    349 ;	-----------------------------------------
                                    350 ;	 function updateLedShu
                                    351 ;	-----------------------------------------
      0004EA                        352 _updateLedShu:
                           000007   353 	ar7 = 0x07
                           000006   354 	ar6 = 0x06
                           000005   355 	ar5 = 0x05
                           000004   356 	ar4 = 0x04
                           000003   357 	ar3 = 0x03
                           000002   358 	ar2 = 0x02
                           000001   359 	ar1 = 0x01
                           000000   360 	ar0 = 0x00
      0004EA AD 82            [24]  361 	mov	r5,dpl
      0004EC AE 83            [24]  362 	mov	r6,dph
      0004EE AF F0            [24]  363 	mov	r7,b
                                    364 ;	LEDSHU/LEDSHU.c:21: LEDSHU = 0xFF;
      0004F0 75 80 FF         [24]  365 	mov	_P0,#0xFF
                                    366 ;	LEDSHU/LEDSHU.c:22: ENLED = 0;
      0004F3 C2 94            [12]  367 	clr	_P1_4
                                    368 ;	LEDSHU/LEDSHU.c:23: ADDR3 = 1;
      0004F5 D2 93            [12]  369 	setb	_P1_3
                                    370 ;	LEDSHU/LEDSHU.c:25: switch(ledShuNum)
      0004F7 E5 09            [12]  371 	mov	a,_updateLedShu_ledShuNum_1_3
      0004F9 24 FA            [12]  372 	add	a,#0xff - 0x05
      0004FB 50 01            [24]  373 	jnc	00113$
      0004FD 22               [24]  374 	ret
      0004FE                        375 00113$:
      0004FE E5 09            [12]  376 	mov	a,_updateLedShu_ledShuNum_1_3
      000500 75 F0 03         [24]  377 	mov	b,#0x03
      000503 A4               [48]  378 	mul	ab
      000504 90 05 08         [24]  379 	mov	dptr,#00114$
      000507 73               [24]  380 	jmp	@a+dptr
      000508                        381 00114$:
      000508 02 05 1A         [24]  382 	ljmp	00101$
      00050B 02 05 39         [24]  383 	ljmp	00102$
      00050E 02 05 61         [24]  384 	ljmp	00103$
      000511 02 05 89         [24]  385 	ljmp	00104$
      000514 02 05 B1         [24]  386 	ljmp	00105$
      000517 02 05 D9         [24]  387 	ljmp	00106$
                                    388 ;	LEDSHU/LEDSHU.c:27: case 0: 
      00051A                        389 00101$:
                                    390 ;	LEDSHU/LEDSHU.c:28: ADDR2 = 0;ADDR1 = 0;ADDR0 = 0; ledShuNum = 1; 
      00051A C2 92            [12]  391 	clr	_P1_2
      00051C C2 91            [12]  392 	clr	_P1_1
      00051E C2 90            [12]  393 	clr	_P1_0
      000520 75 09 01         [24]  394 	mov	_updateLedShu_ledShuNum_1_3,#0x01
                                    395 ;	LEDSHU/LEDSHU.c:29: LEDSHU = LedChar[ data[0] ];
      000523 8D 82            [24]  396 	mov	dpl,r5
      000525 8E 83            [24]  397 	mov	dph,r6
      000527 8F F0            [24]  398 	mov	b,r7
      000529 12 0D 67         [24]  399 	lcall	__gptrget
      00052C 24 C8            [12]  400 	add	a,#_LedChar
      00052E F5 82            [12]  401 	mov	dpl,a
      000530 E4               [12]  402 	clr	a
      000531 34 00            [12]  403 	addc	a,#(_LedChar >> 8)
      000533 F5 83            [12]  404 	mov	dph,a
      000535 E0               [24]  405 	movx	a,@dptr
      000536 F5 80            [12]  406 	mov	_P0,a
                                    407 ;	LEDSHU/LEDSHU.c:30: break;
      000538 22               [24]  408 	ret
                                    409 ;	LEDSHU/LEDSHU.c:31: case 1: 
      000539                        410 00102$:
                                    411 ;	LEDSHU/LEDSHU.c:32: ADDR2 = 0;ADDR1 = 0;ADDR0 = 1; ledShuNum = 2; 
      000539 C2 92            [12]  412 	clr	_P1_2
      00053B C2 91            [12]  413 	clr	_P1_1
      00053D D2 90            [12]  414 	setb	_P1_0
      00053F 75 09 02         [24]  415 	mov	_updateLedShu_ledShuNum_1_3,#0x02
                                    416 ;	LEDSHU/LEDSHU.c:33: LEDSHU = LedChar[ data[1] ];
      000542 74 01            [12]  417 	mov	a,#0x01
      000544 2D               [12]  418 	add	a,r5
      000545 FA               [12]  419 	mov	r2,a
      000546 E4               [12]  420 	clr	a
      000547 3E               [12]  421 	addc	a,r6
      000548 FB               [12]  422 	mov	r3,a
      000549 8F 04            [24]  423 	mov	ar4,r7
      00054B 8A 82            [24]  424 	mov	dpl,r2
      00054D 8B 83            [24]  425 	mov	dph,r3
      00054F 8C F0            [24]  426 	mov	b,r4
      000551 12 0D 67         [24]  427 	lcall	__gptrget
      000554 24 C8            [12]  428 	add	a,#_LedChar
      000556 F5 82            [12]  429 	mov	dpl,a
      000558 E4               [12]  430 	clr	a
      000559 34 00            [12]  431 	addc	a,#(_LedChar >> 8)
      00055B F5 83            [12]  432 	mov	dph,a
      00055D E0               [24]  433 	movx	a,@dptr
      00055E F5 80            [12]  434 	mov	_P0,a
                                    435 ;	LEDSHU/LEDSHU.c:34: break;
      000560 22               [24]  436 	ret
                                    437 ;	LEDSHU/LEDSHU.c:35: case 2: 
      000561                        438 00103$:
                                    439 ;	LEDSHU/LEDSHU.c:36: ADDR2 = 0;ADDR1 = 1;ADDR0 = 0; ledShuNum = 3; 
      000561 C2 92            [12]  440 	clr	_P1_2
      000563 D2 91            [12]  441 	setb	_P1_1
      000565 C2 90            [12]  442 	clr	_P1_0
      000567 75 09 03         [24]  443 	mov	_updateLedShu_ledShuNum_1_3,#0x03
                                    444 ;	LEDSHU/LEDSHU.c:37: LEDSHU = LedChar[ data[2] ];
      00056A 74 02            [12]  445 	mov	a,#0x02
      00056C 2D               [12]  446 	add	a,r5
      00056D FA               [12]  447 	mov	r2,a
      00056E E4               [12]  448 	clr	a
      00056F 3E               [12]  449 	addc	a,r6
      000570 FB               [12]  450 	mov	r3,a
      000571 8F 04            [24]  451 	mov	ar4,r7
      000573 8A 82            [24]  452 	mov	dpl,r2
      000575 8B 83            [24]  453 	mov	dph,r3
      000577 8C F0            [24]  454 	mov	b,r4
      000579 12 0D 67         [24]  455 	lcall	__gptrget
      00057C 24 C8            [12]  456 	add	a,#_LedChar
      00057E F5 82            [12]  457 	mov	dpl,a
      000580 E4               [12]  458 	clr	a
      000581 34 00            [12]  459 	addc	a,#(_LedChar >> 8)
      000583 F5 83            [12]  460 	mov	dph,a
      000585 E0               [24]  461 	movx	a,@dptr
      000586 F5 80            [12]  462 	mov	_P0,a
                                    463 ;	LEDSHU/LEDSHU.c:38: break;
      000588 22               [24]  464 	ret
                                    465 ;	LEDSHU/LEDSHU.c:39: case 3: 
      000589                        466 00104$:
                                    467 ;	LEDSHU/LEDSHU.c:40: ADDR2 = 0;ADDR1 = 1;ADDR0 = 1; ledShuNum = 4; 
      000589 C2 92            [12]  468 	clr	_P1_2
      00058B D2 91            [12]  469 	setb	_P1_1
      00058D D2 90            [12]  470 	setb	_P1_0
      00058F 75 09 04         [24]  471 	mov	_updateLedShu_ledShuNum_1_3,#0x04
                                    472 ;	LEDSHU/LEDSHU.c:41: LEDSHU = LedChar[ data[3] ];
      000592 74 03            [12]  473 	mov	a,#0x03
      000594 2D               [12]  474 	add	a,r5
      000595 FA               [12]  475 	mov	r2,a
      000596 E4               [12]  476 	clr	a
      000597 3E               [12]  477 	addc	a,r6
      000598 FB               [12]  478 	mov	r3,a
      000599 8F 04            [24]  479 	mov	ar4,r7
      00059B 8A 82            [24]  480 	mov	dpl,r2
      00059D 8B 83            [24]  481 	mov	dph,r3
      00059F 8C F0            [24]  482 	mov	b,r4
      0005A1 12 0D 67         [24]  483 	lcall	__gptrget
      0005A4 24 C8            [12]  484 	add	a,#_LedChar
      0005A6 F5 82            [12]  485 	mov	dpl,a
      0005A8 E4               [12]  486 	clr	a
      0005A9 34 00            [12]  487 	addc	a,#(_LedChar >> 8)
      0005AB F5 83            [12]  488 	mov	dph,a
      0005AD E0               [24]  489 	movx	a,@dptr
      0005AE F5 80            [12]  490 	mov	_P0,a
                                    491 ;	LEDSHU/LEDSHU.c:42: break;
                                    492 ;	LEDSHU/LEDSHU.c:43: case 4: 
      0005B0 22               [24]  493 	ret
      0005B1                        494 00105$:
                                    495 ;	LEDSHU/LEDSHU.c:44: ADDR2 = 1;ADDR1 = 0;ADDR0 = 0; ledShuNum = 5; 
      0005B1 D2 92            [12]  496 	setb	_P1_2
      0005B3 C2 91            [12]  497 	clr	_P1_1
      0005B5 C2 90            [12]  498 	clr	_P1_0
      0005B7 75 09 05         [24]  499 	mov	_updateLedShu_ledShuNum_1_3,#0x05
                                    500 ;	LEDSHU/LEDSHU.c:45: LEDSHU = LedChar[ data[4] ];
      0005BA 74 04            [12]  501 	mov	a,#0x04
      0005BC 2D               [12]  502 	add	a,r5
      0005BD FA               [12]  503 	mov	r2,a
      0005BE E4               [12]  504 	clr	a
      0005BF 3E               [12]  505 	addc	a,r6
      0005C0 FB               [12]  506 	mov	r3,a
      0005C1 8F 04            [24]  507 	mov	ar4,r7
      0005C3 8A 82            [24]  508 	mov	dpl,r2
      0005C5 8B 83            [24]  509 	mov	dph,r3
      0005C7 8C F0            [24]  510 	mov	b,r4
      0005C9 12 0D 67         [24]  511 	lcall	__gptrget
      0005CC 24 C8            [12]  512 	add	a,#_LedChar
      0005CE F5 82            [12]  513 	mov	dpl,a
      0005D0 E4               [12]  514 	clr	a
      0005D1 34 00            [12]  515 	addc	a,#(_LedChar >> 8)
      0005D3 F5 83            [12]  516 	mov	dph,a
      0005D5 E0               [24]  517 	movx	a,@dptr
      0005D6 F5 80            [12]  518 	mov	_P0,a
                                    519 ;	LEDSHU/LEDSHU.c:46: break;
                                    520 ;	LEDSHU/LEDSHU.c:47: case 5: 
      0005D8 22               [24]  521 	ret
      0005D9                        522 00106$:
                                    523 ;	LEDSHU/LEDSHU.c:48: ADDR2 = 1;ADDR1 = 0;ADDR0 = 1; ledShuNum = 0; 
      0005D9 D2 92            [12]  524 	setb	_P1_2
      0005DB C2 91            [12]  525 	clr	_P1_1
      0005DD D2 90            [12]  526 	setb	_P1_0
      0005DF 75 09 00         [24]  527 	mov	_updateLedShu_ledShuNum_1_3,#0x00
                                    528 ;	LEDSHU/LEDSHU.c:49: LEDSHU = LedChar[ data[5] ];
      0005E2 74 05            [12]  529 	mov	a,#0x05
      0005E4 2D               [12]  530 	add	a,r5
      0005E5 FD               [12]  531 	mov	r5,a
      0005E6 E4               [12]  532 	clr	a
      0005E7 3E               [12]  533 	addc	a,r6
      0005E8 FE               [12]  534 	mov	r6,a
      0005E9 8D 82            [24]  535 	mov	dpl,r5
      0005EB 8E 83            [24]  536 	mov	dph,r6
      0005ED 8F F0            [24]  537 	mov	b,r7
      0005EF 12 0D 67         [24]  538 	lcall	__gptrget
      0005F2 24 C8            [12]  539 	add	a,#_LedChar
      0005F4 F5 82            [12]  540 	mov	dpl,a
      0005F6 E4               [12]  541 	clr	a
      0005F7 34 00            [12]  542 	addc	a,#(_LedChar >> 8)
      0005F9 F5 83            [12]  543 	mov	dph,a
      0005FB E0               [24]  544 	movx	a,@dptr
      0005FC F5 80            [12]  545 	mov	_P0,a
                                    546 ;	LEDSHU/LEDSHU.c:51: }
      0005FE 22               [24]  547 	ret
                                    548 	.area CSEG    (CODE)
                                    549 	.area CONST   (CODE)
                                    550 	.area XINIT   (CODE)
      000DA2                        551 __xinit__LedChar:
      000DA2 C0                     552 	.db #0xC0	; 192
      000DA3 F9                     553 	.db #0xF9	; 249
      000DA4 A4                     554 	.db #0xA4	; 164
      000DA5 B0                     555 	.db #0xB0	; 176
      000DA6 99                     556 	.db #0x99	; 153
      000DA7 92                     557 	.db #0x92	; 146
      000DA8 82                     558 	.db #0x82	; 130
      000DA9 F8                     559 	.db #0xF8	; 248
      000DAA 80                     560 	.db #0x80	; 128
      000DAB 90                     561 	.db #0x90	; 144
      000DAC 88                     562 	.db #0x88	; 136
      000DAD 83                     563 	.db #0x83	; 131
      000DAE C6                     564 	.db #0xC6	; 198
      000DAF A1                     565 	.db #0xA1	; 161
      000DB0 86                     566 	.db #0x86	; 134
      000DB1 8E                     567 	.db #0x8E	; 142
                                    568 	.area CABS    (ABS,CODE)
