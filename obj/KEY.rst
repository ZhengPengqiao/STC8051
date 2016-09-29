                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Thu Sep 29 13:34:06 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module KEY
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
                                    131 	.globl _ledStatus
                                    132 	.globl _ledBuf
                                    133 	.globl _keyScan
                                    134 	.globl _getKeyStatus
                                    135 	.globl _clearKeyStatus
                                    136 ;--------------------------------------------------------
                                    137 ; special function registers
                                    138 ;--------------------------------------------------------
                                    139 	.area RSEG    (ABS,DATA)
      000000                        140 	.org 0x0000
                           000080   141 _P0	=	0x0080
                           000081   142 _SP	=	0x0081
                           000082   143 _DPL	=	0x0082
                           000083   144 _DPH	=	0x0083
                           000087   145 _PCON	=	0x0087
                           000088   146 _TCON	=	0x0088
                           000089   147 _TMOD	=	0x0089
                           00008A   148 _TL0	=	0x008a
                           00008B   149 _TL1	=	0x008b
                           00008C   150 _TH0	=	0x008c
                           00008D   151 _TH1	=	0x008d
                           000090   152 _P1	=	0x0090
                           000098   153 _SCON	=	0x0098
                           000099   154 _SBUF	=	0x0099
                           0000A0   155 _P2	=	0x00a0
                           0000A8   156 _IE	=	0x00a8
                           0000B0   157 _P3	=	0x00b0
                           0000B8   158 _IP	=	0x00b8
                           0000D0   159 _PSW	=	0x00d0
                           0000E0   160 _ACC	=	0x00e0
                           0000F0   161 _B	=	0x00f0
                           0000C8   162 _T2CON	=	0x00c8
                           0000CA   163 _RCAP2L	=	0x00ca
                           0000CB   164 _RCAP2H	=	0x00cb
                           0000CC   165 _TL2	=	0x00cc
                           0000CD   166 _TH2	=	0x00cd
                                    167 ;--------------------------------------------------------
                                    168 ; special function bits
                                    169 ;--------------------------------------------------------
                                    170 	.area RSEG    (ABS,DATA)
      000000                        171 	.org 0x0000
                           000080   172 _P0_0	=	0x0080
                           000081   173 _P0_1	=	0x0081
                           000082   174 _P0_2	=	0x0082
                           000083   175 _P0_3	=	0x0083
                           000084   176 _P0_4	=	0x0084
                           000085   177 _P0_5	=	0x0085
                           000086   178 _P0_6	=	0x0086
                           000087   179 _P0_7	=	0x0087
                           000088   180 _IT0	=	0x0088
                           000089   181 _IE0	=	0x0089
                           00008A   182 _IT1	=	0x008a
                           00008B   183 _IE1	=	0x008b
                           00008C   184 _TR0	=	0x008c
                           00008D   185 _TF0	=	0x008d
                           00008E   186 _TR1	=	0x008e
                           00008F   187 _TF1	=	0x008f
                           000090   188 _P1_0	=	0x0090
                           000091   189 _P1_1	=	0x0091
                           000092   190 _P1_2	=	0x0092
                           000093   191 _P1_3	=	0x0093
                           000094   192 _P1_4	=	0x0094
                           000095   193 _P1_5	=	0x0095
                           000096   194 _P1_6	=	0x0096
                           000097   195 _P1_7	=	0x0097
                           000098   196 _RI	=	0x0098
                           000099   197 _TI	=	0x0099
                           00009A   198 _RB8	=	0x009a
                           00009B   199 _TB8	=	0x009b
                           00009C   200 _REN	=	0x009c
                           00009D   201 _SM2	=	0x009d
                           00009E   202 _SM1	=	0x009e
                           00009F   203 _SM0	=	0x009f
                           0000A0   204 _P2_0	=	0x00a0
                           0000A1   205 _P2_1	=	0x00a1
                           0000A2   206 _P2_2	=	0x00a2
                           0000A3   207 _P2_3	=	0x00a3
                           0000A4   208 _P2_4	=	0x00a4
                           0000A5   209 _P2_5	=	0x00a5
                           0000A6   210 _P2_6	=	0x00a6
                           0000A7   211 _P2_7	=	0x00a7
                           0000A8   212 _EX0	=	0x00a8
                           0000A9   213 _ET0	=	0x00a9
                           0000AA   214 _EX1	=	0x00aa
                           0000AB   215 _ET1	=	0x00ab
                           0000AC   216 _ES	=	0x00ac
                           0000AF   217 _EA	=	0x00af
                           0000B0   218 _P3_0	=	0x00b0
                           0000B1   219 _P3_1	=	0x00b1
                           0000B2   220 _P3_2	=	0x00b2
                           0000B3   221 _P3_3	=	0x00b3
                           0000B4   222 _P3_4	=	0x00b4
                           0000B5   223 _P3_5	=	0x00b5
                           0000B6   224 _P3_6	=	0x00b6
                           0000B7   225 _P3_7	=	0x00b7
                           0000B0   226 _RXD	=	0x00b0
                           0000B1   227 _TXD	=	0x00b1
                           0000B2   228 _INT0	=	0x00b2
                           0000B3   229 _INT1	=	0x00b3
                           0000B4   230 _T0	=	0x00b4
                           0000B5   231 _T1	=	0x00b5
                           0000B6   232 _WR	=	0x00b6
                           0000B7   233 _RD	=	0x00b7
                           0000B8   234 _PX0	=	0x00b8
                           0000B9   235 _PT0	=	0x00b9
                           0000BA   236 _PX1	=	0x00ba
                           0000BB   237 _PT1	=	0x00bb
                           0000BC   238 _PS	=	0x00bc
                           0000D0   239 _P	=	0x00d0
                           0000D1   240 _F1	=	0x00d1
                           0000D2   241 _OV	=	0x00d2
                           0000D3   242 _RS0	=	0x00d3
                           0000D4   243 _RS1	=	0x00d4
                           0000D5   244 _F0	=	0x00d5
                           0000D6   245 _AC	=	0x00d6
                           0000D7   246 _CY	=	0x00d7
                           0000AD   247 _ET2	=	0x00ad
                           0000BD   248 _PT2	=	0x00bd
                           0000C8   249 _T2CON_0	=	0x00c8
                           0000C9   250 _T2CON_1	=	0x00c9
                           0000CA   251 _T2CON_2	=	0x00ca
                           0000CB   252 _T2CON_3	=	0x00cb
                           0000CC   253 _T2CON_4	=	0x00cc
                           0000CD   254 _T2CON_5	=	0x00cd
                           0000CE   255 _T2CON_6	=	0x00ce
                           0000CF   256 _T2CON_7	=	0x00cf
                           0000C8   257 _CP_RL2	=	0x00c8
                           0000C9   258 _C_T2	=	0x00c9
                           0000CA   259 _TR2	=	0x00ca
                           0000CB   260 _EXEN2	=	0x00cb
                           0000CC   261 _TCLK	=	0x00cc
                           0000CD   262 _RCLK	=	0x00cd
                           0000CE   263 _EXF2	=	0x00ce
                           0000CF   264 _TF2	=	0x00cf
                                    265 ;--------------------------------------------------------
                                    266 ; overlayable register banks
                                    267 ;--------------------------------------------------------
                                    268 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        269 	.ds 8
                                    270 ;--------------------------------------------------------
                                    271 ; internal ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area DSEG    (DATA)
      00000B                        274 _ledBuf::
      00000B                        275 	.ds 16
      00001B                        276 _ledStatus::
      00001B                        277 	.ds 2
      00001D                        278 _keyScan_raw_1_2:
      00001D                        279 	.ds 1
                                    280 ;--------------------------------------------------------
                                    281 ; overlayable items in internal ram 
                                    282 ;--------------------------------------------------------
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
                                    331 ;------------------------------------------------------------
                                    332 ;Allocation info for local variables in function 'keyScan'
                                    333 ;------------------------------------------------------------
                                    334 ;raw                       Allocated with name '_keyScan_raw_1_2'
                                    335 ;i                         Allocated to registers r7 
                                    336 ;------------------------------------------------------------
                                    337 ;	KEY/KEY.c:20: static unsigned char raw = 0;
      0000A7 75 1D 00         [24]  338 	mov	_keyScan_raw_1_2,#0x00
                                    339 ;	KEY/KEY.c:3: unsigned char ledBuf[4][4] = {
      0000AA 75 0B FF         [24]  340 	mov	_ledBuf,#0xFF
      0000AD 75 0C FF         [24]  341 	mov	(_ledBuf + 0x0001),#0xFF
      0000B0 75 0D FF         [24]  342 	mov	(_ledBuf + 0x0002),#0xFF
      0000B3 75 0E FF         [24]  343 	mov	(_ledBuf + 0x0003),#0xFF
      0000B6 75 0F FF         [24]  344 	mov	(_ledBuf + 0x0004),#0xFF
      0000B9 75 10 FF         [24]  345 	mov	(_ledBuf + 0x0005),#0xFF
      0000BC 75 11 FF         [24]  346 	mov	(_ledBuf + 0x0006),#0xFF
      0000BF 75 12 FF         [24]  347 	mov	(_ledBuf + 0x0007),#0xFF
      0000C2 75 13 FF         [24]  348 	mov	(_ledBuf + 0x0008),#0xFF
      0000C5 75 14 FF         [24]  349 	mov	(_ledBuf + 0x0009),#0xFF
      0000C8 75 15 FF         [24]  350 	mov	(_ledBuf + 0x000a),#0xFF
      0000CB 75 16 FF         [24]  351 	mov	(_ledBuf + 0x000b),#0xFF
      0000CE 75 17 FF         [24]  352 	mov	(_ledBuf + 0x000c),#0xFF
      0000D1 75 18 FF         [24]  353 	mov	(_ledBuf + 0x000d),#0xFF
      0000D4 75 19 FF         [24]  354 	mov	(_ledBuf + 0x000e),#0xFF
      0000D7 75 1A FF         [24]  355 	mov	(_ledBuf + 0x000f),#0xFF
                                    356 ;	KEY/KEY.c:9: unsigned int ledStatus = 0;
      0000DA E4               [12]  357 	clr	a
      0000DB F5 1B            [12]  358 	mov	_ledStatus,a
      0000DD F5 1C            [12]  359 	mov	(_ledStatus + 1),a
                                    360 ;--------------------------------------------------------
                                    361 ; Home
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
                                    364 	.area HOME    (CODE)
                                    365 ;--------------------------------------------------------
                                    366 ; code
                                    367 ;--------------------------------------------------------
                                    368 	.area CSEG    (CODE)
                                    369 ;------------------------------------------------------------
                                    370 ;Allocation info for local variables in function 'keyScan'
                                    371 ;------------------------------------------------------------
                                    372 ;raw                       Allocated with name '_keyScan_raw_1_2'
                                    373 ;i                         Allocated to registers r7 
                                    374 ;------------------------------------------------------------
                                    375 ;	KEY/KEY.c:17: void keyScan()
                                    376 ;	-----------------------------------------
                                    377 ;	 function keyScan
                                    378 ;	-----------------------------------------
      000718                        379 _keyScan:
                           000007   380 	ar7 = 0x07
                           000006   381 	ar6 = 0x06
                           000005   382 	ar5 = 0x05
                           000004   383 	ar4 = 0x04
                           000003   384 	ar3 = 0x03
                           000002   385 	ar2 = 0x02
                           000001   386 	ar1 = 0x01
                           000000   387 	ar0 = 0x00
                                    388 ;	KEY/KEY.c:22: ledBuf[raw][0] = (ledBuf[raw][0]<<1) | KEYIN1;
      000718 E5 1D            [12]  389 	mov	a,_keyScan_raw_1_2
      00071A 25 1D            [12]  390 	add	a,_keyScan_raw_1_2
      00071C 25 E0            [12]  391 	add	a,acc
      00071E 24 0B            [12]  392 	add	a,#_ledBuf
      000720 F9               [12]  393 	mov	r1,a
      000721 E7               [12]  394 	mov	a,@r1
      000722 27               [12]  395 	add	a,@r1
      000723 FF               [12]  396 	mov	r7,a
      000724 A2 A4            [12]  397 	mov	c,_P2_4
      000726 E4               [12]  398 	clr	a
      000727 33               [12]  399 	rlc	a
      000728 4F               [12]  400 	orl	a,r7
      000729 F7               [12]  401 	mov	@r1,a
                                    402 ;	KEY/KEY.c:23: ledBuf[raw][1] = (ledBuf[raw][1]<<1) | KEYIN2;
      00072A E5 1D            [12]  403 	mov	a,_keyScan_raw_1_2
      00072C 25 1D            [12]  404 	add	a,_keyScan_raw_1_2
      00072E 25 E0            [12]  405 	add	a,acc
      000730 24 0B            [12]  406 	add	a,#_ledBuf
      000732 04               [12]  407 	inc	a
      000733 F9               [12]  408 	mov	r1,a
      000734 E7               [12]  409 	mov	a,@r1
      000735 27               [12]  410 	add	a,@r1
      000736 FF               [12]  411 	mov	r7,a
      000737 A2 A5            [12]  412 	mov	c,_P2_5
      000739 E4               [12]  413 	clr	a
      00073A 33               [12]  414 	rlc	a
      00073B 4F               [12]  415 	orl	a,r7
      00073C F7               [12]  416 	mov	@r1,a
                                    417 ;	KEY/KEY.c:24: ledBuf[raw][2] = (ledBuf[raw][2]<<1) | KEYIN3;
      00073D E5 1D            [12]  418 	mov	a,_keyScan_raw_1_2
      00073F 25 1D            [12]  419 	add	a,_keyScan_raw_1_2
      000741 25 E0            [12]  420 	add	a,acc
      000743 24 0B            [12]  421 	add	a,#_ledBuf
      000745 24 02            [12]  422 	add	a,#0x02
      000747 F9               [12]  423 	mov	r1,a
      000748 E7               [12]  424 	mov	a,@r1
      000749 27               [12]  425 	add	a,@r1
      00074A FF               [12]  426 	mov	r7,a
      00074B A2 A6            [12]  427 	mov	c,_P2_6
      00074D E4               [12]  428 	clr	a
      00074E 33               [12]  429 	rlc	a
      00074F 4F               [12]  430 	orl	a,r7
      000750 F7               [12]  431 	mov	@r1,a
                                    432 ;	KEY/KEY.c:25: ledBuf[raw][3] = (ledBuf[raw][3]<<1) | KEYIN4;
      000751 E5 1D            [12]  433 	mov	a,_keyScan_raw_1_2
      000753 25 1D            [12]  434 	add	a,_keyScan_raw_1_2
      000755 25 E0            [12]  435 	add	a,acc
      000757 24 0B            [12]  436 	add	a,#_ledBuf
      000759 24 03            [12]  437 	add	a,#0x03
      00075B F9               [12]  438 	mov	r1,a
      00075C E7               [12]  439 	mov	a,@r1
      00075D 27               [12]  440 	add	a,@r1
      00075E FF               [12]  441 	mov	r7,a
      00075F A2 A7            [12]  442 	mov	c,_P2_7
      000761 E4               [12]  443 	clr	a
      000762 33               [12]  444 	rlc	a
      000763 FE               [12]  445 	mov	r6,a
      000764 4F               [12]  446 	orl	a,r7
      000765 F7               [12]  447 	mov	@r1,a
                                    448 ;	KEY/KEY.c:27: for(i = 0; i < 4; i++)
      000766 7F 00            [12]  449 	mov	r7,#0x00
      000768                        450 00109$:
                                    451 ;	KEY/KEY.c:29: if(ledBuf[raw][i] == 0x00)
      000768 E5 1D            [12]  452 	mov	a,_keyScan_raw_1_2
      00076A 25 1D            [12]  453 	add	a,_keyScan_raw_1_2
      00076C 25 E0            [12]  454 	add	a,acc
      00076E FE               [12]  455 	mov	r6,a
      00076F 24 0B            [12]  456 	add	a,#_ledBuf
      000771 FD               [12]  457 	mov	r5,a
      000772 2F               [12]  458 	add	a,r7
      000773 F9               [12]  459 	mov	r1,a
      000774 E7               [12]  460 	mov	a,@r1
      000775 70 35            [24]  461 	jnz	00110$
                                    462 ;	KEY/KEY.c:31: ledStatus |= (1 << (raw*4+i) );
      000777 E5 1D            [12]  463 	mov	a,_keyScan_raw_1_2
      000779 75 F0 04         [24]  464 	mov	b,#0x04
      00077C A4               [48]  465 	mul	ab
      00077D FC               [12]  466 	mov	r4,a
      00077E AD F0            [24]  467 	mov	r5,b
      000780 EF               [12]  468 	mov	a,r7
      000781 FA               [12]  469 	mov	r2,a
      000782 33               [12]  470 	rlc	a
      000783 95 E0            [12]  471 	subb	a,acc
      000785 FB               [12]  472 	mov	r3,a
      000786 EA               [12]  473 	mov	a,r2
      000787 2C               [12]  474 	add	a,r4
      000788 FC               [12]  475 	mov	r4,a
      000789 EB               [12]  476 	mov	a,r3
      00078A 3D               [12]  477 	addc	a,r5
      00078B 8C F0            [24]  478 	mov	b,r4
      00078D 05 F0            [12]  479 	inc	b
      00078F 7C 01            [12]  480 	mov	r4,#0x01
      000791 7D 00            [12]  481 	mov	r5,#0x00
      000793 80 06            [24]  482 	sjmp	00128$
      000795                        483 00127$:
      000795 EC               [12]  484 	mov	a,r4
      000796 2C               [12]  485 	add	a,r4
      000797 FC               [12]  486 	mov	r4,a
      000798 ED               [12]  487 	mov	a,r5
      000799 33               [12]  488 	rlc	a
      00079A FD               [12]  489 	mov	r5,a
      00079B                        490 00128$:
      00079B D5 F0 F7         [24]  491 	djnz	b,00127$
      00079E EC               [12]  492 	mov	a,r4
      00079F 42 1B            [12]  493 	orl	_ledStatus,a
      0007A1 ED               [12]  494 	mov	a,r5
      0007A2 42 1C            [12]  495 	orl	(_ledStatus + 1),a
                                    496 ;	KEY/KEY.c:32: ledBuf[raw][i] = 0xFF;
      0007A4 EE               [12]  497 	mov	a,r6
      0007A5 24 0B            [12]  498 	add	a,#_ledBuf
      0007A7 FE               [12]  499 	mov	r6,a
      0007A8 2F               [12]  500 	add	a,r7
      0007A9 F8               [12]  501 	mov	r0,a
      0007AA 76 FF            [12]  502 	mov	@r0,#0xFF
      0007AC                        503 00110$:
                                    504 ;	KEY/KEY.c:27: for(i = 0; i < 4; i++)
      0007AC 0F               [12]  505 	inc	r7
      0007AD C3               [12]  506 	clr	c
      0007AE EF               [12]  507 	mov	a,r7
      0007AF 64 80            [12]  508 	xrl	a,#0x80
      0007B1 94 84            [12]  509 	subb	a,#0x84
      0007B3 40 B3            [24]  510 	jc	00109$
                                    511 ;	KEY/KEY.c:36: switch(raw)
      0007B5 E5 1D            [12]  512 	mov	a,_keyScan_raw_1_2
      0007B7 24 FC            [12]  513 	add	a,#0xff - 0x03
      0007B9 40 35            [24]  514 	jc	00111$
      0007BB E5 1D            [12]  515 	mov	a,_keyScan_raw_1_2
      0007BD 75 F0 03         [24]  516 	mov	b,#0x03
      0007C0 A4               [48]  517 	mul	ab
      0007C1 90 07 C5         [24]  518 	mov	dptr,#00131$
      0007C4 73               [24]  519 	jmp	@a+dptr
      0007C5                        520 00131$:
      0007C5 02 07 D1         [24]  521 	ljmp	00104$
      0007C8 02 07 D9         [24]  522 	ljmp	00105$
      0007CB 02 07 E1         [24]  523 	ljmp	00106$
      0007CE 02 07 E9         [24]  524 	ljmp	00107$
                                    525 ;	KEY/KEY.c:38: case 0: KEYOUT1 = 1; KEYOUT2 = 0; raw = 1;break;  //下一行是第2行
      0007D1                        526 00104$:
      0007D1 D2 A3            [12]  527 	setb	_P2_3
      0007D3 C2 A2            [12]  528 	clr	_P2_2
      0007D5 75 1D 01         [24]  529 	mov	_keyScan_raw_1_2,#0x01
                                    530 ;	KEY/KEY.c:39: case 1: KEYOUT2 = 1; KEYOUT3 = 0; raw = 2;break;  //下一行是第3行
      0007D8 22               [24]  531 	ret
      0007D9                        532 00105$:
      0007D9 D2 A2            [12]  533 	setb	_P2_2
      0007DB C2 A1            [12]  534 	clr	_P2_1
      0007DD 75 1D 02         [24]  535 	mov	_keyScan_raw_1_2,#0x02
                                    536 ;	KEY/KEY.c:40: case 2: KEYOUT3 = 1; KEYOUT4 = 0; raw = 3;break;  //下一行是第4行
      0007E0 22               [24]  537 	ret
      0007E1                        538 00106$:
      0007E1 D2 A1            [12]  539 	setb	_P2_1
      0007E3 C2 A0            [12]  540 	clr	_P2_0
      0007E5 75 1D 03         [24]  541 	mov	_keyScan_raw_1_2,#0x03
                                    542 ;	KEY/KEY.c:41: case 3: KEYOUT4 = 1; KEYOUT1 = 0; raw = 0;break;  //下一行是第1行
      0007E8 22               [24]  543 	ret
      0007E9                        544 00107$:
      0007E9 D2 A0            [12]  545 	setb	_P2_0
      0007EB C2 A3            [12]  546 	clr	_P2_3
      0007ED 75 1D 00         [24]  547 	mov	_keyScan_raw_1_2,#0x00
                                    548 ;	KEY/KEY.c:42: }
      0007F0                        549 00111$:
      0007F0 22               [24]  550 	ret
                                    551 ;------------------------------------------------------------
                                    552 ;Allocation info for local variables in function 'getKeyStatus'
                                    553 ;------------------------------------------------------------
                                    554 ;	KEY/KEY.c:51: unsigned int getKeyStatus()
                                    555 ;	-----------------------------------------
                                    556 ;	 function getKeyStatus
                                    557 ;	-----------------------------------------
      0007F1                        558 _getKeyStatus:
                                    559 ;	KEY/KEY.c:53: return ledStatus;
      0007F1 85 1B 82         [24]  560 	mov	dpl,_ledStatus
      0007F4 85 1C 83         [24]  561 	mov	dph,(_ledStatus + 1)
      0007F7 22               [24]  562 	ret
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'clearKeyStatus'
                                    565 ;------------------------------------------------------------
                                    566 ;which                     Allocated to registers r7 
                                    567 ;------------------------------------------------------------
                                    568 ;	KEY/KEY.c:63: void clearKeyStatus(unsigned char which)
                                    569 ;	-----------------------------------------
                                    570 ;	 function clearKeyStatus
                                    571 ;	-----------------------------------------
      0007F8                        572 _clearKeyStatus:
      0007F8 AF 82            [24]  573 	mov	r7,dpl
                                    574 ;	KEY/KEY.c:65: ledStatus &= ~(1 << which);
      0007FA 8F F0            [24]  575 	mov	b,r7
      0007FC 05 F0            [12]  576 	inc	b
      0007FE 7F 01            [12]  577 	mov	r7,#0x01
      000800 7E 00            [12]  578 	mov	r6,#0x00
      000802 80 06            [24]  579 	sjmp	00104$
      000804                        580 00103$:
      000804 EF               [12]  581 	mov	a,r7
      000805 2F               [12]  582 	add	a,r7
      000806 FF               [12]  583 	mov	r7,a
      000807 EE               [12]  584 	mov	a,r6
      000808 33               [12]  585 	rlc	a
      000809 FE               [12]  586 	mov	r6,a
      00080A                        587 00104$:
      00080A D5 F0 F7         [24]  588 	djnz	b,00103$
      00080D EF               [12]  589 	mov	a,r7
      00080E F4               [12]  590 	cpl	a
      00080F FF               [12]  591 	mov	r7,a
      000810 EE               [12]  592 	mov	a,r6
      000811 F4               [12]  593 	cpl	a
      000812 FE               [12]  594 	mov	r6,a
      000813 EF               [12]  595 	mov	a,r7
      000814 52 1B            [12]  596 	anl	_ledStatus,a
      000816 EE               [12]  597 	mov	a,r6
      000817 52 1C            [12]  598 	anl	(_ledStatus + 1),a
      000819 22               [24]  599 	ret
                                    600 	.area CSEG    (CODE)
                                    601 	.area CONST   (CODE)
                                    602 	.area XINIT   (CODE)
                                    603 	.area CABS    (ABS,CODE)
