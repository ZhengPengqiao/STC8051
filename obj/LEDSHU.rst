                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Sun Sep 18 21:21:12 2016
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
                                    131 	.globl _data
                                    132 	.globl _LedChar
                                    133 	.globl _updateLedShu
                                    134 	.globl _setLedShuNum
                                    135 ;--------------------------------------------------------
                                    136 ; special function registers
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0	=	0x0080
                           000081   141 _SP	=	0x0081
                           000082   142 _DPL	=	0x0082
                           000083   143 _DPH	=	0x0083
                           000087   144 _PCON	=	0x0087
                           000088   145 _TCON	=	0x0088
                           000089   146 _TMOD	=	0x0089
                           00008A   147 _TL0	=	0x008a
                           00008B   148 _TL1	=	0x008b
                           00008C   149 _TH0	=	0x008c
                           00008D   150 _TH1	=	0x008d
                           000090   151 _P1	=	0x0090
                           000098   152 _SCON	=	0x0098
                           000099   153 _SBUF	=	0x0099
                           0000A0   154 _P2	=	0x00a0
                           0000A8   155 _IE	=	0x00a8
                           0000B0   156 _P3	=	0x00b0
                           0000B8   157 _IP	=	0x00b8
                           0000D0   158 _PSW	=	0x00d0
                           0000E0   159 _ACC	=	0x00e0
                           0000F0   160 _B	=	0x00f0
                           0000C8   161 _T2CON	=	0x00c8
                           0000CA   162 _RCAP2L	=	0x00ca
                           0000CB   163 _RCAP2H	=	0x00cb
                           0000CC   164 _TL2	=	0x00cc
                           0000CD   165 _TH2	=	0x00cd
                                    166 ;--------------------------------------------------------
                                    167 ; special function bits
                                    168 ;--------------------------------------------------------
                                    169 	.area RSEG    (ABS,DATA)
      000000                        170 	.org 0x0000
                           000080   171 _P0_0	=	0x0080
                           000081   172 _P0_1	=	0x0081
                           000082   173 _P0_2	=	0x0082
                           000083   174 _P0_3	=	0x0083
                           000084   175 _P0_4	=	0x0084
                           000085   176 _P0_5	=	0x0085
                           000086   177 _P0_6	=	0x0086
                           000087   178 _P0_7	=	0x0087
                           000088   179 _IT0	=	0x0088
                           000089   180 _IE0	=	0x0089
                           00008A   181 _IT1	=	0x008a
                           00008B   182 _IE1	=	0x008b
                           00008C   183 _TR0	=	0x008c
                           00008D   184 _TF0	=	0x008d
                           00008E   185 _TR1	=	0x008e
                           00008F   186 _TF1	=	0x008f
                           000090   187 _P1_0	=	0x0090
                           000091   188 _P1_1	=	0x0091
                           000092   189 _P1_2	=	0x0092
                           000093   190 _P1_3	=	0x0093
                           000094   191 _P1_4	=	0x0094
                           000095   192 _P1_5	=	0x0095
                           000096   193 _P1_6	=	0x0096
                           000097   194 _P1_7	=	0x0097
                           000098   195 _RI	=	0x0098
                           000099   196 _TI	=	0x0099
                           00009A   197 _RB8	=	0x009a
                           00009B   198 _TB8	=	0x009b
                           00009C   199 _REN	=	0x009c
                           00009D   200 _SM2	=	0x009d
                           00009E   201 _SM1	=	0x009e
                           00009F   202 _SM0	=	0x009f
                           0000A0   203 _P2_0	=	0x00a0
                           0000A1   204 _P2_1	=	0x00a1
                           0000A2   205 _P2_2	=	0x00a2
                           0000A3   206 _P2_3	=	0x00a3
                           0000A4   207 _P2_4	=	0x00a4
                           0000A5   208 _P2_5	=	0x00a5
                           0000A6   209 _P2_6	=	0x00a6
                           0000A7   210 _P2_7	=	0x00a7
                           0000A8   211 _EX0	=	0x00a8
                           0000A9   212 _ET0	=	0x00a9
                           0000AA   213 _EX1	=	0x00aa
                           0000AB   214 _ET1	=	0x00ab
                           0000AC   215 _ES	=	0x00ac
                           0000AF   216 _EA	=	0x00af
                           0000B0   217 _P3_0	=	0x00b0
                           0000B1   218 _P3_1	=	0x00b1
                           0000B2   219 _P3_2	=	0x00b2
                           0000B3   220 _P3_3	=	0x00b3
                           0000B4   221 _P3_4	=	0x00b4
                           0000B5   222 _P3_5	=	0x00b5
                           0000B6   223 _P3_6	=	0x00b6
                           0000B7   224 _P3_7	=	0x00b7
                           0000B0   225 _RXD	=	0x00b0
                           0000B1   226 _TXD	=	0x00b1
                           0000B2   227 _INT0	=	0x00b2
                           0000B3   228 _INT1	=	0x00b3
                           0000B4   229 _T0	=	0x00b4
                           0000B5   230 _T1	=	0x00b5
                           0000B6   231 _WR	=	0x00b6
                           0000B7   232 _RD	=	0x00b7
                           0000B8   233 _PX0	=	0x00b8
                           0000B9   234 _PT0	=	0x00b9
                           0000BA   235 _PX1	=	0x00ba
                           0000BB   236 _PT1	=	0x00bb
                           0000BC   237 _PS	=	0x00bc
                           0000D0   238 _P	=	0x00d0
                           0000D1   239 _F1	=	0x00d1
                           0000D2   240 _OV	=	0x00d2
                           0000D3   241 _RS0	=	0x00d3
                           0000D4   242 _RS1	=	0x00d4
                           0000D5   243 _F0	=	0x00d5
                           0000D6   244 _AC	=	0x00d6
                           0000D7   245 _CY	=	0x00d7
                           0000AD   246 _ET2	=	0x00ad
                           0000BD   247 _PT2	=	0x00bd
                           0000C8   248 _T2CON_0	=	0x00c8
                           0000C9   249 _T2CON_1	=	0x00c9
                           0000CA   250 _T2CON_2	=	0x00ca
                           0000CB   251 _T2CON_3	=	0x00cb
                           0000CC   252 _T2CON_4	=	0x00cc
                           0000CD   253 _T2CON_5	=	0x00cd
                           0000CE   254 _T2CON_6	=	0x00ce
                           0000CF   255 _T2CON_7	=	0x00cf
                           0000C8   256 _CP_RL2	=	0x00c8
                           0000C9   257 _C_T2	=	0x00c9
                           0000CA   258 _TR2	=	0x00ca
                           0000CB   259 _EXEN2	=	0x00cb
                           0000CC   260 _TCLK	=	0x00cc
                           0000CD   261 _RCLK	=	0x00cd
                           0000CE   262 _EXF2	=	0x00ce
                           0000CF   263 _TF2	=	0x00cf
                                    264 ;--------------------------------------------------------
                                    265 ; overlayable register banks
                                    266 ;--------------------------------------------------------
                                    267 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        268 	.ds 8
                                    269 ;--------------------------------------------------------
                                    270 ; internal ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area DSEG    (DATA)
      000011                        273 _updateLedShu_ledShuNum_1_2:
      000011                        274 	.ds 1
                                    275 ;--------------------------------------------------------
                                    276 ; overlayable items in internal ram 
                                    277 ;--------------------------------------------------------
                                    278 	.area	OSEG    (OVR,DATA)
                                    279 ;--------------------------------------------------------
                                    280 ; indirectly addressable internal ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area ISEG    (DATA)
                                    283 ;--------------------------------------------------------
                                    284 ; absolute internal ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area IABS    (ABS,DATA)
                                    287 	.area IABS    (ABS,DATA)
                                    288 ;--------------------------------------------------------
                                    289 ; bit data
                                    290 ;--------------------------------------------------------
                                    291 	.area BSEG    (BIT)
                                    292 ;--------------------------------------------------------
                                    293 ; paged external ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area PSEG    (PAG,XDATA)
                                    296 ;--------------------------------------------------------
                                    297 ; external ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area XSEG    (XDATA)
                                    300 ;--------------------------------------------------------
                                    301 ; absolute external ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area XABS    (ABS,XDATA)
                                    304 ;--------------------------------------------------------
                                    305 ; external initialized ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area XISEG   (XDATA)
      000079                        308 _LedChar::
      000079                        309 	.ds 16
      000089                        310 _data::
      000089                        311 	.ds 6
                                    312 	.area HOME    (CODE)
                                    313 	.area GSINIT0 (CODE)
                                    314 	.area GSINIT1 (CODE)
                                    315 	.area GSINIT2 (CODE)
                                    316 	.area GSINIT3 (CODE)
                                    317 	.area GSINIT4 (CODE)
                                    318 	.area GSINIT5 (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area CSEG    (CODE)
                                    322 ;--------------------------------------------------------
                                    323 ; global & static initialisations
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.area GSFINAL (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 ;------------------------------------------------------------
                                    330 ;Allocation info for local variables in function 'updateLedShu'
                                    331 ;------------------------------------------------------------
                                    332 ;ledShuNum                 Allocated with name '_updateLedShu_ledShuNum_1_2'
                                    333 ;------------------------------------------------------------
                                    334 ;	LEDSHU/LEDSHU.c:18: static unsigned char ledShuNum = 0;
      000098 75 11 00         [24]  335 	mov	_updateLedShu_ledShuNum_1_2,#0x00
                                    336 ;--------------------------------------------------------
                                    337 ; Home
                                    338 ;--------------------------------------------------------
                                    339 	.area HOME    (CODE)
                                    340 	.area HOME    (CODE)
                                    341 ;--------------------------------------------------------
                                    342 ; code
                                    343 ;--------------------------------------------------------
                                    344 	.area CSEG    (CODE)
                                    345 ;------------------------------------------------------------
                                    346 ;Allocation info for local variables in function 'updateLedShu'
                                    347 ;------------------------------------------------------------
                                    348 ;ledShuNum                 Allocated with name '_updateLedShu_ledShuNum_1_2'
                                    349 ;------------------------------------------------------------
                                    350 ;	LEDSHU/LEDSHU.c:16: void updateLedShu()
                                    351 ;	-----------------------------------------
                                    352 ;	 function updateLedShu
                                    353 ;	-----------------------------------------
      0004CC                        354 _updateLedShu:
                           000007   355 	ar7 = 0x07
                           000006   356 	ar6 = 0x06
                           000005   357 	ar5 = 0x05
                           000004   358 	ar4 = 0x04
                           000003   359 	ar3 = 0x03
                           000002   360 	ar2 = 0x02
                           000001   361 	ar1 = 0x01
                           000000   362 	ar0 = 0x00
                                    363 ;	LEDSHU/LEDSHU.c:19: ENLED = 0;
      0004CC C2 94            [12]  364 	clr	_P1_4
                                    365 ;	LEDSHU/LEDSHU.c:20: ADDR3 = 1;
      0004CE D2 93            [12]  366 	setb	_P1_3
                                    367 ;	LEDSHU/LEDSHU.c:21: LEDSHU = 0xFF;
      0004D0 75 80 FF         [24]  368 	mov	_P0,#0xFF
                                    369 ;	LEDSHU/LEDSHU.c:22: switch(ledShuNum)
      0004D3 E5 11            [12]  370 	mov	a,_updateLedShu_ledShuNum_1_2
      0004D5 24 FA            [12]  371 	add	a,#0xff - 0x05
      0004D7 50 01            [24]  372 	jnc	00113$
      0004D9 22               [24]  373 	ret
      0004DA                        374 00113$:
      0004DA E5 11            [12]  375 	mov	a,_updateLedShu_ledShuNum_1_2
      0004DC 75 F0 03         [24]  376 	mov	b,#0x03
      0004DF A4               [48]  377 	mul	ab
      0004E0 90 04 E4         [24]  378 	mov	dptr,#00114$
      0004E3 73               [24]  379 	jmp	@a+dptr
      0004E4                        380 00114$:
      0004E4 02 04 F6         [24]  381 	ljmp	00101$
      0004E7 02 05 10         [24]  382 	ljmp	00102$
      0004EA 02 05 2A         [24]  383 	ljmp	00103$
      0004ED 02 05 44         [24]  384 	ljmp	00104$
      0004F0 02 05 5E         [24]  385 	ljmp	00105$
      0004F3 02 05 78         [24]  386 	ljmp	00106$
                                    387 ;	LEDSHU/LEDSHU.c:24: case 0: 
      0004F6                        388 00101$:
                                    389 ;	LEDSHU/LEDSHU.c:25: ADDR2 = 0;ADDR1 = 0;ADDR0 = 0; ledShuNum = 1; 
      0004F6 C2 92            [12]  390 	clr	_P1_2
      0004F8 C2 91            [12]  391 	clr	_P1_1
      0004FA C2 90            [12]  392 	clr	_P1_0
      0004FC 75 11 01         [24]  393 	mov	_updateLedShu_ledShuNum_1_2,#0x01
                                    394 ;	LEDSHU/LEDSHU.c:26: LEDSHU = LedChar[ data[0] ];
      0004FF 90 00 89         [24]  395 	mov	dptr,#_data
      000502 E0               [24]  396 	movx	a,@dptr
      000503 24 79            [12]  397 	add	a,#_LedChar
      000505 F5 82            [12]  398 	mov	dpl,a
      000507 E4               [12]  399 	clr	a
      000508 34 00            [12]  400 	addc	a,#(_LedChar >> 8)
      00050A F5 83            [12]  401 	mov	dph,a
      00050C E0               [24]  402 	movx	a,@dptr
      00050D F5 80            [12]  403 	mov	_P0,a
                                    404 ;	LEDSHU/LEDSHU.c:27: break;
      00050F 22               [24]  405 	ret
                                    406 ;	LEDSHU/LEDSHU.c:28: case 1: 
      000510                        407 00102$:
                                    408 ;	LEDSHU/LEDSHU.c:29: ADDR2 = 0;ADDR1 = 0;ADDR0 = 1; ledShuNum = 2; 
      000510 C2 92            [12]  409 	clr	_P1_2
      000512 C2 91            [12]  410 	clr	_P1_1
      000514 D2 90            [12]  411 	setb	_P1_0
      000516 75 11 02         [24]  412 	mov	_updateLedShu_ledShuNum_1_2,#0x02
                                    413 ;	LEDSHU/LEDSHU.c:30: LEDSHU = LedChar[ data[1] ];
      000519 90 00 8A         [24]  414 	mov	dptr,#(_data + 0x0001)
      00051C E0               [24]  415 	movx	a,@dptr
      00051D 24 79            [12]  416 	add	a,#_LedChar
      00051F F5 82            [12]  417 	mov	dpl,a
      000521 E4               [12]  418 	clr	a
      000522 34 00            [12]  419 	addc	a,#(_LedChar >> 8)
      000524 F5 83            [12]  420 	mov	dph,a
      000526 E0               [24]  421 	movx	a,@dptr
      000527 F5 80            [12]  422 	mov	_P0,a
                                    423 ;	LEDSHU/LEDSHU.c:31: break;
                                    424 ;	LEDSHU/LEDSHU.c:32: case 2: 
      000529 22               [24]  425 	ret
      00052A                        426 00103$:
                                    427 ;	LEDSHU/LEDSHU.c:33: ADDR2 = 0;ADDR1 = 1;ADDR0 = 0; ledShuNum = 3; 
      00052A C2 92            [12]  428 	clr	_P1_2
      00052C D2 91            [12]  429 	setb	_P1_1
      00052E C2 90            [12]  430 	clr	_P1_0
      000530 75 11 03         [24]  431 	mov	_updateLedShu_ledShuNum_1_2,#0x03
                                    432 ;	LEDSHU/LEDSHU.c:34: LEDSHU = LedChar[ data[2] ];
      000533 90 00 8B         [24]  433 	mov	dptr,#(_data + 0x0002)
      000536 E0               [24]  434 	movx	a,@dptr
      000537 24 79            [12]  435 	add	a,#_LedChar
      000539 F5 82            [12]  436 	mov	dpl,a
      00053B E4               [12]  437 	clr	a
      00053C 34 00            [12]  438 	addc	a,#(_LedChar >> 8)
      00053E F5 83            [12]  439 	mov	dph,a
      000540 E0               [24]  440 	movx	a,@dptr
      000541 F5 80            [12]  441 	mov	_P0,a
                                    442 ;	LEDSHU/LEDSHU.c:35: break;
                                    443 ;	LEDSHU/LEDSHU.c:36: case 3: 
      000543 22               [24]  444 	ret
      000544                        445 00104$:
                                    446 ;	LEDSHU/LEDSHU.c:37: ADDR2 = 0;ADDR1 = 1;ADDR0 = 1; ledShuNum = 4; 
      000544 C2 92            [12]  447 	clr	_P1_2
      000546 D2 91            [12]  448 	setb	_P1_1
      000548 D2 90            [12]  449 	setb	_P1_0
      00054A 75 11 04         [24]  450 	mov	_updateLedShu_ledShuNum_1_2,#0x04
                                    451 ;	LEDSHU/LEDSHU.c:38: LEDSHU = LedChar[ data[3] ];
      00054D 90 00 8C         [24]  452 	mov	dptr,#(_data + 0x0003)
      000550 E0               [24]  453 	movx	a,@dptr
      000551 24 79            [12]  454 	add	a,#_LedChar
      000553 F5 82            [12]  455 	mov	dpl,a
      000555 E4               [12]  456 	clr	a
      000556 34 00            [12]  457 	addc	a,#(_LedChar >> 8)
      000558 F5 83            [12]  458 	mov	dph,a
      00055A E0               [24]  459 	movx	a,@dptr
      00055B F5 80            [12]  460 	mov	_P0,a
                                    461 ;	LEDSHU/LEDSHU.c:39: break;
                                    462 ;	LEDSHU/LEDSHU.c:40: case 4: 
      00055D 22               [24]  463 	ret
      00055E                        464 00105$:
                                    465 ;	LEDSHU/LEDSHU.c:41: ADDR2 = 1;ADDR1 = 0;ADDR0 = 0; ledShuNum = 5; 
      00055E D2 92            [12]  466 	setb	_P1_2
      000560 C2 91            [12]  467 	clr	_P1_1
      000562 C2 90            [12]  468 	clr	_P1_0
      000564 75 11 05         [24]  469 	mov	_updateLedShu_ledShuNum_1_2,#0x05
                                    470 ;	LEDSHU/LEDSHU.c:42: LEDSHU = LedChar[ data[4] ];
      000567 90 00 8D         [24]  471 	mov	dptr,#(_data + 0x0004)
      00056A E0               [24]  472 	movx	a,@dptr
      00056B 24 79            [12]  473 	add	a,#_LedChar
      00056D F5 82            [12]  474 	mov	dpl,a
      00056F E4               [12]  475 	clr	a
      000570 34 00            [12]  476 	addc	a,#(_LedChar >> 8)
      000572 F5 83            [12]  477 	mov	dph,a
      000574 E0               [24]  478 	movx	a,@dptr
      000575 F5 80            [12]  479 	mov	_P0,a
                                    480 ;	LEDSHU/LEDSHU.c:43: break;
                                    481 ;	LEDSHU/LEDSHU.c:44: case 5: 
      000577 22               [24]  482 	ret
      000578                        483 00106$:
                                    484 ;	LEDSHU/LEDSHU.c:45: ADDR2 = 1;ADDR1 = 0;ADDR0 = 1; ledShuNum = 0; 
      000578 D2 92            [12]  485 	setb	_P1_2
      00057A C2 91            [12]  486 	clr	_P1_1
      00057C D2 90            [12]  487 	setb	_P1_0
      00057E 75 11 00         [24]  488 	mov	_updateLedShu_ledShuNum_1_2,#0x00
                                    489 ;	LEDSHU/LEDSHU.c:46: LEDSHU = LedChar[ data[5] ];
      000581 90 00 8E         [24]  490 	mov	dptr,#(_data + 0x0005)
      000584 E0               [24]  491 	movx	a,@dptr
      000585 24 79            [12]  492 	add	a,#_LedChar
      000587 F5 82            [12]  493 	mov	dpl,a
      000589 E4               [12]  494 	clr	a
      00058A 34 00            [12]  495 	addc	a,#(_LedChar >> 8)
      00058C F5 83            [12]  496 	mov	dph,a
      00058E E0               [24]  497 	movx	a,@dptr
      00058F F5 80            [12]  498 	mov	_P0,a
                                    499 ;	LEDSHU/LEDSHU.c:48: }
      000591 22               [24]  500 	ret
                                    501 ;------------------------------------------------------------
                                    502 ;Allocation info for local variables in function 'setLedShuNum'
                                    503 ;------------------------------------------------------------
                                    504 ;ledShuArray               Allocated to registers r5 r6 r7 
                                    505 ;------------------------------------------------------------
                                    506 ;	LEDSHU/LEDSHU.c:52: void setLedShuNum(unsigned char ledShuArray[])
                                    507 ;	-----------------------------------------
                                    508 ;	 function setLedShuNum
                                    509 ;	-----------------------------------------
      000592                        510 _setLedShuNum:
                                    511 ;	LEDSHU/LEDSHU.c:54: data[0] = ledShuArray[0];
      000592 AD 82            [24]  512 	mov	r5,dpl
      000594 AE 83            [24]  513 	mov	r6,dph
      000596 AF F0            [24]  514 	mov	r7,b
      000598 12 06 9F         [24]  515 	lcall	__gptrget
      00059B 90 00 89         [24]  516 	mov	dptr,#_data
      00059E F0               [24]  517 	movx	@dptr,a
                                    518 ;	LEDSHU/LEDSHU.c:55: data[1] = ledShuArray[1];
      00059F 74 01            [12]  519 	mov	a,#0x01
      0005A1 2D               [12]  520 	add	a,r5
      0005A2 FA               [12]  521 	mov	r2,a
      0005A3 E4               [12]  522 	clr	a
      0005A4 3E               [12]  523 	addc	a,r6
      0005A5 FB               [12]  524 	mov	r3,a
      0005A6 8F 04            [24]  525 	mov	ar4,r7
      0005A8 8A 82            [24]  526 	mov	dpl,r2
      0005AA 8B 83            [24]  527 	mov	dph,r3
      0005AC 8C F0            [24]  528 	mov	b,r4
      0005AE 12 06 9F         [24]  529 	lcall	__gptrget
      0005B1 90 00 8A         [24]  530 	mov	dptr,#(_data + 0x0001)
      0005B4 F0               [24]  531 	movx	@dptr,a
                                    532 ;	LEDSHU/LEDSHU.c:56: data[2] = ledShuArray[2];
      0005B5 74 02            [12]  533 	mov	a,#0x02
      0005B7 2D               [12]  534 	add	a,r5
      0005B8 FA               [12]  535 	mov	r2,a
      0005B9 E4               [12]  536 	clr	a
      0005BA 3E               [12]  537 	addc	a,r6
      0005BB FB               [12]  538 	mov	r3,a
      0005BC 8F 04            [24]  539 	mov	ar4,r7
      0005BE 8A 82            [24]  540 	mov	dpl,r2
      0005C0 8B 83            [24]  541 	mov	dph,r3
      0005C2 8C F0            [24]  542 	mov	b,r4
      0005C4 12 06 9F         [24]  543 	lcall	__gptrget
      0005C7 90 00 8B         [24]  544 	mov	dptr,#(_data + 0x0002)
      0005CA F0               [24]  545 	movx	@dptr,a
                                    546 ;	LEDSHU/LEDSHU.c:57: data[3] = ledShuArray[3];
      0005CB 74 03            [12]  547 	mov	a,#0x03
      0005CD 2D               [12]  548 	add	a,r5
      0005CE FA               [12]  549 	mov	r2,a
      0005CF E4               [12]  550 	clr	a
      0005D0 3E               [12]  551 	addc	a,r6
      0005D1 FB               [12]  552 	mov	r3,a
      0005D2 8F 04            [24]  553 	mov	ar4,r7
      0005D4 8A 82            [24]  554 	mov	dpl,r2
      0005D6 8B 83            [24]  555 	mov	dph,r3
      0005D8 8C F0            [24]  556 	mov	b,r4
      0005DA 12 06 9F         [24]  557 	lcall	__gptrget
      0005DD 90 00 8C         [24]  558 	mov	dptr,#(_data + 0x0003)
      0005E0 F0               [24]  559 	movx	@dptr,a
                                    560 ;	LEDSHU/LEDSHU.c:58: data[4] = ledShuArray[4];
      0005E1 74 04            [12]  561 	mov	a,#0x04
      0005E3 2D               [12]  562 	add	a,r5
      0005E4 FA               [12]  563 	mov	r2,a
      0005E5 E4               [12]  564 	clr	a
      0005E6 3E               [12]  565 	addc	a,r6
      0005E7 FB               [12]  566 	mov	r3,a
      0005E8 8F 04            [24]  567 	mov	ar4,r7
      0005EA 8A 82            [24]  568 	mov	dpl,r2
      0005EC 8B 83            [24]  569 	mov	dph,r3
      0005EE 8C F0            [24]  570 	mov	b,r4
      0005F0 12 06 9F         [24]  571 	lcall	__gptrget
      0005F3 90 00 8D         [24]  572 	mov	dptr,#(_data + 0x0004)
      0005F6 F0               [24]  573 	movx	@dptr,a
                                    574 ;	LEDSHU/LEDSHU.c:59: data[5] = ledShuArray[5];
      0005F7 74 05            [12]  575 	mov	a,#0x05
      0005F9 2D               [12]  576 	add	a,r5
      0005FA FD               [12]  577 	mov	r5,a
      0005FB E4               [12]  578 	clr	a
      0005FC 3E               [12]  579 	addc	a,r6
      0005FD FE               [12]  580 	mov	r6,a
      0005FE 8D 82            [24]  581 	mov	dpl,r5
      000600 8E 83            [24]  582 	mov	dph,r6
      000602 8F F0            [24]  583 	mov	b,r7
      000604 12 06 9F         [24]  584 	lcall	__gptrget
      000607 90 00 8E         [24]  585 	mov	dptr,#(_data + 0x0005)
      00060A F0               [24]  586 	movx	@dptr,a
      00060B 22               [24]  587 	ret
                                    588 	.area CSEG    (CODE)
                                    589 	.area CONST   (CODE)
                                    590 	.area XINIT   (CODE)
      0006BF                        591 __xinit__LedChar:
      0006BF C0                     592 	.db #0xC0	; 192
      0006C0 F9                     593 	.db #0xF9	; 249
      0006C1 A4                     594 	.db #0xA4	; 164
      0006C2 B0                     595 	.db #0xB0	; 176
      0006C3 99                     596 	.db #0x99	; 153
      0006C4 92                     597 	.db #0x92	; 146
      0006C5 82                     598 	.db #0x82	; 130
      0006C6 F8                     599 	.db #0xF8	; 248
      0006C7 80                     600 	.db #0x80	; 128
      0006C8 90                     601 	.db #0x90	; 144
      0006C9 88                     602 	.db #0x88	; 136
      0006CA 83                     603 	.db #0x83	; 131
      0006CB C6                     604 	.db #0xC6	; 198
      0006CC A1                     605 	.db #0xA1	; 161
      0006CD 86                     606 	.db #0x86	; 134
      0006CE 8E                     607 	.db #0x8E	; 142
      0006CF                        608 __xinit__data:
      0006CF FF                     609 	.db #0xFF	; 255
      0006D0 FF                     610 	.db #0xFF	; 255
      0006D1 FF                     611 	.db #0xFF	; 255
      0006D2 FF                     612 	.db #0xFF	; 255
      0006D3 FF                     613 	.db #0xFF	; 255
      0006D4 FF                     614 	.db #0xFF	; 255
                                    615 	.area CABS    (ABS,CODE)
