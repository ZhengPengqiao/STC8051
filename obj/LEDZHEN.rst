                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Thu Sep 29 13:34:06 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module LEDZHEN
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
                                    131 	.globl _updateLedZhen
                                    132 ;--------------------------------------------------------
                                    133 ; special function registers
                                    134 ;--------------------------------------------------------
                                    135 	.area RSEG    (ABS,DATA)
      000000                        136 	.org 0x0000
                           000080   137 _P0	=	0x0080
                           000081   138 _SP	=	0x0081
                           000082   139 _DPL	=	0x0082
                           000083   140 _DPH	=	0x0083
                           000087   141 _PCON	=	0x0087
                           000088   142 _TCON	=	0x0088
                           000089   143 _TMOD	=	0x0089
                           00008A   144 _TL0	=	0x008a
                           00008B   145 _TL1	=	0x008b
                           00008C   146 _TH0	=	0x008c
                           00008D   147 _TH1	=	0x008d
                           000090   148 _P1	=	0x0090
                           000098   149 _SCON	=	0x0098
                           000099   150 _SBUF	=	0x0099
                           0000A0   151 _P2	=	0x00a0
                           0000A8   152 _IE	=	0x00a8
                           0000B0   153 _P3	=	0x00b0
                           0000B8   154 _IP	=	0x00b8
                           0000D0   155 _PSW	=	0x00d0
                           0000E0   156 _ACC	=	0x00e0
                           0000F0   157 _B	=	0x00f0
                           0000C8   158 _T2CON	=	0x00c8
                           0000CA   159 _RCAP2L	=	0x00ca
                           0000CB   160 _RCAP2H	=	0x00cb
                           0000CC   161 _TL2	=	0x00cc
                           0000CD   162 _TH2	=	0x00cd
                                    163 ;--------------------------------------------------------
                                    164 ; special function bits
                                    165 ;--------------------------------------------------------
                                    166 	.area RSEG    (ABS,DATA)
      000000                        167 	.org 0x0000
                           000080   168 _P0_0	=	0x0080
                           000081   169 _P0_1	=	0x0081
                           000082   170 _P0_2	=	0x0082
                           000083   171 _P0_3	=	0x0083
                           000084   172 _P0_4	=	0x0084
                           000085   173 _P0_5	=	0x0085
                           000086   174 _P0_6	=	0x0086
                           000087   175 _P0_7	=	0x0087
                           000088   176 _IT0	=	0x0088
                           000089   177 _IE0	=	0x0089
                           00008A   178 _IT1	=	0x008a
                           00008B   179 _IE1	=	0x008b
                           00008C   180 _TR0	=	0x008c
                           00008D   181 _TF0	=	0x008d
                           00008E   182 _TR1	=	0x008e
                           00008F   183 _TF1	=	0x008f
                           000090   184 _P1_0	=	0x0090
                           000091   185 _P1_1	=	0x0091
                           000092   186 _P1_2	=	0x0092
                           000093   187 _P1_3	=	0x0093
                           000094   188 _P1_4	=	0x0094
                           000095   189 _P1_5	=	0x0095
                           000096   190 _P1_6	=	0x0096
                           000097   191 _P1_7	=	0x0097
                           000098   192 _RI	=	0x0098
                           000099   193 _TI	=	0x0099
                           00009A   194 _RB8	=	0x009a
                           00009B   195 _TB8	=	0x009b
                           00009C   196 _REN	=	0x009c
                           00009D   197 _SM2	=	0x009d
                           00009E   198 _SM1	=	0x009e
                           00009F   199 _SM0	=	0x009f
                           0000A0   200 _P2_0	=	0x00a0
                           0000A1   201 _P2_1	=	0x00a1
                           0000A2   202 _P2_2	=	0x00a2
                           0000A3   203 _P2_3	=	0x00a3
                           0000A4   204 _P2_4	=	0x00a4
                           0000A5   205 _P2_5	=	0x00a5
                           0000A6   206 _P2_6	=	0x00a6
                           0000A7   207 _P2_7	=	0x00a7
                           0000A8   208 _EX0	=	0x00a8
                           0000A9   209 _ET0	=	0x00a9
                           0000AA   210 _EX1	=	0x00aa
                           0000AB   211 _ET1	=	0x00ab
                           0000AC   212 _ES	=	0x00ac
                           0000AF   213 _EA	=	0x00af
                           0000B0   214 _P3_0	=	0x00b0
                           0000B1   215 _P3_1	=	0x00b1
                           0000B2   216 _P3_2	=	0x00b2
                           0000B3   217 _P3_3	=	0x00b3
                           0000B4   218 _P3_4	=	0x00b4
                           0000B5   219 _P3_5	=	0x00b5
                           0000B6   220 _P3_6	=	0x00b6
                           0000B7   221 _P3_7	=	0x00b7
                           0000B0   222 _RXD	=	0x00b0
                           0000B1   223 _TXD	=	0x00b1
                           0000B2   224 _INT0	=	0x00b2
                           0000B3   225 _INT1	=	0x00b3
                           0000B4   226 _T0	=	0x00b4
                           0000B5   227 _T1	=	0x00b5
                           0000B6   228 _WR	=	0x00b6
                           0000B7   229 _RD	=	0x00b7
                           0000B8   230 _PX0	=	0x00b8
                           0000B9   231 _PT0	=	0x00b9
                           0000BA   232 _PX1	=	0x00ba
                           0000BB   233 _PT1	=	0x00bb
                           0000BC   234 _PS	=	0x00bc
                           0000D0   235 _P	=	0x00d0
                           0000D1   236 _F1	=	0x00d1
                           0000D2   237 _OV	=	0x00d2
                           0000D3   238 _RS0	=	0x00d3
                           0000D4   239 _RS1	=	0x00d4
                           0000D5   240 _F0	=	0x00d5
                           0000D6   241 _AC	=	0x00d6
                           0000D7   242 _CY	=	0x00d7
                           0000AD   243 _ET2	=	0x00ad
                           0000BD   244 _PT2	=	0x00bd
                           0000C8   245 _T2CON_0	=	0x00c8
                           0000C9   246 _T2CON_1	=	0x00c9
                           0000CA   247 _T2CON_2	=	0x00ca
                           0000CB   248 _T2CON_3	=	0x00cb
                           0000CC   249 _T2CON_4	=	0x00cc
                           0000CD   250 _T2CON_5	=	0x00cd
                           0000CE   251 _T2CON_6	=	0x00ce
                           0000CF   252 _T2CON_7	=	0x00cf
                           0000C8   253 _CP_RL2	=	0x00c8
                           0000C9   254 _C_T2	=	0x00c9
                           0000CA   255 _TR2	=	0x00ca
                           0000CB   256 _EXEN2	=	0x00cb
                           0000CC   257 _TCLK	=	0x00cc
                           0000CD   258 _RCLK	=	0x00cd
                           0000CE   259 _EXF2	=	0x00ce
                           0000CF   260 _TF2	=	0x00cf
                                    261 ;--------------------------------------------------------
                                    262 ; overlayable register banks
                                    263 ;--------------------------------------------------------
                                    264 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        265 	.ds 8
                                    266 ;--------------------------------------------------------
                                    267 ; internal ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area DSEG    (DATA)
      00000A                        270 _updateLedZhen_ledZhenNum_1_3:
      00000A                        271 	.ds 1
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable items in internal ram 
                                    274 ;--------------------------------------------------------
                                    275 	.area	OSEG    (OVR,DATA)
                                    276 ;--------------------------------------------------------
                                    277 ; indirectly addressable internal ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area ISEG    (DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; absolute internal ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area IABS    (ABS,DATA)
                                    284 	.area IABS    (ABS,DATA)
                                    285 ;--------------------------------------------------------
                                    286 ; bit data
                                    287 ;--------------------------------------------------------
                                    288 	.area BSEG    (BIT)
                                    289 ;--------------------------------------------------------
                                    290 ; paged external ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area PSEG    (PAG,XDATA)
                                    293 ;--------------------------------------------------------
                                    294 ; external ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area XSEG    (XDATA)
                                    297 ;--------------------------------------------------------
                                    298 ; absolute external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area XABS    (ABS,XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; external initialized ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XISEG   (XDATA)
                                    305 	.area HOME    (CODE)
                                    306 	.area GSINIT0 (CODE)
                                    307 	.area GSINIT1 (CODE)
                                    308 	.area GSINIT2 (CODE)
                                    309 	.area GSINIT3 (CODE)
                                    310 	.area GSINIT4 (CODE)
                                    311 	.area GSINIT5 (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area CSEG    (CODE)
                                    315 ;--------------------------------------------------------
                                    316 ; global & static initialisations
                                    317 ;--------------------------------------------------------
                                    318 	.area HOME    (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 ;------------------------------------------------------------
                                    323 ;Allocation info for local variables in function 'updateLedZhen'
                                    324 ;------------------------------------------------------------
                                    325 ;ledZhenNum                Allocated with name '_updateLedZhen_ledZhenNum_1_3'
                                    326 ;image                     Allocated to registers r5 r6 r7 
                                    327 ;------------------------------------------------------------
                                    328 ;	LEDZHEN/LEDZHEN.c:10: static unsigned char ledZhenNum = 0;
      0000A4 75 0A 00         [24]  329 	mov	_updateLedZhen_ledZhenNum_1_3,#0x00
                                    330 ;--------------------------------------------------------
                                    331 ; Home
                                    332 ;--------------------------------------------------------
                                    333 	.area HOME    (CODE)
                                    334 	.area HOME    (CODE)
                                    335 ;--------------------------------------------------------
                                    336 ; code
                                    337 ;--------------------------------------------------------
                                    338 	.area CSEG    (CODE)
                                    339 ;------------------------------------------------------------
                                    340 ;Allocation info for local variables in function 'updateLedZhen'
                                    341 ;------------------------------------------------------------
                                    342 ;ledZhenNum                Allocated with name '_updateLedZhen_ledZhenNum_1_3'
                                    343 ;image                     Allocated to registers r5 r6 r7 
                                    344 ;------------------------------------------------------------
                                    345 ;	LEDZHEN/LEDZHEN.c:8: void updateLedZhen(unsigned char image[])
                                    346 ;	-----------------------------------------
                                    347 ;	 function updateLedZhen
                                    348 ;	-----------------------------------------
      0005FF                        349 _updateLedZhen:
                           000007   350 	ar7 = 0x07
                           000006   351 	ar6 = 0x06
                           000005   352 	ar5 = 0x05
                           000004   353 	ar4 = 0x04
                           000003   354 	ar3 = 0x03
                           000002   355 	ar2 = 0x02
                           000001   356 	ar1 = 0x01
                           000000   357 	ar0 = 0x00
      0005FF AD 82            [24]  358 	mov	r5,dpl
      000601 AE 83            [24]  359 	mov	r6,dph
      000603 AF F0            [24]  360 	mov	r7,b
                                    361 ;	LEDZHEN/LEDZHEN.c:11: LEDZHENDATA = 0xFF;
      000605 75 80 FF         [24]  362 	mov	_P0,#0xFF
                                    363 ;	LEDZHEN/LEDZHEN.c:12: ENLED = 0;   //使能U3/U4
      000608 C2 94            [12]  364 	clr	_P1_4
                                    365 ;	LEDZHEN/LEDZHEN.c:13: ADDR3 = 0;   //使能U4
      00060A C2 93            [12]  366 	clr	_P1_3
                                    367 ;	LEDZHEN/LEDZHEN.c:14: switch(ledZhenNum)
      00060C E5 0A            [12]  368 	mov	a,_updateLedZhen_ledZhenNum_1_3
      00060E 24 F8            [12]  369 	add	a,#0xff - 0x07
      000610 50 01            [24]  370 	jnc	00115$
      000612 22               [24]  371 	ret
      000613                        372 00115$:
      000613 E5 0A            [12]  373 	mov	a,_updateLedZhen_ledZhenNum_1_3
      000615 24 0B            [12]  374 	add	a,#(00116$-3-.)
      000617 83               [24]  375 	movc	a,@a+pc
      000618 F5 82            [12]  376 	mov	dpl,a
      00061A E5 0A            [12]  377 	mov	a,_updateLedZhen_ledZhenNum_1_3
      00061C 24 0C            [12]  378 	add	a,#(00117$-3-.)
      00061E 83               [24]  379 	movc	a,@a+pc
      00061F F5 83            [12]  380 	mov	dph,a
      000621 E4               [12]  381 	clr	a
      000622 73               [24]  382 	jmp	@a+dptr
      000623                        383 00116$:
      000623 33                     384 	.db	00101$
      000624 48                     385 	.db	00102$
      000625 66                     386 	.db	00103$
      000626 84                     387 	.db	00104$
      000627 A2                     388 	.db	00105$
      000628 C0                     389 	.db	00106$
      000629 DE                     390 	.db	00107$
      00062A FC                     391 	.db	00108$
      00062B                        392 00117$:
      00062B 06                     393 	.db	00101$>>8
      00062C 06                     394 	.db	00102$>>8
      00062D 06                     395 	.db	00103$>>8
      00062E 06                     396 	.db	00104$>>8
      00062F 06                     397 	.db	00105$>>8
      000630 06                     398 	.db	00106$>>8
      000631 06                     399 	.db	00107$>>8
      000632 06                     400 	.db	00108$>>8
                                    401 ;	LEDZHEN/LEDZHEN.c:16: case 0: 
      000633                        402 00101$:
                                    403 ;	LEDZHEN/LEDZHEN.c:17: ADDR2 = 0;ADDR1 = 0;ADDR0 = 0; ledZhenNum = 1; 
      000633 C2 92            [12]  404 	clr	_P1_2
      000635 C2 91            [12]  405 	clr	_P1_1
      000637 C2 90            [12]  406 	clr	_P1_0
      000639 75 0A 01         [24]  407 	mov	_updateLedZhen_ledZhenNum_1_3,#0x01
                                    408 ;	LEDZHEN/LEDZHEN.c:18: LEDZHENDATA = image[0];
      00063C 8D 82            [24]  409 	mov	dpl,r5
      00063E 8E 83            [24]  410 	mov	dph,r6
      000640 8F F0            [24]  411 	mov	b,r7
      000642 12 0D 67         [24]  412 	lcall	__gptrget
      000645 F5 80            [12]  413 	mov	_P0,a
                                    414 ;	LEDZHEN/LEDZHEN.c:19: break;
      000647 22               [24]  415 	ret
                                    416 ;	LEDZHEN/LEDZHEN.c:20: case 1: 
      000648                        417 00102$:
                                    418 ;	LEDZHEN/LEDZHEN.c:21: ADDR2 = 0;ADDR1 = 0;ADDR0 = 1; ledZhenNum = 2; 
      000648 C2 92            [12]  419 	clr	_P1_2
      00064A C2 91            [12]  420 	clr	_P1_1
      00064C D2 90            [12]  421 	setb	_P1_0
      00064E 75 0A 02         [24]  422 	mov	_updateLedZhen_ledZhenNum_1_3,#0x02
                                    423 ;	LEDZHEN/LEDZHEN.c:22: LEDZHENDATA = image[1];
      000651 74 01            [12]  424 	mov	a,#0x01
      000653 2D               [12]  425 	add	a,r5
      000654 FA               [12]  426 	mov	r2,a
      000655 E4               [12]  427 	clr	a
      000656 3E               [12]  428 	addc	a,r6
      000657 FB               [12]  429 	mov	r3,a
      000658 8F 04            [24]  430 	mov	ar4,r7
      00065A 8A 82            [24]  431 	mov	dpl,r2
      00065C 8B 83            [24]  432 	mov	dph,r3
      00065E 8C F0            [24]  433 	mov	b,r4
      000660 12 0D 67         [24]  434 	lcall	__gptrget
      000663 F5 80            [12]  435 	mov	_P0,a
                                    436 ;	LEDZHEN/LEDZHEN.c:23: break;
      000665 22               [24]  437 	ret
                                    438 ;	LEDZHEN/LEDZHEN.c:24: case 2: 
      000666                        439 00103$:
                                    440 ;	LEDZHEN/LEDZHEN.c:25: ADDR2 = 0;ADDR1 = 1;ADDR0 = 0; ledZhenNum = 3; 
      000666 C2 92            [12]  441 	clr	_P1_2
      000668 D2 91            [12]  442 	setb	_P1_1
      00066A C2 90            [12]  443 	clr	_P1_0
      00066C 75 0A 03         [24]  444 	mov	_updateLedZhen_ledZhenNum_1_3,#0x03
                                    445 ;	LEDZHEN/LEDZHEN.c:26: LEDZHENDATA = image[2];
      00066F 74 02            [12]  446 	mov	a,#0x02
      000671 2D               [12]  447 	add	a,r5
      000672 FA               [12]  448 	mov	r2,a
      000673 E4               [12]  449 	clr	a
      000674 3E               [12]  450 	addc	a,r6
      000675 FB               [12]  451 	mov	r3,a
      000676 8F 04            [24]  452 	mov	ar4,r7
      000678 8A 82            [24]  453 	mov	dpl,r2
      00067A 8B 83            [24]  454 	mov	dph,r3
      00067C 8C F0            [24]  455 	mov	b,r4
      00067E 12 0D 67         [24]  456 	lcall	__gptrget
      000681 F5 80            [12]  457 	mov	_P0,a
                                    458 ;	LEDZHEN/LEDZHEN.c:27: break;
      000683 22               [24]  459 	ret
                                    460 ;	LEDZHEN/LEDZHEN.c:28: case 3: 
      000684                        461 00104$:
                                    462 ;	LEDZHEN/LEDZHEN.c:29: ADDR2 = 0;ADDR1 = 1;ADDR0 = 1; ledZhenNum = 4; 
      000684 C2 92            [12]  463 	clr	_P1_2
      000686 D2 91            [12]  464 	setb	_P1_1
      000688 D2 90            [12]  465 	setb	_P1_0
      00068A 75 0A 04         [24]  466 	mov	_updateLedZhen_ledZhenNum_1_3,#0x04
                                    467 ;	LEDZHEN/LEDZHEN.c:30: LEDZHENDATA = image[3];
      00068D 74 03            [12]  468 	mov	a,#0x03
      00068F 2D               [12]  469 	add	a,r5
      000690 FA               [12]  470 	mov	r2,a
      000691 E4               [12]  471 	clr	a
      000692 3E               [12]  472 	addc	a,r6
      000693 FB               [12]  473 	mov	r3,a
      000694 8F 04            [24]  474 	mov	ar4,r7
      000696 8A 82            [24]  475 	mov	dpl,r2
      000698 8B 83            [24]  476 	mov	dph,r3
      00069A 8C F0            [24]  477 	mov	b,r4
      00069C 12 0D 67         [24]  478 	lcall	__gptrget
      00069F F5 80            [12]  479 	mov	_P0,a
                                    480 ;	LEDZHEN/LEDZHEN.c:31: break;
      0006A1 22               [24]  481 	ret
                                    482 ;	LEDZHEN/LEDZHEN.c:32: case 4: 
      0006A2                        483 00105$:
                                    484 ;	LEDZHEN/LEDZHEN.c:33: ADDR2 = 1;ADDR1 = 0;ADDR0 = 0; ledZhenNum = 5; 
      0006A2 D2 92            [12]  485 	setb	_P1_2
      0006A4 C2 91            [12]  486 	clr	_P1_1
      0006A6 C2 90            [12]  487 	clr	_P1_0
      0006A8 75 0A 05         [24]  488 	mov	_updateLedZhen_ledZhenNum_1_3,#0x05
                                    489 ;	LEDZHEN/LEDZHEN.c:34: LEDZHENDATA = image[4];
      0006AB 74 04            [12]  490 	mov	a,#0x04
      0006AD 2D               [12]  491 	add	a,r5
      0006AE FA               [12]  492 	mov	r2,a
      0006AF E4               [12]  493 	clr	a
      0006B0 3E               [12]  494 	addc	a,r6
      0006B1 FB               [12]  495 	mov	r3,a
      0006B2 8F 04            [24]  496 	mov	ar4,r7
      0006B4 8A 82            [24]  497 	mov	dpl,r2
      0006B6 8B 83            [24]  498 	mov	dph,r3
      0006B8 8C F0            [24]  499 	mov	b,r4
      0006BA 12 0D 67         [24]  500 	lcall	__gptrget
      0006BD F5 80            [12]  501 	mov	_P0,a
                                    502 ;	LEDZHEN/LEDZHEN.c:35: break;
                                    503 ;	LEDZHEN/LEDZHEN.c:36: case 5: 
      0006BF 22               [24]  504 	ret
      0006C0                        505 00106$:
                                    506 ;	LEDZHEN/LEDZHEN.c:37: ADDR2 = 1;ADDR1 = 0;ADDR0 = 1; ledZhenNum = 6; 
      0006C0 D2 92            [12]  507 	setb	_P1_2
      0006C2 C2 91            [12]  508 	clr	_P1_1
      0006C4 D2 90            [12]  509 	setb	_P1_0
      0006C6 75 0A 06         [24]  510 	mov	_updateLedZhen_ledZhenNum_1_3,#0x06
                                    511 ;	LEDZHEN/LEDZHEN.c:38: LEDZHENDATA = image[5];
      0006C9 74 05            [12]  512 	mov	a,#0x05
      0006CB 2D               [12]  513 	add	a,r5
      0006CC FA               [12]  514 	mov	r2,a
      0006CD E4               [12]  515 	clr	a
      0006CE 3E               [12]  516 	addc	a,r6
      0006CF FB               [12]  517 	mov	r3,a
      0006D0 8F 04            [24]  518 	mov	ar4,r7
      0006D2 8A 82            [24]  519 	mov	dpl,r2
      0006D4 8B 83            [24]  520 	mov	dph,r3
      0006D6 8C F0            [24]  521 	mov	b,r4
      0006D8 12 0D 67         [24]  522 	lcall	__gptrget
      0006DB F5 80            [12]  523 	mov	_P0,a
                                    524 ;	LEDZHEN/LEDZHEN.c:39: break;
                                    525 ;	LEDZHEN/LEDZHEN.c:40: case 6: 
      0006DD 22               [24]  526 	ret
      0006DE                        527 00107$:
                                    528 ;	LEDZHEN/LEDZHEN.c:41: ADDR2 = 1;ADDR1 = 1;ADDR0 = 0; ledZhenNum = 7; 
      0006DE D2 92            [12]  529 	setb	_P1_2
      0006E0 D2 91            [12]  530 	setb	_P1_1
      0006E2 C2 90            [12]  531 	clr	_P1_0
      0006E4 75 0A 07         [24]  532 	mov	_updateLedZhen_ledZhenNum_1_3,#0x07
                                    533 ;	LEDZHEN/LEDZHEN.c:42: LEDZHENDATA = image[6];
      0006E7 74 06            [12]  534 	mov	a,#0x06
      0006E9 2D               [12]  535 	add	a,r5
      0006EA FA               [12]  536 	mov	r2,a
      0006EB E4               [12]  537 	clr	a
      0006EC 3E               [12]  538 	addc	a,r6
      0006ED FB               [12]  539 	mov	r3,a
      0006EE 8F 04            [24]  540 	mov	ar4,r7
      0006F0 8A 82            [24]  541 	mov	dpl,r2
      0006F2 8B 83            [24]  542 	mov	dph,r3
      0006F4 8C F0            [24]  543 	mov	b,r4
      0006F6 12 0D 67         [24]  544 	lcall	__gptrget
      0006F9 F5 80            [12]  545 	mov	_P0,a
                                    546 ;	LEDZHEN/LEDZHEN.c:43: break;
                                    547 ;	LEDZHEN/LEDZHEN.c:44: case 7: 
      0006FB 22               [24]  548 	ret
      0006FC                        549 00108$:
                                    550 ;	LEDZHEN/LEDZHEN.c:45: ADDR2 = 1;ADDR1 = 1;ADDR0 = 1; ledZhenNum = 0; 
      0006FC D2 92            [12]  551 	setb	_P1_2
      0006FE D2 91            [12]  552 	setb	_P1_1
      000700 D2 90            [12]  553 	setb	_P1_0
      000702 75 0A 00         [24]  554 	mov	_updateLedZhen_ledZhenNum_1_3,#0x00
                                    555 ;	LEDZHEN/LEDZHEN.c:46: LEDZHENDATA = image[7];
      000705 74 07            [12]  556 	mov	a,#0x07
      000707 2D               [12]  557 	add	a,r5
      000708 FD               [12]  558 	mov	r5,a
      000709 E4               [12]  559 	clr	a
      00070A 3E               [12]  560 	addc	a,r6
      00070B FE               [12]  561 	mov	r6,a
      00070C 8D 82            [24]  562 	mov	dpl,r5
      00070E 8E 83            [24]  563 	mov	dph,r6
      000710 8F F0            [24]  564 	mov	b,r7
      000712 12 0D 67         [24]  565 	lcall	__gptrget
      000715 F5 80            [12]  566 	mov	_P0,a
                                    567 ;	LEDZHEN/LEDZHEN.c:48: }
      000717 22               [24]  568 	ret
                                    569 	.area CSEG    (CODE)
                                    570 	.area CONST   (CODE)
                                    571 	.area XINIT   (CODE)
                                    572 	.area CABS    (ABS,CODE)
