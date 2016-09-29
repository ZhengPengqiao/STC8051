                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Thu Sep 29 13:34:06 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module LED
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
                                    131 	.globl _ledstatus
                                    132 	.globl _setLedOn
                                    133 	.globl _setLedOff
                                    134 	.globl _setAllLedOn
                                    135 	.globl _setAllLedOff
                                    136 	.globl _setAllLedToggle
                                    137 	.globl _setLedToggle
                                    138 	.globl _updateLed
                                    139 ;--------------------------------------------------------
                                    140 ; special function registers
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0	=	0x0080
                           000081   145 _SP	=	0x0081
                           000082   146 _DPL	=	0x0082
                           000083   147 _DPH	=	0x0083
                           000087   148 _PCON	=	0x0087
                           000088   149 _TCON	=	0x0088
                           000089   150 _TMOD	=	0x0089
                           00008A   151 _TL0	=	0x008a
                           00008B   152 _TL1	=	0x008b
                           00008C   153 _TH0	=	0x008c
                           00008D   154 _TH1	=	0x008d
                           000090   155 _P1	=	0x0090
                           000098   156 _SCON	=	0x0098
                           000099   157 _SBUF	=	0x0099
                           0000A0   158 _P2	=	0x00a0
                           0000A8   159 _IE	=	0x00a8
                           0000B0   160 _P3	=	0x00b0
                           0000B8   161 _IP	=	0x00b8
                           0000D0   162 _PSW	=	0x00d0
                           0000E0   163 _ACC	=	0x00e0
                           0000F0   164 _B	=	0x00f0
                           0000C8   165 _T2CON	=	0x00c8
                           0000CA   166 _RCAP2L	=	0x00ca
                           0000CB   167 _RCAP2H	=	0x00cb
                           0000CC   168 _TL2	=	0x00cc
                           0000CD   169 _TH2	=	0x00cd
                                    170 ;--------------------------------------------------------
                                    171 ; special function bits
                                    172 ;--------------------------------------------------------
                                    173 	.area RSEG    (ABS,DATA)
      000000                        174 	.org 0x0000
                           000080   175 _P0_0	=	0x0080
                           000081   176 _P0_1	=	0x0081
                           000082   177 _P0_2	=	0x0082
                           000083   178 _P0_3	=	0x0083
                           000084   179 _P0_4	=	0x0084
                           000085   180 _P0_5	=	0x0085
                           000086   181 _P0_6	=	0x0086
                           000087   182 _P0_7	=	0x0087
                           000088   183 _IT0	=	0x0088
                           000089   184 _IE0	=	0x0089
                           00008A   185 _IT1	=	0x008a
                           00008B   186 _IE1	=	0x008b
                           00008C   187 _TR0	=	0x008c
                           00008D   188 _TF0	=	0x008d
                           00008E   189 _TR1	=	0x008e
                           00008F   190 _TF1	=	0x008f
                           000090   191 _P1_0	=	0x0090
                           000091   192 _P1_1	=	0x0091
                           000092   193 _P1_2	=	0x0092
                           000093   194 _P1_3	=	0x0093
                           000094   195 _P1_4	=	0x0094
                           000095   196 _P1_5	=	0x0095
                           000096   197 _P1_6	=	0x0096
                           000097   198 _P1_7	=	0x0097
                           000098   199 _RI	=	0x0098
                           000099   200 _TI	=	0x0099
                           00009A   201 _RB8	=	0x009a
                           00009B   202 _TB8	=	0x009b
                           00009C   203 _REN	=	0x009c
                           00009D   204 _SM2	=	0x009d
                           00009E   205 _SM1	=	0x009e
                           00009F   206 _SM0	=	0x009f
                           0000A0   207 _P2_0	=	0x00a0
                           0000A1   208 _P2_1	=	0x00a1
                           0000A2   209 _P2_2	=	0x00a2
                           0000A3   210 _P2_3	=	0x00a3
                           0000A4   211 _P2_4	=	0x00a4
                           0000A5   212 _P2_5	=	0x00a5
                           0000A6   213 _P2_6	=	0x00a6
                           0000A7   214 _P2_7	=	0x00a7
                           0000A8   215 _EX0	=	0x00a8
                           0000A9   216 _ET0	=	0x00a9
                           0000AA   217 _EX1	=	0x00aa
                           0000AB   218 _ET1	=	0x00ab
                           0000AC   219 _ES	=	0x00ac
                           0000AF   220 _EA	=	0x00af
                           0000B0   221 _P3_0	=	0x00b0
                           0000B1   222 _P3_1	=	0x00b1
                           0000B2   223 _P3_2	=	0x00b2
                           0000B3   224 _P3_3	=	0x00b3
                           0000B4   225 _P3_4	=	0x00b4
                           0000B5   226 _P3_5	=	0x00b5
                           0000B6   227 _P3_6	=	0x00b6
                           0000B7   228 _P3_7	=	0x00b7
                           0000B0   229 _RXD	=	0x00b0
                           0000B1   230 _TXD	=	0x00b1
                           0000B2   231 _INT0	=	0x00b2
                           0000B3   232 _INT1	=	0x00b3
                           0000B4   233 _T0	=	0x00b4
                           0000B5   234 _T1	=	0x00b5
                           0000B6   235 _WR	=	0x00b6
                           0000B7   236 _RD	=	0x00b7
                           0000B8   237 _PX0	=	0x00b8
                           0000B9   238 _PT0	=	0x00b9
                           0000BA   239 _PX1	=	0x00ba
                           0000BB   240 _PT1	=	0x00bb
                           0000BC   241 _PS	=	0x00bc
                           0000D0   242 _P	=	0x00d0
                           0000D1   243 _F1	=	0x00d1
                           0000D2   244 _OV	=	0x00d2
                           0000D3   245 _RS0	=	0x00d3
                           0000D4   246 _RS1	=	0x00d4
                           0000D5   247 _F0	=	0x00d5
                           0000D6   248 _AC	=	0x00d6
                           0000D7   249 _CY	=	0x00d7
                           0000AD   250 _ET2	=	0x00ad
                           0000BD   251 _PT2	=	0x00bd
                           0000C8   252 _T2CON_0	=	0x00c8
                           0000C9   253 _T2CON_1	=	0x00c9
                           0000CA   254 _T2CON_2	=	0x00ca
                           0000CB   255 _T2CON_3	=	0x00cb
                           0000CC   256 _T2CON_4	=	0x00cc
                           0000CD   257 _T2CON_5	=	0x00cd
                           0000CE   258 _T2CON_6	=	0x00ce
                           0000CF   259 _T2CON_7	=	0x00cf
                           0000C8   260 _CP_RL2	=	0x00c8
                           0000C9   261 _C_T2	=	0x00c9
                           0000CA   262 _TR2	=	0x00ca
                           0000CB   263 _EXEN2	=	0x00cb
                           0000CC   264 _TCLK	=	0x00cc
                           0000CD   265 _RCLK	=	0x00cd
                           0000CE   266 _EXF2	=	0x00ce
                           0000CF   267 _TF2	=	0x00cf
                                    268 ;--------------------------------------------------------
                                    269 ; overlayable register banks
                                    270 ;--------------------------------------------------------
                                    271 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        272 	.ds 8
                                    273 ;--------------------------------------------------------
                                    274 ; internal ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area DSEG    (DATA)
      000008                        277 _ledstatus::
      000008                        278 	.ds 1
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable items in internal ram 
                                    281 ;--------------------------------------------------------
                                    282 	.area	OSEG    (OVR,DATA)
                                    283 	.area	OSEG    (OVR,DATA)
                                    284 	.area	OSEG    (OVR,DATA)
                                    285 ;--------------------------------------------------------
                                    286 ; indirectly addressable internal ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area ISEG    (DATA)
                                    289 ;--------------------------------------------------------
                                    290 ; absolute internal ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area IABS    (ABS,DATA)
                                    293 	.area IABS    (ABS,DATA)
                                    294 ;--------------------------------------------------------
                                    295 ; bit data
                                    296 ;--------------------------------------------------------
                                    297 	.area BSEG    (BIT)
                                    298 ;--------------------------------------------------------
                                    299 ; paged external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area PSEG    (PAG,XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XSEG    (XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; absolute external ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XABS    (ABS,XDATA)
                                    310 ;--------------------------------------------------------
                                    311 ; external initialized ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area XISEG   (XDATA)
                                    314 	.area HOME    (CODE)
                                    315 	.area GSINIT0 (CODE)
                                    316 	.area GSINIT1 (CODE)
                                    317 	.area GSINIT2 (CODE)
                                    318 	.area GSINIT3 (CODE)
                                    319 	.area GSINIT4 (CODE)
                                    320 	.area GSINIT5 (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 	.area GSFINAL (CODE)
                                    323 	.area CSEG    (CODE)
                                    324 ;--------------------------------------------------------
                                    325 ; global & static initialisations
                                    326 ;--------------------------------------------------------
                                    327 	.area HOME    (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 	.area GSFINAL (CODE)
                                    330 	.area GSINIT  (CODE)
                                    331 ;	LED/LED.c:14: unsigned char ledstatus = 0xFF;
      00008C 75 08 FF         [24]  332 	mov	_ledstatus,#0xFF
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
                                    343 ;Allocation info for local variables in function 'setLedOn'
                                    344 ;------------------------------------------------------------
                                    345 ;num                       Allocated to registers r7 
                                    346 ;------------------------------------------------------------
                                    347 ;	LED/LED.c:21: void setLedOn(unsigned char num)
                                    348 ;	-----------------------------------------
                                    349 ;	 function setLedOn
                                    350 ;	-----------------------------------------
      0000E7                        351 _setLedOn:
                           000007   352 	ar7 = 0x07
                           000006   353 	ar6 = 0x06
                           000005   354 	ar5 = 0x05
                           000004   355 	ar4 = 0x04
                           000003   356 	ar3 = 0x03
                           000002   357 	ar2 = 0x02
                           000001   358 	ar1 = 0x01
                           000000   359 	ar0 = 0x00
      0000E7 AF 82            [24]  360 	mov	r7,dpl
                                    361 ;	LED/LED.c:23: ledstatus &= ~(1 << num);
      0000E9 8F F0            [24]  362 	mov	b,r7
      0000EB 05 F0            [12]  363 	inc	b
      0000ED 74 01            [12]  364 	mov	a,#0x01
      0000EF 80 02            [24]  365 	sjmp	00105$
      0000F1                        366 00103$:
      0000F1 25 E0            [12]  367 	add	a,acc
      0000F3                        368 00105$:
      0000F3 D5 F0 FB         [24]  369 	djnz	b,00103$
      0000F6 F4               [12]  370 	cpl	a
      0000F7 52 08            [12]  371 	anl	_ledstatus,a
      0000F9 22               [24]  372 	ret
                                    373 ;------------------------------------------------------------
                                    374 ;Allocation info for local variables in function 'setLedOff'
                                    375 ;------------------------------------------------------------
                                    376 ;num                       Allocated to registers r7 
                                    377 ;------------------------------------------------------------
                                    378 ;	LED/LED.c:32: void setLedOff(unsigned char num)
                                    379 ;	-----------------------------------------
                                    380 ;	 function setLedOff
                                    381 ;	-----------------------------------------
      0000FA                        382 _setLedOff:
      0000FA AF 82            [24]  383 	mov	r7,dpl
                                    384 ;	LED/LED.c:34: ledstatus |= (1 << num);
      0000FC 8F F0            [24]  385 	mov	b,r7
      0000FE 05 F0            [12]  386 	inc	b
      000100 74 01            [12]  387 	mov	a,#0x01
      000102 80 02            [24]  388 	sjmp	00105$
      000104                        389 00103$:
      000104 25 E0            [12]  390 	add	a,acc
      000106                        391 00105$:
      000106 D5 F0 FB         [24]  392 	djnz	b,00103$
      000109 42 08            [12]  393 	orl	_ledstatus,a
      00010B 22               [24]  394 	ret
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'setAllLedOn'
                                    397 ;------------------------------------------------------------
                                    398 ;	LED/LED.c:43: void setAllLedOn()
                                    399 ;	-----------------------------------------
                                    400 ;	 function setAllLedOn
                                    401 ;	-----------------------------------------
      00010C                        402 _setAllLedOn:
                                    403 ;	LED/LED.c:45: ledstatus = 0x00;  //初始化小灯全为灭
      00010C 75 08 00         [24]  404 	mov	_ledstatus,#0x00
      00010F 22               [24]  405 	ret
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function 'setAllLedOff'
                                    408 ;------------------------------------------------------------
                                    409 ;	LED/LED.c:54: void setAllLedOff()
                                    410 ;	-----------------------------------------
                                    411 ;	 function setAllLedOff
                                    412 ;	-----------------------------------------
      000110                        413 _setAllLedOff:
                                    414 ;	LED/LED.c:56: ledstatus = 0xFF;  
      000110 75 08 FF         [24]  415 	mov	_ledstatus,#0xFF
      000113 22               [24]  416 	ret
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'setAllLedToggle'
                                    419 ;------------------------------------------------------------
                                    420 ;	LED/LED.c:64: void setAllLedToggle()
                                    421 ;	-----------------------------------------
                                    422 ;	 function setAllLedToggle
                                    423 ;	-----------------------------------------
      000114                        424 _setAllLedToggle:
                                    425 ;	LED/LED.c:66: ledstatus = ~ledstatus;
      000114 E5 08            [12]  426 	mov	a,_ledstatus
      000116 F4               [12]  427 	cpl	a
      000117 F5 08            [12]  428 	mov	_ledstatus,a
      000119 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'setLedToggle'
                                    432 ;------------------------------------------------------------
                                    433 ;num                       Allocated to registers r7 
                                    434 ;------------------------------------------------------------
                                    435 ;	LED/LED.c:75: void setLedToggle(unsigned char num)
                                    436 ;	-----------------------------------------
                                    437 ;	 function setLedToggle
                                    438 ;	-----------------------------------------
      00011A                        439 _setLedToggle:
      00011A AF 82            [24]  440 	mov	r7,dpl
                                    441 ;	LED/LED.c:77: if( (ledstatus & (1 << num)) )
      00011C 8F F0            [24]  442 	mov	b,r7
      00011E 05 F0            [12]  443 	inc	b
      000120 7D 01            [12]  444 	mov	r5,#0x01
      000122 7E 00            [12]  445 	mov	r6,#0x00
      000124 80 06            [24]  446 	sjmp	00110$
      000126                        447 00109$:
      000126 ED               [12]  448 	mov	a,r5
      000127 2D               [12]  449 	add	a,r5
      000128 FD               [12]  450 	mov	r5,a
      000129 EE               [12]  451 	mov	a,r6
      00012A 33               [12]  452 	rlc	a
      00012B FE               [12]  453 	mov	r6,a
      00012C                        454 00110$:
      00012C D5 F0 F7         [24]  455 	djnz	b,00109$
      00012F AB 08            [24]  456 	mov	r3,_ledstatus
      000131 7C 00            [12]  457 	mov	r4,#0x00
      000133 EB               [12]  458 	mov	a,r3
      000134 52 05            [12]  459 	anl	ar5,a
      000136 EC               [12]  460 	mov	a,r4
      000137 52 06            [12]  461 	anl	ar6,a
      000139 ED               [12]  462 	mov	a,r5
      00013A 4E               [12]  463 	orl	a,r6
      00013B 60 11            [24]  464 	jz	00102$
                                    465 ;	LED/LED.c:79: ledstatus &= ~(1 << num);
      00013D 8F F0            [24]  466 	mov	b,r7
      00013F 05 F0            [12]  467 	inc	b
      000141 74 01            [12]  468 	mov	a,#0x01
      000143 80 02            [24]  469 	sjmp	00114$
      000145                        470 00112$:
      000145 25 E0            [12]  471 	add	a,acc
      000147                        472 00114$:
      000147 D5 F0 FB         [24]  473 	djnz	b,00112$
      00014A F4               [12]  474 	cpl	a
      00014B 52 08            [12]  475 	anl	_ledstatus,a
      00014D 22               [24]  476 	ret
      00014E                        477 00102$:
                                    478 ;	LED/LED.c:83: ledstatus |= (1 << num);
      00014E 8F F0            [24]  479 	mov	b,r7
      000150 05 F0            [12]  480 	inc	b
      000152 74 01            [12]  481 	mov	a,#0x01
      000154 80 02            [24]  482 	sjmp	00117$
      000156                        483 00115$:
      000156 25 E0            [12]  484 	add	a,acc
      000158                        485 00117$:
      000158 D5 F0 FB         [24]  486 	djnz	b,00115$
      00015B 42 08            [12]  487 	orl	_ledstatus,a
      00015D 22               [24]  488 	ret
                                    489 ;------------------------------------------------------------
                                    490 ;Allocation info for local variables in function 'updateLed'
                                    491 ;------------------------------------------------------------
                                    492 ;	LED/LED.c:92: void updateLed()
                                    493 ;	-----------------------------------------
                                    494 ;	 function updateLed
                                    495 ;	-----------------------------------------
      00015E                        496 _updateLed:
                                    497 ;	LED/LED.c:94: LEDDATA = 0xFF;
      00015E 75 80 FF         [24]  498 	mov	_P0,#0xFF
                                    499 ;	LED/LED.c:96: ENLED = 1;   //禁止U3/U4
      000161 D2 94            [12]  500 	setb	_P1_4
                                    501 ;	LED/LED.c:97: ADDR3 = 1;   //使能U3
      000163 D2 93            [12]  502 	setb	_P1_3
                                    503 ;	LED/LED.c:98: ADDR2 = 1;   //
      000165 D2 92            [12]  504 	setb	_P1_2
                                    505 ;	LED/LED.c:99: ADDR1 = 1;   //使能引脚LEDS6，使其输出高电平,也就是连接LED灯的引脚。
      000167 D2 91            [12]  506 	setb	_P1_1
                                    507 ;	LED/LED.c:100: ADDR0 = 0;   //
      000169 C2 90            [12]  508 	clr	_P1_0
                                    509 ;	LED/LED.c:101: ENLED = 0;   //使能U3/U4
      00016B C2 94            [12]  510 	clr	_P1_4
                                    511 ;	LED/LED.c:102: LEDDATA = ledstatus;
      00016D 85 08 80         [24]  512 	mov	_P0,_ledstatus
      000170 22               [24]  513 	ret
                                    514 	.area CSEG    (CODE)
                                    515 	.area CONST   (CODE)
                                    516 	.area XINIT   (CODE)
                                    517 	.area CABS    (ABS,CODE)
