                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Thu Sep 29 13:34:06 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module UART
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
                                    131 	.globl _UART0_CHAR
                                    132 	.globl _readStringWait_PARM_2
                                    133 	.globl _readString_PARM_2
                                    134 	.globl _sendString_PARM_2
                                    135 	.globl _UART0_TXISR_function
                                    136 	.globl _UART0_RXISR_function
                                    137 	.globl _sendstatus
                                    138 	.globl _start
                                    139 	.globl _end
                                    140 	.globl _InterruptUART
                                    141 	.globl _sendNewLine
                                    142 	.globl _initUart
                                    143 	.globl _sendChar
                                    144 	.globl _sendString
                                    145 	.globl _readChar
                                    146 	.globl _readString
                                    147 	.globl _readStringWait
                                    148 	.globl _setUartRXFun
                                    149 	.globl _setUartTXFun
                                    150 ;--------------------------------------------------------
                                    151 ; special function registers
                                    152 ;--------------------------------------------------------
                                    153 	.area RSEG    (ABS,DATA)
      000000                        154 	.org 0x0000
                           000080   155 _P0	=	0x0080
                           000081   156 _SP	=	0x0081
                           000082   157 _DPL	=	0x0082
                           000083   158 _DPH	=	0x0083
                           000087   159 _PCON	=	0x0087
                           000088   160 _TCON	=	0x0088
                           000089   161 _TMOD	=	0x0089
                           00008A   162 _TL0	=	0x008a
                           00008B   163 _TL1	=	0x008b
                           00008C   164 _TH0	=	0x008c
                           00008D   165 _TH1	=	0x008d
                           000090   166 _P1	=	0x0090
                           000098   167 _SCON	=	0x0098
                           000099   168 _SBUF	=	0x0099
                           0000A0   169 _P2	=	0x00a0
                           0000A8   170 _IE	=	0x00a8
                           0000B0   171 _P3	=	0x00b0
                           0000B8   172 _IP	=	0x00b8
                           0000D0   173 _PSW	=	0x00d0
                           0000E0   174 _ACC	=	0x00e0
                           0000F0   175 _B	=	0x00f0
                           0000C8   176 _T2CON	=	0x00c8
                           0000CA   177 _RCAP2L	=	0x00ca
                           0000CB   178 _RCAP2H	=	0x00cb
                           0000CC   179 _TL2	=	0x00cc
                           0000CD   180 _TH2	=	0x00cd
                                    181 ;--------------------------------------------------------
                                    182 ; special function bits
                                    183 ;--------------------------------------------------------
                                    184 	.area RSEG    (ABS,DATA)
      000000                        185 	.org 0x0000
                           000080   186 _P0_0	=	0x0080
                           000081   187 _P0_1	=	0x0081
                           000082   188 _P0_2	=	0x0082
                           000083   189 _P0_3	=	0x0083
                           000084   190 _P0_4	=	0x0084
                           000085   191 _P0_5	=	0x0085
                           000086   192 _P0_6	=	0x0086
                           000087   193 _P0_7	=	0x0087
                           000088   194 _IT0	=	0x0088
                           000089   195 _IE0	=	0x0089
                           00008A   196 _IT1	=	0x008a
                           00008B   197 _IE1	=	0x008b
                           00008C   198 _TR0	=	0x008c
                           00008D   199 _TF0	=	0x008d
                           00008E   200 _TR1	=	0x008e
                           00008F   201 _TF1	=	0x008f
                           000090   202 _P1_0	=	0x0090
                           000091   203 _P1_1	=	0x0091
                           000092   204 _P1_2	=	0x0092
                           000093   205 _P1_3	=	0x0093
                           000094   206 _P1_4	=	0x0094
                           000095   207 _P1_5	=	0x0095
                           000096   208 _P1_6	=	0x0096
                           000097   209 _P1_7	=	0x0097
                           000098   210 _RI	=	0x0098
                           000099   211 _TI	=	0x0099
                           00009A   212 _RB8	=	0x009a
                           00009B   213 _TB8	=	0x009b
                           00009C   214 _REN	=	0x009c
                           00009D   215 _SM2	=	0x009d
                           00009E   216 _SM1	=	0x009e
                           00009F   217 _SM0	=	0x009f
                           0000A0   218 _P2_0	=	0x00a0
                           0000A1   219 _P2_1	=	0x00a1
                           0000A2   220 _P2_2	=	0x00a2
                           0000A3   221 _P2_3	=	0x00a3
                           0000A4   222 _P2_4	=	0x00a4
                           0000A5   223 _P2_5	=	0x00a5
                           0000A6   224 _P2_6	=	0x00a6
                           0000A7   225 _P2_7	=	0x00a7
                           0000A8   226 _EX0	=	0x00a8
                           0000A9   227 _ET0	=	0x00a9
                           0000AA   228 _EX1	=	0x00aa
                           0000AB   229 _ET1	=	0x00ab
                           0000AC   230 _ES	=	0x00ac
                           0000AF   231 _EA	=	0x00af
                           0000B0   232 _P3_0	=	0x00b0
                           0000B1   233 _P3_1	=	0x00b1
                           0000B2   234 _P3_2	=	0x00b2
                           0000B3   235 _P3_3	=	0x00b3
                           0000B4   236 _P3_4	=	0x00b4
                           0000B5   237 _P3_5	=	0x00b5
                           0000B6   238 _P3_6	=	0x00b6
                           0000B7   239 _P3_7	=	0x00b7
                           0000B0   240 _RXD	=	0x00b0
                           0000B1   241 _TXD	=	0x00b1
                           0000B2   242 _INT0	=	0x00b2
                           0000B3   243 _INT1	=	0x00b3
                           0000B4   244 _T0	=	0x00b4
                           0000B5   245 _T1	=	0x00b5
                           0000B6   246 _WR	=	0x00b6
                           0000B7   247 _RD	=	0x00b7
                           0000B8   248 _PX0	=	0x00b8
                           0000B9   249 _PT0	=	0x00b9
                           0000BA   250 _PX1	=	0x00ba
                           0000BB   251 _PT1	=	0x00bb
                           0000BC   252 _PS	=	0x00bc
                           0000D0   253 _P	=	0x00d0
                           0000D1   254 _F1	=	0x00d1
                           0000D2   255 _OV	=	0x00d2
                           0000D3   256 _RS0	=	0x00d3
                           0000D4   257 _RS1	=	0x00d4
                           0000D5   258 _F0	=	0x00d5
                           0000D6   259 _AC	=	0x00d6
                           0000D7   260 _CY	=	0x00d7
                           0000AD   261 _ET2	=	0x00ad
                           0000BD   262 _PT2	=	0x00bd
                           0000C8   263 _T2CON_0	=	0x00c8
                           0000C9   264 _T2CON_1	=	0x00c9
                           0000CA   265 _T2CON_2	=	0x00ca
                           0000CB   266 _T2CON_3	=	0x00cb
                           0000CC   267 _T2CON_4	=	0x00cc
                           0000CD   268 _T2CON_5	=	0x00cd
                           0000CE   269 _T2CON_6	=	0x00ce
                           0000CF   270 _T2CON_7	=	0x00cf
                           0000C8   271 _CP_RL2	=	0x00c8
                           0000C9   272 _C_T2	=	0x00c9
                           0000CA   273 _TR2	=	0x00ca
                           0000CB   274 _EXEN2	=	0x00cb
                           0000CC   275 _TCLK	=	0x00cc
                           0000CD   276 _RCLK	=	0x00cd
                           0000CE   277 _EXF2	=	0x00ce
                           0000CF   278 _TF2	=	0x00cf
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable register banks
                                    281 ;--------------------------------------------------------
                                    282 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        283 	.ds 8
                                    284 ;--------------------------------------------------------
                                    285 ; overlayable bit register bank
                                    286 ;--------------------------------------------------------
                                    287 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        288 bits:
      000020                        289 	.ds 1
                           008000   290 	b0 = bits[0]
                           008100   291 	b1 = bits[1]
                           008200   292 	b2 = bits[2]
                           008300   293 	b3 = bits[3]
                           008400   294 	b4 = bits[4]
                           008500   295 	b5 = bits[5]
                           008600   296 	b6 = bits[6]
                           008700   297 	b7 = bits[7]
                                    298 ;--------------------------------------------------------
                                    299 ; internal ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area DSEG    (DATA)
      000046                        302 _end::
      000046                        303 	.ds 2
      000048                        304 _start::
      000048                        305 	.ds 2
      00004A                        306 _sendstatus::
      00004A                        307 	.ds 2
      00004C                        308 _UART0_RXISR_function::
      00004C                        309 	.ds 2
      00004E                        310 _UART0_TXISR_function::
      00004E                        311 	.ds 2
      000050                        312 _sendString_PARM_2:
      000050                        313 	.ds 2
      000052                        314 _readString_PARM_2:
      000052                        315 	.ds 2
      000054                        316 _readString_str_1_28:
      000054                        317 	.ds 3
      000057                        318 _readStringWait_PARM_2:
      000057                        319 	.ds 2
      000059                        320 _readStringWait_str_1_34:
      000059                        321 	.ds 3
                                    322 ;--------------------------------------------------------
                                    323 ; overlayable items in internal ram 
                                    324 ;--------------------------------------------------------
                                    325 	.area	OSEG    (OVR,DATA)
                                    326 	.area	OSEG    (OVR,DATA)
                                    327 	.area	OSEG    (OVR,DATA)
                                    328 	.area	OSEG    (OVR,DATA)
                                    329 ;--------------------------------------------------------
                                    330 ; indirectly addressable internal ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area ISEG    (DATA)
                                    333 ;--------------------------------------------------------
                                    334 ; absolute internal ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area IABS    (ABS,DATA)
                                    337 	.area IABS    (ABS,DATA)
                                    338 ;--------------------------------------------------------
                                    339 ; bit data
                                    340 ;--------------------------------------------------------
                                    341 	.area BSEG    (BIT)
                                    342 ;--------------------------------------------------------
                                    343 ; paged external ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area PSEG    (PAG,XDATA)
                                    346 ;--------------------------------------------------------
                                    347 ; external ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area XSEG    (XDATA)
      000096                        350 _UART0_CHAR::
      000096                        351 	.ds 50
                                    352 ;--------------------------------------------------------
                                    353 ; absolute external ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area XABS    (ABS,XDATA)
                                    356 ;--------------------------------------------------------
                                    357 ; external initialized ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area XISEG   (XDATA)
                                    360 	.area HOME    (CODE)
                                    361 	.area GSINIT0 (CODE)
                                    362 	.area GSINIT1 (CODE)
                                    363 	.area GSINIT2 (CODE)
                                    364 	.area GSINIT3 (CODE)
                                    365 	.area GSINIT4 (CODE)
                                    366 	.area GSINIT5 (CODE)
                                    367 	.area GSINIT  (CODE)
                                    368 	.area GSFINAL (CODE)
                                    369 	.area CSEG    (CODE)
                                    370 ;--------------------------------------------------------
                                    371 ; global & static initialisations
                                    372 ;--------------------------------------------------------
                                    373 	.area HOME    (CODE)
                                    374 	.area GSINIT  (CODE)
                                    375 	.area GSFINAL (CODE)
                                    376 	.area GSINIT  (CODE)
                                    377 ;	UART/UART.c:5: int sendstatus = 0;                //发送状态
      0000DF E4               [12]  378 	clr	a
      0000E0 F5 4A            [12]  379 	mov	_sendstatus,a
      0000E2 F5 4B            [12]  380 	mov	(_sendstatus + 1),a
                                    381 ;--------------------------------------------------------
                                    382 ; Home
                                    383 ;--------------------------------------------------------
                                    384 	.area HOME    (CODE)
                                    385 	.area HOME    (CODE)
                                    386 ;--------------------------------------------------------
                                    387 ; code
                                    388 ;--------------------------------------------------------
                                    389 	.area CSEG    (CODE)
                                    390 ;------------------------------------------------------------
                                    391 ;Allocation info for local variables in function 'InterruptUART'
                                    392 ;------------------------------------------------------------
                                    393 ;	UART/UART.c:15: void InterruptUART() __interrupt 4
                                    394 ;	-----------------------------------------
                                    395 ;	 function InterruptUART
                                    396 ;	-----------------------------------------
      0009AC                        397 _InterruptUART:
                           000007   398 	ar7 = 0x07
                           000006   399 	ar6 = 0x06
                           000005   400 	ar5 = 0x05
                           000004   401 	ar4 = 0x04
                           000003   402 	ar3 = 0x03
                           000002   403 	ar2 = 0x02
                           000001   404 	ar1 = 0x01
                           000000   405 	ar0 = 0x00
      0009AC C0 20            [24]  406 	push	bits
      0009AE C0 E0            [24]  407 	push	acc
      0009B0 C0 F0            [24]  408 	push	b
      0009B2 C0 82            [24]  409 	push	dpl
      0009B4 C0 83            [24]  410 	push	dph
      0009B6 C0 07            [24]  411 	push	(0+7)
      0009B8 C0 06            [24]  412 	push	(0+6)
      0009BA C0 05            [24]  413 	push	(0+5)
      0009BC C0 04            [24]  414 	push	(0+4)
      0009BE C0 03            [24]  415 	push	(0+3)
      0009C0 C0 02            [24]  416 	push	(0+2)
      0009C2 C0 01            [24]  417 	push	(0+1)
      0009C4 C0 00            [24]  418 	push	(0+0)
      0009C6 C0 D0            [24]  419 	push	psw
      0009C8 75 D0 00         [24]  420 	mov	psw,#0x00
                                    421 ;	UART/UART.c:17: if(RI)  //接收到新字符
                                    422 ;	UART/UART.c:19: RI = 0;
      0009CB 10 98 02         [24]  423 	jbc	_RI,00128$
      0009CE 80 3A            [24]  424 	sjmp	00106$
      0009D0                        425 00128$:
                                    426 ;	UART/UART.c:20: if(end >= RX_BUFFER_SIZE )
      0009D0 C3               [12]  427 	clr	c
      0009D1 E5 46            [12]  428 	mov	a,_end
      0009D3 94 32            [12]  429 	subb	a,#0x32
      0009D5 E5 47            [12]  430 	mov	a,(_end + 1)
      0009D7 64 80            [12]  431 	xrl	a,#0x80
      0009D9 94 80            [12]  432 	subb	a,#0x80
      0009DB 40 05            [24]  433 	jc	00102$
                                    434 ;	UART/UART.c:21: end = 0;
      0009DD E4               [12]  435 	clr	a
      0009DE F5 46            [12]  436 	mov	_end,a
      0009E0 F5 47            [12]  437 	mov	(_end + 1),a
      0009E2                        438 00102$:
                                    439 ;	UART/UART.c:22: UART0_CHAR[end++] = SBUF;
      0009E2 AE 46            [24]  440 	mov	r6,_end
      0009E4 AF 47            [24]  441 	mov	r7,(_end + 1)
      0009E6 05 46            [12]  442 	inc	_end
      0009E8 E4               [12]  443 	clr	a
      0009E9 B5 46 02         [24]  444 	cjne	a,_end,00130$
      0009EC 05 47            [12]  445 	inc	(_end + 1)
      0009EE                        446 00130$:
      0009EE EE               [12]  447 	mov	a,r6
      0009EF 24 96            [12]  448 	add	a,#_UART0_CHAR
      0009F1 F5 82            [12]  449 	mov	dpl,a
      0009F3 EF               [12]  450 	mov	a,r7
      0009F4 34 00            [12]  451 	addc	a,#(_UART0_CHAR >> 8)
      0009F6 F5 83            [12]  452 	mov	dph,a
      0009F8 E5 99            [12]  453 	mov	a,_SBUF
      0009FA F0               [24]  454 	movx	@dptr,a
                                    455 ;	UART/UART.c:23: if( UART0_RXISR_function != 0)
      0009FB E5 4C            [12]  456 	mov	a,_UART0_RXISR_function
      0009FD 45 4D            [12]  457 	orl	a,(_UART0_RXISR_function + 1)
      0009FF 60 09            [24]  458 	jz	00106$
                                    459 ;	UART/UART.c:25: UART0_RXISR_function();
      000A01 85 4C 82         [24]  460 	mov	dpl,_UART0_RXISR_function
      000A04 85 4D 83         [24]  461 	mov	dph,(_UART0_RXISR_function + 1)
      000A07 12 00 31         [24]  462 	lcall	__sdcc_call_dptr
      000A0A                        463 00106$:
                                    464 ;	UART/UART.c:29: if(TI)  //字节发送完毕
                                    465 ;	UART/UART.c:31: TI = 0;
      000A0A 10 99 02         [24]  466 	jbc	_TI,00132$
      000A0D 80 15            [24]  467 	sjmp	00111$
      000A0F                        468 00132$:
                                    469 ;	UART/UART.c:32: sendstatus = 1;
      000A0F 75 4A 01         [24]  470 	mov	_sendstatus,#0x01
      000A12 75 4B 00         [24]  471 	mov	(_sendstatus + 1),#0x00
                                    472 ;	UART/UART.c:33: if(UART0_TXISR_function != 0 )
      000A15 E5 4E            [12]  473 	mov	a,_UART0_TXISR_function
      000A17 45 4F            [12]  474 	orl	a,(_UART0_TXISR_function + 1)
      000A19 60 09            [24]  475 	jz	00111$
                                    476 ;	UART/UART.c:35: UART0_TXISR_function();
      000A1B 85 4E 82         [24]  477 	mov	dpl,_UART0_TXISR_function
      000A1E 85 4F 83         [24]  478 	mov	dph,(_UART0_TXISR_function + 1)
      000A21 12 00 31         [24]  479 	lcall	__sdcc_call_dptr
      000A24                        480 00111$:
      000A24 D0 D0            [24]  481 	pop	psw
      000A26 D0 00            [24]  482 	pop	(0+0)
      000A28 D0 01            [24]  483 	pop	(0+1)
      000A2A D0 02            [24]  484 	pop	(0+2)
      000A2C D0 03            [24]  485 	pop	(0+3)
      000A2E D0 04            [24]  486 	pop	(0+4)
      000A30 D0 05            [24]  487 	pop	(0+5)
      000A32 D0 06            [24]  488 	pop	(0+6)
      000A34 D0 07            [24]  489 	pop	(0+7)
      000A36 D0 83            [24]  490 	pop	dph
      000A38 D0 82            [24]  491 	pop	dpl
      000A3A D0 F0            [24]  492 	pop	b
      000A3C D0 E0            [24]  493 	pop	acc
      000A3E D0 20            [24]  494 	pop	bits
      000A40 32               [24]  495 	reti
                                    496 ;------------------------------------------------------------
                                    497 ;Allocation info for local variables in function 'sendNewLine'
                                    498 ;------------------------------------------------------------
                                    499 ;	UART/UART.c:47: void sendNewLine()
                                    500 ;	-----------------------------------------
                                    501 ;	 function sendNewLine
                                    502 ;	-----------------------------------------
      000A41                        503 _sendNewLine:
                                    504 ;	UART/UART.c:49: sendString("\r\n",2);
      000A41 75 50 02         [24]  505 	mov	_sendString_PARM_2,#0x02
      000A44 75 51 00         [24]  506 	mov	(_sendString_PARM_2 + 1),#0x00
      000A47 90 0D 87         [24]  507 	mov	dptr,#___str_0
      000A4A 75 F0 80         [24]  508 	mov	b,#0x80
      000A4D 02 0A 92         [24]  509 	ljmp	_sendString
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'initUart'
                                    512 ;------------------------------------------------------------
                                    513 ;baud                      Allocated to registers r6 r7 
                                    514 ;------------------------------------------------------------
                                    515 ;	UART/UART.c:58: void initUart(unsigned int baud)
                                    516 ;	-----------------------------------------
                                    517 ;	 function initUart
                                    518 ;	-----------------------------------------
      000A50                        519 _initUart:
      000A50 AE 82            [24]  520 	mov	r6,dpl
      000A52 AF 83            [24]  521 	mov	r7,dph
                                    522 ;	UART/UART.c:60: EA = 1;
      000A54 D2 AF            [12]  523 	setb	_EA
                                    524 ;	UART/UART.c:61: SCON = 0x50;
      000A56 75 98 50         [24]  525 	mov	_SCON,#0x50
                                    526 ;	UART/UART.c:62: TMOD &= 0x0F;
      000A59 53 89 0F         [24]  527 	anl	_TMOD,#0x0F
                                    528 ;	UART/UART.c:63: TMOD |= 0x20; //配置T1为模式2
      000A5C 43 89 20         [24]  529 	orl	_TMOD,#0x20
                                    530 ;	UART/UART.c:64: TH1 = 256-(11059200/12/32)/baud;
      000A5F 8E 6D            [24]  531 	mov	__divslong_PARM_2,r6
      000A61 8F 6E            [24]  532 	mov	(__divslong_PARM_2 + 1),r7
      000A63 75 6F 00         [24]  533 	mov	(__divslong_PARM_2 + 2),#0x00
      000A66 75 70 00         [24]  534 	mov	(__divslong_PARM_2 + 3),#0x00
      000A69 90 70 80         [24]  535 	mov	dptr,#0x7080
      000A6C E4               [12]  536 	clr	a
      000A6D F5 F0            [12]  537 	mov	b,a
      000A6F 12 0D 15         [24]  538 	lcall	__divslong
      000A72 AC 82            [24]  539 	mov	r4,dpl
      000A74 C3               [12]  540 	clr	c
      000A75 E4               [12]  541 	clr	a
      000A76 9C               [12]  542 	subb	a,r4
      000A77 F5 8D            [12]  543 	mov	_TH1,a
                                    544 ;	UART/UART.c:65: TL1 = TH1; //初始值等于重载值
      000A79 85 8D 8B         [24]  545 	mov	_TL1,_TH1
                                    546 ;	UART/UART.c:66: ET1 = 0;   //禁止T1的中断
      000A7C C2 AB            [12]  547 	clr	_ET1
                                    548 ;	UART/UART.c:67: ES = 1;    //使能串口中断
      000A7E D2 AC            [12]  549 	setb	_ES
                                    550 ;	UART/UART.c:68: TR1 = 1;   //启动T1
      000A80 D2 8E            [12]  551 	setb	_TR1
      000A82 22               [24]  552 	ret
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'sendChar'
                                    555 ;------------------------------------------------------------
                                    556 ;ch                        Allocated to registers 
                                    557 ;------------------------------------------------------------
                                    558 ;	UART/UART.c:77: void sendChar(char ch)
                                    559 ;	-----------------------------------------
                                    560 ;	 function sendChar
                                    561 ;	-----------------------------------------
      000A83                        562 _sendChar:
      000A83 85 82 99         [24]  563 	mov	_SBUF,dpl
                                    564 ;	UART/UART.c:80: while( sendstatus == 0 ); //在发送成功时,中断会将sendstatus置0,
      000A86                        565 00101$:
      000A86 E5 4A            [12]  566 	mov	a,_sendstatus
      000A88 45 4B            [12]  567 	orl	a,(_sendstatus + 1)
      000A8A 60 FA            [24]  568 	jz	00101$
                                    569 ;	UART/UART.c:81: sendstatus = 0;
      000A8C E4               [12]  570 	clr	a
      000A8D F5 4A            [12]  571 	mov	_sendstatus,a
      000A8F F5 4B            [12]  572 	mov	(_sendstatus + 1),a
      000A91 22               [24]  573 	ret
                                    574 ;------------------------------------------------------------
                                    575 ;Allocation info for local variables in function 'sendString'
                                    576 ;------------------------------------------------------------
                                    577 ;len                       Allocated with name '_sendString_PARM_2'
                                    578 ;str                       Allocated to registers r5 r6 r7 
                                    579 ;i                         Allocated to registers r3 r4 
                                    580 ;------------------------------------------------------------
                                    581 ;	UART/UART.c:91: void sendString(char * str, int len)
                                    582 ;	-----------------------------------------
                                    583 ;	 function sendString
                                    584 ;	-----------------------------------------
      000A92                        585 _sendString:
      000A92 AD 82            [24]  586 	mov	r5,dpl
      000A94 AE 83            [24]  587 	mov	r6,dph
      000A96 AF F0            [24]  588 	mov	r7,b
                                    589 ;	UART/UART.c:94: for(i = 0; i < len; i++)
      000A98 7B 00            [12]  590 	mov	r3,#0x00
      000A9A 7C 00            [12]  591 	mov	r4,#0x00
      000A9C                        592 00103$:
      000A9C C3               [12]  593 	clr	c
      000A9D EB               [12]  594 	mov	a,r3
      000A9E 95 50            [12]  595 	subb	a,_sendString_PARM_2
      000AA0 EC               [12]  596 	mov	a,r4
      000AA1 64 80            [12]  597 	xrl	a,#0x80
      000AA3 85 51 F0         [24]  598 	mov	b,(_sendString_PARM_2 + 1)
      000AA6 63 F0 80         [24]  599 	xrl	b,#0x80
      000AA9 95 F0            [12]  600 	subb	a,b
      000AAB 50 31            [24]  601 	jnc	00105$
                                    602 ;	UART/UART.c:96: sendChar( str[i] );
      000AAD EB               [12]  603 	mov	a,r3
      000AAE 2D               [12]  604 	add	a,r5
      000AAF F8               [12]  605 	mov	r0,a
      000AB0 EC               [12]  606 	mov	a,r4
      000AB1 3E               [12]  607 	addc	a,r6
      000AB2 F9               [12]  608 	mov	r1,a
      000AB3 8F 02            [24]  609 	mov	ar2,r7
      000AB5 88 82            [24]  610 	mov	dpl,r0
      000AB7 89 83            [24]  611 	mov	dph,r1
      000AB9 8A F0            [24]  612 	mov	b,r2
      000ABB 12 0D 67         [24]  613 	lcall	__gptrget
      000ABE F5 82            [12]  614 	mov	dpl,a
      000AC0 C0 07            [24]  615 	push	ar7
      000AC2 C0 06            [24]  616 	push	ar6
      000AC4 C0 05            [24]  617 	push	ar5
      000AC6 C0 04            [24]  618 	push	ar4
      000AC8 C0 03            [24]  619 	push	ar3
      000ACA 12 0A 83         [24]  620 	lcall	_sendChar
      000ACD D0 03            [24]  621 	pop	ar3
      000ACF D0 04            [24]  622 	pop	ar4
      000AD1 D0 05            [24]  623 	pop	ar5
      000AD3 D0 06            [24]  624 	pop	ar6
      000AD5 D0 07            [24]  625 	pop	ar7
                                    626 ;	UART/UART.c:94: for(i = 0; i < len; i++)
      000AD7 0B               [12]  627 	inc	r3
      000AD8 BB 00 C1         [24]  628 	cjne	r3,#0x00,00103$
      000ADB 0C               [12]  629 	inc	r4
      000ADC 80 BE            [24]  630 	sjmp	00103$
      000ADE                        631 00105$:
      000ADE 22               [24]  632 	ret
                                    633 ;------------------------------------------------------------
                                    634 ;Allocation info for local variables in function 'readChar'
                                    635 ;------------------------------------------------------------
                                    636 ;ch                        Allocated to registers r5 
                                    637 ;------------------------------------------------------------
                                    638 ;	UART/UART.c:106: char readChar()
                                    639 ;	-----------------------------------------
                                    640 ;	 function readChar
                                    641 ;	-----------------------------------------
      000ADF                        642 _readChar:
                                    643 ;	UART/UART.c:108: if(start != end)
      000ADF E5 46            [12]  644 	mov	a,_end
      000AE1 B5 48 07         [24]  645 	cjne	a,_start,00114$
      000AE4 E5 47            [12]  646 	mov	a,(_end + 1)
      000AE6 B5 49 02         [24]  647 	cjne	a,(_start + 1),00114$
      000AE9 80 32            [24]  648 	sjmp	00104$
      000AEB                        649 00114$:
                                    650 ;	UART/UART.c:110: char ch = UART0_CHAR[start];
      000AEB E5 48            [12]  651 	mov	a,_start
      000AED 24 96            [12]  652 	add	a,#_UART0_CHAR
      000AEF FE               [12]  653 	mov	r6,a
      000AF0 E5 49            [12]  654 	mov	a,(_start + 1)
      000AF2 34 00            [12]  655 	addc	a,#(_UART0_CHAR >> 8)
      000AF4 FF               [12]  656 	mov	r7,a
      000AF5 8E 82            [24]  657 	mov	dpl,r6
      000AF7 8F 83            [24]  658 	mov	dph,r7
      000AF9 E0               [24]  659 	movx	a,@dptr
      000AFA FD               [12]  660 	mov	r5,a
                                    661 ;	UART/UART.c:111: UART0_CHAR[start] = 0;
      000AFB 8E 82            [24]  662 	mov	dpl,r6
      000AFD 8F 83            [24]  663 	mov	dph,r7
      000AFF E4               [12]  664 	clr	a
      000B00 F0               [24]  665 	movx	@dptr,a
                                    666 ;	UART/UART.c:112: start++;
      000B01 05 48            [12]  667 	inc	_start
                                    668 ;	genFromRTrack removed	clr	a
      000B03 B5 48 02         [24]  669 	cjne	a,_start,00115$
      000B06 05 49            [12]  670 	inc	(_start + 1)
      000B08                        671 00115$:
                                    672 ;	UART/UART.c:113: if(start >= RX_BUFFER_SIZE)
      000B08 C3               [12]  673 	clr	c
      000B09 E5 48            [12]  674 	mov	a,_start
      000B0B 94 32            [12]  675 	subb	a,#0x32
      000B0D E5 49            [12]  676 	mov	a,(_start + 1)
      000B0F 64 80            [12]  677 	xrl	a,#0x80
      000B11 94 80            [12]  678 	subb	a,#0x80
      000B13 40 05            [24]  679 	jc	00102$
                                    680 ;	UART/UART.c:115: start = 0;
      000B15 E4               [12]  681 	clr	a
      000B16 F5 48            [12]  682 	mov	_start,a
      000B18 F5 49            [12]  683 	mov	(_start + 1),a
      000B1A                        684 00102$:
                                    685 ;	UART/UART.c:118: return ch;
      000B1A 8D 82            [24]  686 	mov	dpl,r5
      000B1C 22               [24]  687 	ret
      000B1D                        688 00104$:
                                    689 ;	UART/UART.c:122: return 0;
      000B1D 75 82 00         [24]  690 	mov	dpl,#0x00
      000B20 22               [24]  691 	ret
                                    692 ;------------------------------------------------------------
                                    693 ;Allocation info for local variables in function 'readString'
                                    694 ;------------------------------------------------------------
                                    695 ;len                       Allocated with name '_readString_PARM_2'
                                    696 ;str                       Allocated with name '_readString_str_1_28'
                                    697 ;ch                        Allocated to registers r4 
                                    698 ;i                         Allocated to registers r2 r3 
                                    699 ;------------------------------------------------------------
                                    700 ;	UART/UART.c:133: int readString(char * str, int len)
                                    701 ;	-----------------------------------------
                                    702 ;	 function readString
                                    703 ;	-----------------------------------------
      000B21                        704 _readString:
      000B21 85 82 54         [24]  705 	mov	_readString_str_1_28,dpl
      000B24 85 83 55         [24]  706 	mov	(_readString_str_1_28 + 1),dph
      000B27 85 F0 56         [24]  707 	mov	(_readString_str_1_28 + 2),b
                                    708 ;	UART/UART.c:137: if(len <= 0)
      000B2A C3               [12]  709 	clr	c
      000B2B E4               [12]  710 	clr	a
      000B2C 95 52            [12]  711 	subb	a,_readString_PARM_2
      000B2E 74 80            [12]  712 	mov	a,#(0x00 ^ 0x80)
      000B30 85 53 F0         [24]  713 	mov	b,(_readString_PARM_2 + 1)
      000B33 63 F0 80         [24]  714 	xrl	b,#0x80
      000B36 95 F0            [12]  715 	subb	a,b
      000B38 40 04            [24]  716 	jc	00102$
                                    717 ;	UART/UART.c:139: return -1;
      000B3A 90 FF FF         [24]  718 	mov	dptr,#0xFFFF
      000B3D 22               [24]  719 	ret
      000B3E                        720 00102$:
                                    721 ;	UART/UART.c:141: ch = readChar();
      000B3E 12 0A DF         [24]  722 	lcall	_readChar
      000B41 AC 82            [24]  723 	mov	r4,dpl
                                    724 ;	UART/UART.c:142: while( ch != 0 )
      000B43 7A 00            [12]  725 	mov	r2,#0x00
      000B45 7B 00            [12]  726 	mov	r3,#0x00
      000B47                        727 00106$:
      000B47 EC               [12]  728 	mov	a,r4
      000B48 60 39            [24]  729 	jz	00108$
                                    730 ;	UART/UART.c:144: *(str+i) = ch;
      000B4A EA               [12]  731 	mov	a,r2
      000B4B 25 54            [12]  732 	add	a,_readString_str_1_28
      000B4D F8               [12]  733 	mov	r0,a
      000B4E EB               [12]  734 	mov	a,r3
      000B4F 35 55            [12]  735 	addc	a,(_readString_str_1_28 + 1)
      000B51 F9               [12]  736 	mov	r1,a
      000B52 AF 56            [24]  737 	mov	r7,(_readString_str_1_28 + 2)
      000B54 88 82            [24]  738 	mov	dpl,r0
      000B56 89 83            [24]  739 	mov	dph,r1
      000B58 8F F0            [24]  740 	mov	b,r7
      000B5A EC               [12]  741 	mov	a,r4
      000B5B 12 0C DD         [24]  742 	lcall	__gptrput
                                    743 ;	UART/UART.c:145: i++;
      000B5E 0A               [12]  744 	inc	r2
      000B5F BA 00 01         [24]  745 	cjne	r2,#0x00,00126$
      000B62 0B               [12]  746 	inc	r3
      000B63                        747 00126$:
                                    748 ;	UART/UART.c:146: if( i < len )
      000B63 C3               [12]  749 	clr	c
      000B64 EA               [12]  750 	mov	a,r2
      000B65 95 52            [12]  751 	subb	a,_readString_PARM_2
      000B67 EB               [12]  752 	mov	a,r3
      000B68 64 80            [12]  753 	xrl	a,#0x80
      000B6A 85 53 F0         [24]  754 	mov	b,(_readString_PARM_2 + 1)
      000B6D 63 F0 80         [24]  755 	xrl	b,#0x80
      000B70 95 F0            [12]  756 	subb	a,b
      000B72 50 0F            [24]  757 	jnc	00108$
                                    758 ;	UART/UART.c:148: ch = readChar();
      000B74 C0 03            [24]  759 	push	ar3
      000B76 C0 02            [24]  760 	push	ar2
      000B78 12 0A DF         [24]  761 	lcall	_readChar
      000B7B AC 82            [24]  762 	mov	r4,dpl
      000B7D D0 02            [24]  763 	pop	ar2
      000B7F D0 03            [24]  764 	pop	ar3
                                    765 ;	UART/UART.c:152: break;
      000B81 80 C4            [24]  766 	sjmp	00106$
      000B83                        767 00108$:
                                    768 ;	UART/UART.c:155: return i;
      000B83 8A 82            [24]  769 	mov	dpl,r2
      000B85 8B 83            [24]  770 	mov	dph,r3
      000B87 22               [24]  771 	ret
                                    772 ;------------------------------------------------------------
                                    773 ;Allocation info for local variables in function 'readStringWait'
                                    774 ;------------------------------------------------------------
                                    775 ;len                       Allocated with name '_readStringWait_PARM_2'
                                    776 ;str                       Allocated with name '_readStringWait_str_1_34'
                                    777 ;i                         Allocated to registers r3 r4 
                                    778 ;------------------------------------------------------------
                                    779 ;	UART/UART.c:166: void readStringWait(char * str, int len)
                                    780 ;	-----------------------------------------
                                    781 ;	 function readStringWait
                                    782 ;	-----------------------------------------
      000B88                        783 _readStringWait:
      000B88 85 82 59         [24]  784 	mov	_readStringWait_str_1_34,dpl
      000B8B 85 83 5A         [24]  785 	mov	(_readStringWait_str_1_34 + 1),dph
      000B8E 85 F0 5B         [24]  786 	mov	(_readStringWait_str_1_34 + 2),b
                                    787 ;	UART/UART.c:168: unsigned int i = 0;
      000B91 7B 00            [12]  788 	mov	r3,#0x00
      000B93 7C 00            [12]  789 	mov	r4,#0x00
                                    790 ;	UART/UART.c:169: while(i < len)
      000B95                        791 00101$:
      000B95 A9 57            [24]  792 	mov	r1,_readStringWait_PARM_2
      000B97 AA 58            [24]  793 	mov	r2,(_readStringWait_PARM_2 + 1)
      000B99 C3               [12]  794 	clr	c
      000B9A EB               [12]  795 	mov	a,r3
      000B9B 99               [12]  796 	subb	a,r1
      000B9C EC               [12]  797 	mov	a,r4
      000B9D 9A               [12]  798 	subb	a,r2
      000B9E 50 30            [24]  799 	jnc	00104$
                                    800 ;	UART/UART.c:171: i += readString(str+i,len-i);
      000BA0 EB               [12]  801 	mov	a,r3
      000BA1 25 59            [12]  802 	add	a,_readStringWait_str_1_34
      000BA3 F8               [12]  803 	mov	r0,a
      000BA4 EC               [12]  804 	mov	a,r4
      000BA5 35 5A            [12]  805 	addc	a,(_readStringWait_str_1_34 + 1)
      000BA7 FE               [12]  806 	mov	r6,a
      000BA8 AF 5B            [24]  807 	mov	r7,(_readStringWait_str_1_34 + 2)
      000BAA E9               [12]  808 	mov	a,r1
      000BAB C3               [12]  809 	clr	c
      000BAC 9B               [12]  810 	subb	a,r3
      000BAD F5 52            [12]  811 	mov	_readString_PARM_2,a
      000BAF EA               [12]  812 	mov	a,r2
      000BB0 9C               [12]  813 	subb	a,r4
      000BB1 F5 53            [12]  814 	mov	(_readString_PARM_2 + 1),a
      000BB3 88 82            [24]  815 	mov	dpl,r0
      000BB5 8E 83            [24]  816 	mov	dph,r6
      000BB7 8F F0            [24]  817 	mov	b,r7
      000BB9 C0 04            [24]  818 	push	ar4
      000BBB C0 03            [24]  819 	push	ar3
      000BBD 12 0B 21         [24]  820 	lcall	_readString
      000BC0 AE 82            [24]  821 	mov	r6,dpl
      000BC2 AF 83            [24]  822 	mov	r7,dph
      000BC4 D0 03            [24]  823 	pop	ar3
      000BC6 D0 04            [24]  824 	pop	ar4
      000BC8 EE               [12]  825 	mov	a,r6
      000BC9 2B               [12]  826 	add	a,r3
      000BCA FB               [12]  827 	mov	r3,a
      000BCB EF               [12]  828 	mov	a,r7
      000BCC 3C               [12]  829 	addc	a,r4
      000BCD FC               [12]  830 	mov	r4,a
      000BCE 80 C5            [24]  831 	sjmp	00101$
      000BD0                        832 00104$:
      000BD0 22               [24]  833 	ret
                                    834 ;------------------------------------------------------------
                                    835 ;Allocation info for local variables in function 'setUartRXFun'
                                    836 ;------------------------------------------------------------
                                    837 ;inUART0_RXISR_function    Allocated to registers 
                                    838 ;------------------------------------------------------------
                                    839 ;	UART/UART.c:181: void setUartRXFun( void (*inUART0_RXISR_function)())
                                    840 ;	-----------------------------------------
                                    841 ;	 function setUartRXFun
                                    842 ;	-----------------------------------------
      000BD1                        843 _setUartRXFun:
      000BD1 85 82 4C         [24]  844 	mov	_UART0_RXISR_function,dpl
      000BD4 85 83 4D         [24]  845 	mov	(_UART0_RXISR_function + 1),dph
                                    846 ;	UART/UART.c:183: UART0_RXISR_function = inUART0_RXISR_function;
      000BD7 22               [24]  847 	ret
                                    848 ;------------------------------------------------------------
                                    849 ;Allocation info for local variables in function 'setUartTXFun'
                                    850 ;------------------------------------------------------------
                                    851 ;inUART0_TXISR_function    Allocated to registers 
                                    852 ;------------------------------------------------------------
                                    853 ;	UART/UART.c:193: void setUartTXFun( void (*inUART0_TXISR_function)())
                                    854 ;	-----------------------------------------
                                    855 ;	 function setUartTXFun
                                    856 ;	-----------------------------------------
      000BD8                        857 _setUartTXFun:
      000BD8 85 82 4E         [24]  858 	mov	_UART0_TXISR_function,dpl
      000BDB 85 83 4F         [24]  859 	mov	(_UART0_TXISR_function + 1),dph
                                    860 ;	UART/UART.c:195: UART0_TXISR_function = inUART0_TXISR_function;
      000BDE 22               [24]  861 	ret
                                    862 	.area CSEG    (CODE)
                                    863 	.area CONST   (CODE)
      000D87                        864 ___str_0:
      000D87 0D                     865 	.db 0x0D
      000D88 0A                     866 	.db 0x0A
      000D89 00                     867 	.db 0x00
                                    868 	.area XINIT   (CODE)
                                    869 	.area CABS    (ABS,CODE)
