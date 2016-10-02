                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Sun Oct  2 10:13:52 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module TIMER
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _time0Init
                                     13 	.globl _timer0SetValue
                                     14 	.globl _Timer0Stop
                                     15 	.globl _Timer0Start
                                     16 	.globl _TF2
                                     17 	.globl _EXF2
                                     18 	.globl _RCLK
                                     19 	.globl _TCLK
                                     20 	.globl _EXEN2
                                     21 	.globl _TR2
                                     22 	.globl _C_T2
                                     23 	.globl _CP_RL2
                                     24 	.globl _T2CON_7
                                     25 	.globl _T2CON_6
                                     26 	.globl _T2CON_5
                                     27 	.globl _T2CON_4
                                     28 	.globl _T2CON_3
                                     29 	.globl _T2CON_2
                                     30 	.globl _T2CON_1
                                     31 	.globl _T2CON_0
                                     32 	.globl _PT2
                                     33 	.globl _ET2
                                     34 	.globl _CY
                                     35 	.globl _AC
                                     36 	.globl _F0
                                     37 	.globl _RS1
                                     38 	.globl _RS0
                                     39 	.globl _OV
                                     40 	.globl _F1
                                     41 	.globl _P
                                     42 	.globl _PS
                                     43 	.globl _PT1
                                     44 	.globl _PX1
                                     45 	.globl _PT0
                                     46 	.globl _PX0
                                     47 	.globl _RD
                                     48 	.globl _WR
                                     49 	.globl _T1
                                     50 	.globl _T0
                                     51 	.globl _INT1
                                     52 	.globl _INT0
                                     53 	.globl _TXD
                                     54 	.globl _RXD
                                     55 	.globl _P3_7
                                     56 	.globl _P3_6
                                     57 	.globl _P3_5
                                     58 	.globl _P3_4
                                     59 	.globl _P3_3
                                     60 	.globl _P3_2
                                     61 	.globl _P3_1
                                     62 	.globl _P3_0
                                     63 	.globl _EA
                                     64 	.globl _ES
                                     65 	.globl _ET1
                                     66 	.globl _EX1
                                     67 	.globl _ET0
                                     68 	.globl _EX0
                                     69 	.globl _P2_7
                                     70 	.globl _P2_6
                                     71 	.globl _P2_5
                                     72 	.globl _P2_4
                                     73 	.globl _P2_3
                                     74 	.globl _P2_2
                                     75 	.globl _P2_1
                                     76 	.globl _P2_0
                                     77 	.globl _SM0
                                     78 	.globl _SM1
                                     79 	.globl _SM2
                                     80 	.globl _REN
                                     81 	.globl _TB8
                                     82 	.globl _RB8
                                     83 	.globl _TI
                                     84 	.globl _RI
                                     85 	.globl _P1_7
                                     86 	.globl _P1_6
                                     87 	.globl _P1_5
                                     88 	.globl _P1_4
                                     89 	.globl _P1_3
                                     90 	.globl _P1_2
                                     91 	.globl _P1_1
                                     92 	.globl _P1_0
                                     93 	.globl _TF1
                                     94 	.globl _TR1
                                     95 	.globl _TF0
                                     96 	.globl _TR0
                                     97 	.globl _IE1
                                     98 	.globl _IT1
                                     99 	.globl _IE0
                                    100 	.globl _IT0
                                    101 	.globl _P0_7
                                    102 	.globl _P0_6
                                    103 	.globl _P0_5
                                    104 	.globl _P0_4
                                    105 	.globl _P0_3
                                    106 	.globl _P0_2
                                    107 	.globl _P0_1
                                    108 	.globl _P0_0
                                    109 	.globl _TH2
                                    110 	.globl _TL2
                                    111 	.globl _RCAP2H
                                    112 	.globl _RCAP2L
                                    113 	.globl _T2CON
                                    114 	.globl _B
                                    115 	.globl _ACC
                                    116 	.globl _PSW
                                    117 	.globl _IP
                                    118 	.globl _P3
                                    119 	.globl _IE
                                    120 	.globl _P2
                                    121 	.globl _SBUF
                                    122 	.globl _SCON
                                    123 	.globl _P1
                                    124 	.globl _TH1
                                    125 	.globl _TH0
                                    126 	.globl _TL1
                                    127 	.globl _TL0
                                    128 	.globl _TMOD
                                    129 	.globl _TCON
                                    130 	.globl _PCON
                                    131 	.globl _DPH
                                    132 	.globl _DPL
                                    133 	.globl _SP
                                    134 	.globl _P0
                                    135 	.globl _timer0TaskStruct
                                    136 	.globl _addTIMER0Task_PARM_3
                                    137 	.globl _addTIMER0Task_PARM_2
                                    138 	.globl _TIMER2FUN
                                    139 	.globl _taskCount
                                    140 	.globl _timerCount
                                    141 	.globl _timerClock
                                    142 	.globl _getTaskCount
                                    143 	.globl _addTIMER0Task
                                    144 	.globl _delTIMER0Task
                                    145 	.globl _InterruptTimer0
                                    146 	.globl _updateTIMER0
                                    147 	.globl _delay10us
                                    148 	.globl _delay10usValue
                                    149 	.globl _initTimer2
                                    150 	.globl _startTimer2
                                    151 	.globl _stopTimer2
                                    152 	.globl _InterruptTimer2
                                    153 	.globl _setTimer2Fun
                                    154 ;--------------------------------------------------------
                                    155 ; special function registers
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           000080   159 _P0	=	0x0080
                           000081   160 _SP	=	0x0081
                           000082   161 _DPL	=	0x0082
                           000083   162 _DPH	=	0x0083
                           000087   163 _PCON	=	0x0087
                           000088   164 _TCON	=	0x0088
                           000089   165 _TMOD	=	0x0089
                           00008A   166 _TL0	=	0x008a
                           00008B   167 _TL1	=	0x008b
                           00008C   168 _TH0	=	0x008c
                           00008D   169 _TH1	=	0x008d
                           000090   170 _P1	=	0x0090
                           000098   171 _SCON	=	0x0098
                           000099   172 _SBUF	=	0x0099
                           0000A0   173 _P2	=	0x00a0
                           0000A8   174 _IE	=	0x00a8
                           0000B0   175 _P3	=	0x00b0
                           0000B8   176 _IP	=	0x00b8
                           0000D0   177 _PSW	=	0x00d0
                           0000E0   178 _ACC	=	0x00e0
                           0000F0   179 _B	=	0x00f0
                           0000C8   180 _T2CON	=	0x00c8
                           0000CA   181 _RCAP2L	=	0x00ca
                           0000CB   182 _RCAP2H	=	0x00cb
                           0000CC   183 _TL2	=	0x00cc
                           0000CD   184 _TH2	=	0x00cd
                                    185 ;--------------------------------------------------------
                                    186 ; special function bits
                                    187 ;--------------------------------------------------------
                                    188 	.area RSEG    (ABS,DATA)
      000000                        189 	.org 0x0000
                           000080   190 _P0_0	=	0x0080
                           000081   191 _P0_1	=	0x0081
                           000082   192 _P0_2	=	0x0082
                           000083   193 _P0_3	=	0x0083
                           000084   194 _P0_4	=	0x0084
                           000085   195 _P0_5	=	0x0085
                           000086   196 _P0_6	=	0x0086
                           000087   197 _P0_7	=	0x0087
                           000088   198 _IT0	=	0x0088
                           000089   199 _IE0	=	0x0089
                           00008A   200 _IT1	=	0x008a
                           00008B   201 _IE1	=	0x008b
                           00008C   202 _TR0	=	0x008c
                           00008D   203 _TF0	=	0x008d
                           00008E   204 _TR1	=	0x008e
                           00008F   205 _TF1	=	0x008f
                           000090   206 _P1_0	=	0x0090
                           000091   207 _P1_1	=	0x0091
                           000092   208 _P1_2	=	0x0092
                           000093   209 _P1_3	=	0x0093
                           000094   210 _P1_4	=	0x0094
                           000095   211 _P1_5	=	0x0095
                           000096   212 _P1_6	=	0x0096
                           000097   213 _P1_7	=	0x0097
                           000098   214 _RI	=	0x0098
                           000099   215 _TI	=	0x0099
                           00009A   216 _RB8	=	0x009a
                           00009B   217 _TB8	=	0x009b
                           00009C   218 _REN	=	0x009c
                           00009D   219 _SM2	=	0x009d
                           00009E   220 _SM1	=	0x009e
                           00009F   221 _SM0	=	0x009f
                           0000A0   222 _P2_0	=	0x00a0
                           0000A1   223 _P2_1	=	0x00a1
                           0000A2   224 _P2_2	=	0x00a2
                           0000A3   225 _P2_3	=	0x00a3
                           0000A4   226 _P2_4	=	0x00a4
                           0000A5   227 _P2_5	=	0x00a5
                           0000A6   228 _P2_6	=	0x00a6
                           0000A7   229 _P2_7	=	0x00a7
                           0000A8   230 _EX0	=	0x00a8
                           0000A9   231 _ET0	=	0x00a9
                           0000AA   232 _EX1	=	0x00aa
                           0000AB   233 _ET1	=	0x00ab
                           0000AC   234 _ES	=	0x00ac
                           0000AF   235 _EA	=	0x00af
                           0000B0   236 _P3_0	=	0x00b0
                           0000B1   237 _P3_1	=	0x00b1
                           0000B2   238 _P3_2	=	0x00b2
                           0000B3   239 _P3_3	=	0x00b3
                           0000B4   240 _P3_4	=	0x00b4
                           0000B5   241 _P3_5	=	0x00b5
                           0000B6   242 _P3_6	=	0x00b6
                           0000B7   243 _P3_7	=	0x00b7
                           0000B0   244 _RXD	=	0x00b0
                           0000B1   245 _TXD	=	0x00b1
                           0000B2   246 _INT0	=	0x00b2
                           0000B3   247 _INT1	=	0x00b3
                           0000B4   248 _T0	=	0x00b4
                           0000B5   249 _T1	=	0x00b5
                           0000B6   250 _WR	=	0x00b6
                           0000B7   251 _RD	=	0x00b7
                           0000B8   252 _PX0	=	0x00b8
                           0000B9   253 _PT0	=	0x00b9
                           0000BA   254 _PX1	=	0x00ba
                           0000BB   255 _PT1	=	0x00bb
                           0000BC   256 _PS	=	0x00bc
                           0000D0   257 _P	=	0x00d0
                           0000D1   258 _F1	=	0x00d1
                           0000D2   259 _OV	=	0x00d2
                           0000D3   260 _RS0	=	0x00d3
                           0000D4   261 _RS1	=	0x00d4
                           0000D5   262 _F0	=	0x00d5
                           0000D6   263 _AC	=	0x00d6
                           0000D7   264 _CY	=	0x00d7
                           0000AD   265 _ET2	=	0x00ad
                           0000BD   266 _PT2	=	0x00bd
                           0000C8   267 _T2CON_0	=	0x00c8
                           0000C9   268 _T2CON_1	=	0x00c9
                           0000CA   269 _T2CON_2	=	0x00ca
                           0000CB   270 _T2CON_3	=	0x00cb
                           0000CC   271 _T2CON_4	=	0x00cc
                           0000CD   272 _T2CON_5	=	0x00cd
                           0000CE   273 _T2CON_6	=	0x00ce
                           0000CF   274 _T2CON_7	=	0x00cf
                           0000C8   275 _CP_RL2	=	0x00c8
                           0000C9   276 _C_T2	=	0x00c9
                           0000CA   277 _TR2	=	0x00ca
                           0000CB   278 _EXEN2	=	0x00cb
                           0000CC   279 _TCLK	=	0x00cc
                           0000CD   280 _RCLK	=	0x00cd
                           0000CE   281 _EXF2	=	0x00ce
                           0000CF   282 _TF2	=	0x00cf
                                    283 ;--------------------------------------------------------
                                    284 ; overlayable register banks
                                    285 ;--------------------------------------------------------
                                    286 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        287 	.ds 8
                                    288 ;--------------------------------------------------------
                                    289 ; overlayable bit register bank
                                    290 ;--------------------------------------------------------
                                    291 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        292 bits:
      000020                        293 	.ds 1
                           008000   294 	b0 = bits[0]
                           008100   295 	b1 = bits[1]
                           008200   296 	b2 = bits[2]
                           008300   297 	b3 = bits[3]
                           008400   298 	b4 = bits[4]
                           008500   299 	b5 = bits[5]
                           008600   300 	b6 = bits[6]
                           008700   301 	b7 = bits[7]
                                    302 ;--------------------------------------------------------
                                    303 ; internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area DSEG    (DATA)
      000021                        306 _timerClock::
      000021                        307 	.ds 4
      000025                        308 _timerCount::
      000025                        309 	.ds 2
      000027                        310 _taskCount::
      000027                        311 	.ds 2
      000029                        312 _TIMER2FUN::
      000029                        313 	.ds 2
      00002B                        314 _addTIMER0Task_PARM_2:
      00002B                        315 	.ds 2
      00002D                        316 _addTIMER0Task_PARM_3:
      00002D                        317 	.ds 2
      00002F                        318 _addTIMER0Task_inTimerMs_1_13:
      00002F                        319 	.ds 2
      000031                        320 _addTIMER0Task_sloc0_1_0:
      000031                        321 	.ds 2
      000033                        322 _addTIMER0Task_sloc1_1_0:
      000033                        323 	.ds 2
      000035                        324 _addTIMER0Task_sloc2_1_0:
      000035                        325 	.ds 4
      000039                        326 _delTIMER0Task_intag_1_18:
      000039                        327 	.ds 2
      00003B                        328 _delTIMER0Task_i_1_19:
      00003B                        329 	.ds 2
      00003D                        330 _updateTIMER0_i_1_24:
      00003D                        331 	.ds 2
                                    332 ;--------------------------------------------------------
                                    333 ; overlayable items in internal ram 
                                    334 ;--------------------------------------------------------
                                    335 	.area	OSEG    (OVR,DATA)
                                    336 	.area	OSEG    (OVR,DATA)
                                    337 	.area	OSEG    (OVR,DATA)
                                    338 ;--------------------------------------------------------
                                    339 ; indirectly addressable internal ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area ISEG    (DATA)
                                    342 ;--------------------------------------------------------
                                    343 ; absolute internal ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area IABS    (ABS,DATA)
                                    346 	.area IABS    (ABS,DATA)
                                    347 ;--------------------------------------------------------
                                    348 ; bit data
                                    349 ;--------------------------------------------------------
                                    350 	.area BSEG    (BIT)
                                    351 ;--------------------------------------------------------
                                    352 ; paged external ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area PSEG    (PAG,XDATA)
                                    355 ;--------------------------------------------------------
                                    356 ; external ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area XSEG    (XDATA)
      000001                        359 _timer0TaskStruct::
      000001                        360 	.ds 120
                                    361 ;--------------------------------------------------------
                                    362 ; absolute external ram data
                                    363 ;--------------------------------------------------------
                                    364 	.area XABS    (ABS,XDATA)
                                    365 ;--------------------------------------------------------
                                    366 ; external initialized ram data
                                    367 ;--------------------------------------------------------
                                    368 	.area XISEG   (XDATA)
                                    369 	.area HOME    (CODE)
                                    370 	.area GSINIT0 (CODE)
                                    371 	.area GSINIT1 (CODE)
                                    372 	.area GSINIT2 (CODE)
                                    373 	.area GSINIT3 (CODE)
                                    374 	.area GSINIT4 (CODE)
                                    375 	.area GSINIT5 (CODE)
                                    376 	.area GSINIT  (CODE)
                                    377 	.area GSFINAL (CODE)
                                    378 	.area CSEG    (CODE)
                                    379 ;--------------------------------------------------------
                                    380 ; global & static initialisations
                                    381 ;--------------------------------------------------------
                                    382 	.area HOME    (CODE)
                                    383 	.area GSINIT  (CODE)
                                    384 	.area GSFINAL (CODE)
                                    385 	.area GSINIT  (CODE)
                                    386 ;	TIMER/TIMER.c:14: unsigned long timerClock = 0;
      00008F E4               [12]  387 	clr	a
      000090 F5 21            [12]  388 	mov	_timerClock,a
      000092 F5 22            [12]  389 	mov	(_timerClock + 1),a
      000094 F5 23            [12]  390 	mov	(_timerClock + 2),a
      000096 F5 24            [12]  391 	mov	(_timerClock + 3),a
                                    392 ;	TIMER/TIMER.c:16: unsigned int timerCount = 20;  //定义初始定时周期
      000098 75 25 14         [24]  393 	mov	_timerCount,#0x14
                                    394 ;	1-genFromRTrack replaced	mov	(_timerCount + 1),#0x00
      00009B F5 26            [12]  395 	mov	(_timerCount + 1),a
                                    396 ;	TIMER/TIMER.c:17: int taskCount = 0;
      00009D F5 27            [12]  397 	mov	_taskCount,a
      00009F F5 28            [12]  398 	mov	(_taskCount + 1),a
                                    399 ;--------------------------------------------------------
                                    400 ; Home
                                    401 ;--------------------------------------------------------
                                    402 	.area HOME    (CODE)
                                    403 	.area HOME    (CODE)
                                    404 ;--------------------------------------------------------
                                    405 ; code
                                    406 ;--------------------------------------------------------
                                    407 	.area CSEG    (CODE)
                                    408 ;------------------------------------------------------------
                                    409 ;Allocation info for local variables in function 'Timer0Start'
                                    410 ;------------------------------------------------------------
                                    411 ;	TIMER/TIMER.c:25: void Timer0Start()
                                    412 ;	-----------------------------------------
                                    413 ;	 function Timer0Start
                                    414 ;	-----------------------------------------
      0001BD                        415 _Timer0Start:
                           000007   416 	ar7 = 0x07
                           000006   417 	ar6 = 0x06
                           000005   418 	ar5 = 0x05
                           000004   419 	ar4 = 0x04
                           000003   420 	ar3 = 0x03
                           000002   421 	ar2 = 0x02
                           000001   422 	ar1 = 0x01
                           000000   423 	ar0 = 0x00
                                    424 ;	TIMER/TIMER.c:27: TR0 = 1;      //开启定时器
      0001BD D2 8C            [12]  425 	setb	_TR0
      0001BF 22               [24]  426 	ret
                                    427 ;------------------------------------------------------------
                                    428 ;Allocation info for local variables in function 'Timer0Stop'
                                    429 ;------------------------------------------------------------
                                    430 ;	TIMER/TIMER.c:35: void Timer0Stop()
                                    431 ;	-----------------------------------------
                                    432 ;	 function Timer0Stop
                                    433 ;	-----------------------------------------
      0001C0                        434 _Timer0Stop:
                                    435 ;	TIMER/TIMER.c:37: TR0 = 0;      //停止定时器
      0001C0 C2 8C            [12]  436 	clr	_TR0
      0001C2 22               [24]  437 	ret
                                    438 ;------------------------------------------------------------
                                    439 ;Allocation info for local variables in function 'timer0SetValue'
                                    440 ;------------------------------------------------------------
                                    441 ;value                     Allocated to registers r6 r7 
                                    442 ;------------------------------------------------------------
                                    443 ;	TIMER/TIMER.c:45: void timer0SetValue(unsigned int value)
                                    444 ;	-----------------------------------------
                                    445 ;	 function timer0SetValue
                                    446 ;	-----------------------------------------
      0001C3                        447 _timer0SetValue:
      0001C3 AE 82            [24]  448 	mov	r6,dpl
      0001C5 AF 83            [24]  449 	mov	r7,dph
                                    450 ;	TIMER/TIMER.c:47: value = value * 928;
      0001C7 8E 1D            [24]  451 	mov	__mulint_PARM_2,r6
      0001C9 8F 1E            [24]  452 	mov	(__mulint_PARM_2 + 1),r7
      0001CB 90 03 A0         [24]  453 	mov	dptr,#0x03A0
      0001CE 12 07 4D         [24]  454 	lcall	__mulint
      0001D1 AE 82            [24]  455 	mov	r6,dpl
      0001D3 AF 83            [24]  456 	mov	r7,dph
                                    457 ;	TIMER/TIMER.c:48: value = 0xFFFF-value;
      0001D5 74 FF            [12]  458 	mov	a,#0xFF
      0001D7 C3               [12]  459 	clr	c
      0001D8 9E               [12]  460 	subb	a,r6
      0001D9 FE               [12]  461 	mov	r6,a
      0001DA 74 FF            [12]  462 	mov	a,#0xFF
      0001DC 9F               [12]  463 	subb	a,r7
                                    464 ;	TIMER/TIMER.c:49: TH0 = (value>>8) & 0xFF;   //设置定时时间
      0001DD FD               [12]  465 	mov	r5,a
      0001DE 8D 8C            [24]  466 	mov	_TH0,r5
                                    467 ;	TIMER/TIMER.c:50: TL0 =  value     & 0xFF;
      0001E0 8E 8A            [24]  468 	mov	_TL0,r6
      0001E2 22               [24]  469 	ret
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'time0Init'
                                    472 ;------------------------------------------------------------
                                    473 ;i                         Allocated to registers r6 r7 
                                    474 ;------------------------------------------------------------
                                    475 ;	TIMER/TIMER.c:58: void time0Init()
                                    476 ;	-----------------------------------------
                                    477 ;	 function time0Init
                                    478 ;	-----------------------------------------
      0001E3                        479 _time0Init:
                                    480 ;	TIMER/TIMER.c:61: for(i = 0; i < timer0TaskCount; i++)
      0001E3 7E 00            [12]  481 	mov	r6,#0x00
      0001E5 7F 00            [12]  482 	mov	r7,#0x00
      0001E7 7C 00            [12]  483 	mov	r4,#0x00
      0001E9 7D 00            [12]  484 	mov	r5,#0x00
      0001EB                        485 00102$:
                                    486 ;	TIMER/TIMER.c:63: timer0TaskStruct[i].TimerFun0 = NULL;
      0001EB EC               [12]  487 	mov	a,r4
      0001EC 24 01            [12]  488 	add	a,#_timer0TaskStruct
      0001EE FA               [12]  489 	mov	r2,a
      0001EF ED               [12]  490 	mov	a,r5
      0001F0 34 00            [12]  491 	addc	a,#(_timer0TaskStruct >> 8)
      0001F2 FB               [12]  492 	mov	r3,a
      0001F3 8A 82            [24]  493 	mov	dpl,r2
      0001F5 8B 83            [24]  494 	mov	dph,r3
      0001F7 A3               [24]  495 	inc	dptr
      0001F8 A3               [24]  496 	inc	dptr
      0001F9 A3               [24]  497 	inc	dptr
      0001FA A3               [24]  498 	inc	dptr
      0001FB E4               [12]  499 	clr	a
      0001FC F0               [24]  500 	movx	@dptr,a
      0001FD A3               [24]  501 	inc	dptr
      0001FE F0               [24]  502 	movx	@dptr,a
                                    503 ;	TIMER/TIMER.c:64: taskCount = 0;
      0001FF F5 27            [12]  504 	mov	_taskCount,a
      000201 F5 28            [12]  505 	mov	(_taskCount + 1),a
                                    506 ;	TIMER/TIMER.c:61: for(i = 0; i < timer0TaskCount; i++)
      000203 74 0C            [12]  507 	mov	a,#0x0C
      000205 2C               [12]  508 	add	a,r4
      000206 FC               [12]  509 	mov	r4,a
      000207 E4               [12]  510 	clr	a
      000208 3D               [12]  511 	addc	a,r5
      000209 FD               [12]  512 	mov	r5,a
      00020A 0E               [12]  513 	inc	r6
      00020B BE 00 01         [24]  514 	cjne	r6,#0x00,00113$
      00020E 0F               [12]  515 	inc	r7
      00020F                        516 00113$:
      00020F C3               [12]  517 	clr	c
      000210 EE               [12]  518 	mov	a,r6
      000211 94 0A            [12]  519 	subb	a,#0x0A
      000213 EF               [12]  520 	mov	a,r7
      000214 64 80            [12]  521 	xrl	a,#0x80
      000216 94 80            [12]  522 	subb	a,#0x80
      000218 40 D1            [24]  523 	jc	00102$
                                    524 ;	TIMER/TIMER.c:67: EA = 1;  //开中断
      00021A D2 AF            [12]  525 	setb	_EA
                                    526 ;	TIMER/TIMER.c:69: TMOD = 0x01;  //使能模式1
      00021C 75 89 01         [24]  527 	mov	_TMOD,#0x01
                                    528 ;	TIMER/TIMER.c:70: timer0SetValue(timerCount);
      00021F 85 25 82         [24]  529 	mov	dpl,_timerCount
      000222 85 26 83         [24]  530 	mov	dph,(_timerCount + 1)
      000225 12 01 C3         [24]  531 	lcall	_timer0SetValue
                                    532 ;	TIMER/TIMER.c:71: ET0 = 1;  //开定时器0的中断
      000228 D2 A9            [12]  533 	setb	_ET0
                                    534 ;	TIMER/TIMER.c:72: Timer0Start();
      00022A 02 01 BD         [24]  535 	ljmp	_Timer0Start
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'getTaskCount'
                                    538 ;------------------------------------------------------------
                                    539 ;	TIMER/TIMER.c:81: int getTaskCount()
                                    540 ;	-----------------------------------------
                                    541 ;	 function getTaskCount
                                    542 ;	-----------------------------------------
      00022D                        543 _getTaskCount:
                                    544 ;	TIMER/TIMER.c:83: return taskCount;
      00022D 85 27 82         [24]  545 	mov	dpl,_taskCount
      000230 85 28 83         [24]  546 	mov	dph,(_taskCount + 1)
      000233 22               [24]  547 	ret
                                    548 ;------------------------------------------------------------
                                    549 ;Allocation info for local variables in function 'addTIMER0Task'
                                    550 ;------------------------------------------------------------
                                    551 ;inTimerFun0               Allocated with name '_addTIMER0Task_PARM_2'
                                    552 ;intag                     Allocated with name '_addTIMER0Task_PARM_3'
                                    553 ;inTimerMs                 Allocated with name '_addTIMER0Task_inTimerMs_1_13'
                                    554 ;i                         Allocated to registers r4 r5 
                                    555 ;sloc0                     Allocated with name '_addTIMER0Task_sloc0_1_0'
                                    556 ;sloc1                     Allocated with name '_addTIMER0Task_sloc1_1_0'
                                    557 ;sloc2                     Allocated with name '_addTIMER0Task_sloc2_1_0'
                                    558 ;------------------------------------------------------------
                                    559 ;	TIMER/TIMER.c:93: void addTIMER0Task(unsigned int inTimerMs,void (*inTimerFun0)(),int intag)
                                    560 ;	-----------------------------------------
                                    561 ;	 function addTIMER0Task
                                    562 ;	-----------------------------------------
      000234                        563 _addTIMER0Task:
      000234 85 82 2F         [24]  564 	mov	_addTIMER0Task_inTimerMs_1_13,dpl
      000237 85 83 30         [24]  565 	mov	(_addTIMER0Task_inTimerMs_1_13 + 1),dph
                                    566 ;	TIMER/TIMER.c:96: if(taskCount == 0) //在添加第一次任务时，会初始化。
      00023A E5 27            [12]  567 	mov	a,_taskCount
      00023C 45 28            [12]  568 	orl	a,(_taskCount + 1)
      00023E 70 03            [24]  569 	jnz	00112$
                                    570 ;	TIMER/TIMER.c:98: time0Init();
      000240 12 01 E3         [24]  571 	lcall	_time0Init
                                    572 ;	TIMER/TIMER.c:100: for(i = 0; i < timer0TaskCount; i++)
      000243                        573 00112$:
      000243 7C 00            [12]  574 	mov	r4,#0x00
      000245 7D 00            [12]  575 	mov	r5,#0x00
      000247 7A 00            [12]  576 	mov	r2,#0x00
      000249 7B 00            [12]  577 	mov	r3,#0x00
      00024B                        578 00106$:
                                    579 ;	TIMER/TIMER.c:102: if(timer0TaskStruct[i].TimerFun0 == NULL)
      00024B EA               [12]  580 	mov	a,r2
      00024C 24 01            [12]  581 	add	a,#_timer0TaskStruct
      00024E F5 33            [12]  582 	mov	_addTIMER0Task_sloc1_1_0,a
      000250 EB               [12]  583 	mov	a,r3
      000251 34 00            [12]  584 	addc	a,#(_timer0TaskStruct >> 8)
      000253 F5 34            [12]  585 	mov	(_addTIMER0Task_sloc1_1_0 + 1),a
      000255 74 04            [12]  586 	mov	a,#0x04
      000257 25 33            [12]  587 	add	a,_addTIMER0Task_sloc1_1_0
      000259 F5 31            [12]  588 	mov	_addTIMER0Task_sloc0_1_0,a
      00025B E4               [12]  589 	clr	a
      00025C 35 34            [12]  590 	addc	a,(_addTIMER0Task_sloc1_1_0 + 1)
      00025E F5 32            [12]  591 	mov	(_addTIMER0Task_sloc0_1_0 + 1),a
      000260 85 31 82         [24]  592 	mov	dpl,_addTIMER0Task_sloc0_1_0
      000263 85 32 83         [24]  593 	mov	dph,(_addTIMER0Task_sloc0_1_0 + 1)
      000266 E0               [24]  594 	movx	a,@dptr
      000267 FE               [12]  595 	mov	r6,a
      000268 A3               [24]  596 	inc	dptr
      000269 E0               [24]  597 	movx	a,@dptr
      00026A FF               [12]  598 	mov	r7,a
      00026B 4E               [12]  599 	orl	a,r6
      00026C 70 76            [24]  600 	jnz	00107$
                                    601 ;	TIMER/TIMER.c:104: timer0TaskStruct[i].TimerFun0 = inTimerFun0;
      00026E 85 31 82         [24]  602 	mov	dpl,_addTIMER0Task_sloc0_1_0
      000271 85 32 83         [24]  603 	mov	dph,(_addTIMER0Task_sloc0_1_0 + 1)
      000274 E5 2B            [12]  604 	mov	a,_addTIMER0Task_PARM_2
      000276 F0               [24]  605 	movx	@dptr,a
      000277 E5 2C            [12]  606 	mov	a,(_addTIMER0Task_PARM_2 + 1)
      000279 A3               [24]  607 	inc	dptr
      00027A F0               [24]  608 	movx	@dptr,a
                                    609 ;	TIMER/TIMER.c:105: timer0TaskStruct[i].tag = intag;
      00027B 85 33 82         [24]  610 	mov	dpl,_addTIMER0Task_sloc1_1_0
      00027E 85 34 83         [24]  611 	mov	dph,(_addTIMER0Task_sloc1_1_0 + 1)
      000281 A3               [24]  612 	inc	dptr
      000282 A3               [24]  613 	inc	dptr
      000283 A3               [24]  614 	inc	dptr
      000284 A3               [24]  615 	inc	dptr
      000285 A3               [24]  616 	inc	dptr
      000286 A3               [24]  617 	inc	dptr
      000287 E5 2D            [12]  618 	mov	a,_addTIMER0Task_PARM_3
      000289 F0               [24]  619 	movx	@dptr,a
      00028A E5 2E            [12]  620 	mov	a,(_addTIMER0Task_PARM_3 + 1)
      00028C A3               [24]  621 	inc	dptr
      00028D F0               [24]  622 	movx	@dptr,a
                                    623 ;	TIMER/TIMER.c:106: timer0TaskStruct[i].time = timerClock + inTimerMs;
      00028E 85 2F 35         [24]  624 	mov	_addTIMER0Task_sloc2_1_0,_addTIMER0Task_inTimerMs_1_13
      000291 85 30 36         [24]  625 	mov	(_addTIMER0Task_sloc2_1_0 + 1),(_addTIMER0Task_inTimerMs_1_13 + 1)
      000294 E4               [12]  626 	clr	a
      000295 F5 37            [12]  627 	mov	(_addTIMER0Task_sloc2_1_0 + 2),a
      000297 F5 38            [12]  628 	mov	(_addTIMER0Task_sloc2_1_0 + 3),a
      000299 E5 35            [12]  629 	mov	a,_addTIMER0Task_sloc2_1_0
      00029B 25 21            [12]  630 	add	a,_timerClock
      00029D F8               [12]  631 	mov	r0,a
      00029E E5 36            [12]  632 	mov	a,(_addTIMER0Task_sloc2_1_0 + 1)
      0002A0 35 22            [12]  633 	addc	a,(_timerClock + 1)
      0002A2 F9               [12]  634 	mov	r1,a
      0002A3 E5 37            [12]  635 	mov	a,(_addTIMER0Task_sloc2_1_0 + 2)
      0002A5 35 23            [12]  636 	addc	a,(_timerClock + 2)
      0002A7 FE               [12]  637 	mov	r6,a
      0002A8 E5 38            [12]  638 	mov	a,(_addTIMER0Task_sloc2_1_0 + 3)
      0002AA 35 24            [12]  639 	addc	a,(_timerClock + 3)
      0002AC FF               [12]  640 	mov	r7,a
      0002AD 85 33 82         [24]  641 	mov	dpl,_addTIMER0Task_sloc1_1_0
      0002B0 85 34 83         [24]  642 	mov	dph,(_addTIMER0Task_sloc1_1_0 + 1)
      0002B3 E8               [12]  643 	mov	a,r0
      0002B4 F0               [24]  644 	movx	@dptr,a
      0002B5 E9               [12]  645 	mov	a,r1
      0002B6 A3               [24]  646 	inc	dptr
      0002B7 F0               [24]  647 	movx	@dptr,a
      0002B8 EE               [12]  648 	mov	a,r6
      0002B9 A3               [24]  649 	inc	dptr
      0002BA F0               [24]  650 	movx	@dptr,a
      0002BB EF               [12]  651 	mov	a,r7
      0002BC A3               [24]  652 	inc	dptr
      0002BD F0               [24]  653 	movx	@dptr,a
                                    654 ;	TIMER/TIMER.c:107: timer0TaskStruct[i].timeBack = inTimerMs;
      0002BE 85 33 82         [24]  655 	mov	dpl,_addTIMER0Task_sloc1_1_0
      0002C1 85 34 83         [24]  656 	mov	dph,(_addTIMER0Task_sloc1_1_0 + 1)
      0002C4 A3               [24]  657 	inc	dptr
      0002C5 A3               [24]  658 	inc	dptr
      0002C6 A3               [24]  659 	inc	dptr
      0002C7 A3               [24]  660 	inc	dptr
      0002C8 A3               [24]  661 	inc	dptr
      0002C9 A3               [24]  662 	inc	dptr
      0002CA A3               [24]  663 	inc	dptr
      0002CB A3               [24]  664 	inc	dptr
      0002CC E5 35            [12]  665 	mov	a,_addTIMER0Task_sloc2_1_0
      0002CE F0               [24]  666 	movx	@dptr,a
      0002CF E5 36            [12]  667 	mov	a,(_addTIMER0Task_sloc2_1_0 + 1)
      0002D1 A3               [24]  668 	inc	dptr
      0002D2 F0               [24]  669 	movx	@dptr,a
      0002D3 E5 37            [12]  670 	mov	a,(_addTIMER0Task_sloc2_1_0 + 2)
      0002D5 A3               [24]  671 	inc	dptr
      0002D6 F0               [24]  672 	movx	@dptr,a
      0002D7 E5 38            [12]  673 	mov	a,(_addTIMER0Task_sloc2_1_0 + 3)
      0002D9 A3               [24]  674 	inc	dptr
      0002DA F0               [24]  675 	movx	@dptr,a
                                    676 ;	TIMER/TIMER.c:108: taskCount++;
      0002DB 05 27            [12]  677 	inc	_taskCount
      0002DD E4               [12]  678 	clr	a
                                    679 ;	TIMER/TIMER.c:109: break;
      0002DE B5 27 1D         [24]  680 	cjne	a,_taskCount,00108$
      0002E1 05 28            [12]  681 	inc	(_taskCount + 1)
      0002E3 22               [24]  682 	ret
      0002E4                        683 00107$:
                                    684 ;	TIMER/TIMER.c:100: for(i = 0; i < timer0TaskCount; i++)
      0002E4 74 0C            [12]  685 	mov	a,#0x0C
      0002E6 2A               [12]  686 	add	a,r2
      0002E7 FA               [12]  687 	mov	r2,a
      0002E8 E4               [12]  688 	clr	a
      0002E9 3B               [12]  689 	addc	a,r3
      0002EA FB               [12]  690 	mov	r3,a
      0002EB 0C               [12]  691 	inc	r4
      0002EC BC 00 01         [24]  692 	cjne	r4,#0x00,00122$
      0002EF 0D               [12]  693 	inc	r5
      0002F0                        694 00122$:
      0002F0 C3               [12]  695 	clr	c
      0002F1 EC               [12]  696 	mov	a,r4
      0002F2 94 0A            [12]  697 	subb	a,#0x0A
      0002F4 ED               [12]  698 	mov	a,r5
      0002F5 64 80            [12]  699 	xrl	a,#0x80
      0002F7 94 80            [12]  700 	subb	a,#0x80
      0002F9 50 03            [24]  701 	jnc	00123$
      0002FB 02 02 4B         [24]  702 	ljmp	00106$
      0002FE                        703 00123$:
      0002FE                        704 00108$:
      0002FE 22               [24]  705 	ret
                                    706 ;------------------------------------------------------------
                                    707 ;Allocation info for local variables in function 'delTIMER0Task'
                                    708 ;------------------------------------------------------------
                                    709 ;intag                     Allocated with name '_delTIMER0Task_intag_1_18'
                                    710 ;i                         Allocated with name '_delTIMER0Task_i_1_19'
                                    711 ;------------------------------------------------------------
                                    712 ;	TIMER/TIMER.c:120: void delTIMER0Task(int intag)
                                    713 ;	-----------------------------------------
                                    714 ;	 function delTIMER0Task
                                    715 ;	-----------------------------------------
      0002FF                        716 _delTIMER0Task:
      0002FF 85 82 39         [24]  717 	mov	_delTIMER0Task_intag_1_18,dpl
      000302 85 83 3A         [24]  718 	mov	(_delTIMER0Task_intag_1_18 + 1),dph
                                    719 ;	TIMER/TIMER.c:123: for(i = 0; i < timer0TaskCount; i++)
      000305 E4               [12]  720 	clr	a
      000306 F5 3B            [12]  721 	mov	_delTIMER0Task_i_1_19,a
      000308 F5 3C            [12]  722 	mov	(_delTIMER0Task_i_1_19 + 1),a
      00030A 7A 00            [12]  723 	mov	r2,#0x00
      00030C 7B 00            [12]  724 	mov	r3,#0x00
      00030E                        725 00106$:
                                    726 ;	TIMER/TIMER.c:125: if(timer0TaskStruct[i].tag == intag)
      00030E EA               [12]  727 	mov	a,r2
      00030F 24 01            [12]  728 	add	a,#_timer0TaskStruct
      000311 F8               [12]  729 	mov	r0,a
      000312 EB               [12]  730 	mov	a,r3
      000313 34 00            [12]  731 	addc	a,#(_timer0TaskStruct >> 8)
      000315 F9               [12]  732 	mov	r1,a
      000316 74 06            [12]  733 	mov	a,#0x06
      000318 28               [12]  734 	add	a,r0
      000319 F5 82            [12]  735 	mov	dpl,a
      00031B E4               [12]  736 	clr	a
      00031C 39               [12]  737 	addc	a,r1
      00031D F5 83            [12]  738 	mov	dph,a
      00031F E0               [24]  739 	movx	a,@dptr
      000320 FE               [12]  740 	mov	r6,a
      000321 A3               [24]  741 	inc	dptr
      000322 E0               [24]  742 	movx	a,@dptr
      000323 FF               [12]  743 	mov	r7,a
      000324 AC 39            [24]  744 	mov	r4,_delTIMER0Task_intag_1_18
      000326 AD 3A            [24]  745 	mov	r5,(_delTIMER0Task_intag_1_18 + 1)
      000328 EE               [12]  746 	mov	a,r6
      000329 B5 04 2C         [24]  747 	cjne	a,ar4,00107$
      00032C EF               [12]  748 	mov	a,r7
      00032D B5 05 28         [24]  749 	cjne	a,ar5,00107$
                                    750 ;	TIMER/TIMER.c:127: timer0TaskStruct[i].TimerFun0 = NULL;
      000330 88 82            [24]  751 	mov	dpl,r0
      000332 89 83            [24]  752 	mov	dph,r1
      000334 A3               [24]  753 	inc	dptr
      000335 A3               [24]  754 	inc	dptr
      000336 A3               [24]  755 	inc	dptr
      000337 A3               [24]  756 	inc	dptr
      000338 E4               [12]  757 	clr	a
      000339 F0               [24]  758 	movx	@dptr,a
      00033A A3               [24]  759 	inc	dptr
      00033B F0               [24]  760 	movx	@dptr,a
                                    761 ;	TIMER/TIMER.c:128: taskCount--;
      00033C 15 27            [12]  762 	dec	_taskCount
      00033E 74 FF            [12]  763 	mov	a,#0xFF
      000340 B5 27 02         [24]  764 	cjne	a,_taskCount,00121$
      000343 15 28            [12]  765 	dec	(_taskCount + 1)
      000345                        766 00121$:
                                    767 ;	TIMER/TIMER.c:129: if(taskCount <= 0)
      000345 C3               [12]  768 	clr	c
      000346 E4               [12]  769 	clr	a
      000347 95 27            [12]  770 	subb	a,_taskCount
      000349 74 80            [12]  771 	mov	a,#(0x00 ^ 0x80)
      00034B 85 28 F0         [24]  772 	mov	b,(_taskCount + 1)
      00034E 63 F0 80         [24]  773 	xrl	b,#0x80
      000351 95 F0            [12]  774 	subb	a,b
      000353 40 1F            [24]  775 	jc	00108$
                                    776 ;	TIMER/TIMER.c:131: Timer0Stop();
                                    777 ;	TIMER/TIMER.c:133: break;
      000355 02 01 C0         [24]  778 	ljmp	_Timer0Stop
      000358                        779 00107$:
                                    780 ;	TIMER/TIMER.c:123: for(i = 0; i < timer0TaskCount; i++)
      000358 74 0C            [12]  781 	mov	a,#0x0C
      00035A 2A               [12]  782 	add	a,r2
      00035B FA               [12]  783 	mov	r2,a
      00035C E4               [12]  784 	clr	a
      00035D 3B               [12]  785 	addc	a,r3
      00035E FB               [12]  786 	mov	r3,a
      00035F 05 3B            [12]  787 	inc	_delTIMER0Task_i_1_19
      000361 E4               [12]  788 	clr	a
      000362 B5 3B 02         [24]  789 	cjne	a,_delTIMER0Task_i_1_19,00123$
      000365 05 3C            [12]  790 	inc	(_delTIMER0Task_i_1_19 + 1)
      000367                        791 00123$:
      000367 C3               [12]  792 	clr	c
      000368 E5 3B            [12]  793 	mov	a,_delTIMER0Task_i_1_19
      00036A 94 0A            [12]  794 	subb	a,#0x0A
      00036C E5 3C            [12]  795 	mov	a,(_delTIMER0Task_i_1_19 + 1)
      00036E 64 80            [12]  796 	xrl	a,#0x80
      000370 94 80            [12]  797 	subb	a,#0x80
      000372 40 9A            [24]  798 	jc	00106$
      000374                        799 00108$:
      000374 22               [24]  800 	ret
                                    801 ;------------------------------------------------------------
                                    802 ;Allocation info for local variables in function 'InterruptTimer0'
                                    803 ;------------------------------------------------------------
                                    804 ;	TIMER/TIMER.c:143: void InterruptTimer0() __interrupt 1
                                    805 ;	-----------------------------------------
                                    806 ;	 function InterruptTimer0
                                    807 ;	-----------------------------------------
      000375                        808 _InterruptTimer0:
      000375 C0 20            [24]  809 	push	bits
      000377 C0 E0            [24]  810 	push	acc
      000379 C0 F0            [24]  811 	push	b
      00037B C0 82            [24]  812 	push	dpl
      00037D C0 83            [24]  813 	push	dph
      00037F C0 07            [24]  814 	push	(0+7)
      000381 C0 06            [24]  815 	push	(0+6)
      000383 C0 05            [24]  816 	push	(0+5)
      000385 C0 04            [24]  817 	push	(0+4)
      000387 C0 03            [24]  818 	push	(0+3)
      000389 C0 02            [24]  819 	push	(0+2)
      00038B C0 01            [24]  820 	push	(0+1)
      00038D C0 00            [24]  821 	push	(0+0)
      00038F C0 D0            [24]  822 	push	psw
      000391 75 D0 00         [24]  823 	mov	psw,#0x00
                                    824 ;	TIMER/TIMER.c:145: timerClock += timerCount;
      000394 AC 25            [24]  825 	mov	r4,_timerCount
      000396 AD 26            [24]  826 	mov	r5,(_timerCount + 1)
      000398 E4               [12]  827 	clr	a
      000399 FE               [12]  828 	mov	r6,a
      00039A FF               [12]  829 	mov	r7,a
      00039B EC               [12]  830 	mov	a,r4
      00039C 25 21            [12]  831 	add	a,_timerClock
      00039E F5 21            [12]  832 	mov	_timerClock,a
      0003A0 ED               [12]  833 	mov	a,r5
      0003A1 35 22            [12]  834 	addc	a,(_timerClock + 1)
      0003A3 F5 22            [12]  835 	mov	(_timerClock + 1),a
      0003A5 EE               [12]  836 	mov	a,r6
      0003A6 35 23            [12]  837 	addc	a,(_timerClock + 2)
      0003A8 F5 23            [12]  838 	mov	(_timerClock + 2),a
      0003AA EF               [12]  839 	mov	a,r7
      0003AB 35 24            [12]  840 	addc	a,(_timerClock + 3)
      0003AD F5 24            [12]  841 	mov	(_timerClock + 3),a
                                    842 ;	TIMER/TIMER.c:146: timer0SetValue(timerCount);
      0003AF 85 25 82         [24]  843 	mov	dpl,_timerCount
      0003B2 85 26 83         [24]  844 	mov	dph,(_timerCount + 1)
      0003B5 12 01 C3         [24]  845 	lcall	_timer0SetValue
      0003B8 D0 D0            [24]  846 	pop	psw
      0003BA D0 00            [24]  847 	pop	(0+0)
      0003BC D0 01            [24]  848 	pop	(0+1)
      0003BE D0 02            [24]  849 	pop	(0+2)
      0003C0 D0 03            [24]  850 	pop	(0+3)
      0003C2 D0 04            [24]  851 	pop	(0+4)
      0003C4 D0 05            [24]  852 	pop	(0+5)
      0003C6 D0 06            [24]  853 	pop	(0+6)
      0003C8 D0 07            [24]  854 	pop	(0+7)
      0003CA D0 83            [24]  855 	pop	dph
      0003CC D0 82            [24]  856 	pop	dpl
      0003CE D0 F0            [24]  857 	pop	b
      0003D0 D0 E0            [24]  858 	pop	acc
      0003D2 D0 20            [24]  859 	pop	bits
      0003D4 32               [24]  860 	reti
                                    861 ;------------------------------------------------------------
                                    862 ;Allocation info for local variables in function 'updateTIMER0'
                                    863 ;------------------------------------------------------------
                                    864 ;i                         Allocated with name '_updateTIMER0_i_1_24'
                                    865 ;------------------------------------------------------------
                                    866 ;	TIMER/TIMER.c:154: void updateTIMER0()
                                    867 ;	-----------------------------------------
                                    868 ;	 function updateTIMER0
                                    869 ;	-----------------------------------------
      0003D5                        870 _updateTIMER0:
                                    871 ;	TIMER/TIMER.c:157: for(i = 0; i < timer0TaskCount; i++)
      0003D5 E4               [12]  872 	clr	a
      0003D6 F5 3D            [12]  873 	mov	_updateTIMER0_i_1_24,a
      0003D8 F5 3E            [12]  874 	mov	(_updateTIMER0_i_1_24 + 1),a
      0003DA 7C 00            [12]  875 	mov	r4,#0x00
      0003DC 7D 00            [12]  876 	mov	r5,#0x00
      0003DE                        877 00106$:
                                    878 ;	TIMER/TIMER.c:159: if(timer0TaskStruct[i].TimerFun0 != NULL)
      0003DE EC               [12]  879 	mov	a,r4
      0003DF 24 01            [12]  880 	add	a,#_timer0TaskStruct
      0003E1 FA               [12]  881 	mov	r2,a
      0003E2 ED               [12]  882 	mov	a,r5
      0003E3 34 00            [12]  883 	addc	a,#(_timer0TaskStruct >> 8)
      0003E5 FB               [12]  884 	mov	r3,a
      0003E6 8A 82            [24]  885 	mov	dpl,r2
      0003E8 8B 83            [24]  886 	mov	dph,r3
      0003EA A3               [24]  887 	inc	dptr
      0003EB A3               [24]  888 	inc	dptr
      0003EC A3               [24]  889 	inc	dptr
      0003ED A3               [24]  890 	inc	dptr
      0003EE E0               [24]  891 	movx	a,@dptr
      0003EF F8               [12]  892 	mov	r0,a
      0003F0 A3               [24]  893 	inc	dptr
      0003F1 E0               [24]  894 	movx	a,@dptr
      0003F2 F9               [12]  895 	mov	r1,a
      0003F3 48               [12]  896 	orl	a,r0
      0003F4 60 78            [24]  897 	jz	00107$
                                    898 ;	TIMER/TIMER.c:161: if(timer0TaskStruct[i].time <= timerClock)
      0003F6 C0 00            [24]  899 	push	ar0
      0003F8 C0 01            [24]  900 	push	ar1
      0003FA 8A 82            [24]  901 	mov	dpl,r2
      0003FC 8B 83            [24]  902 	mov	dph,r3
      0003FE E0               [24]  903 	movx	a,@dptr
      0003FF F8               [12]  904 	mov	r0,a
      000400 A3               [24]  905 	inc	dptr
      000401 E0               [24]  906 	movx	a,@dptr
      000402 F9               [12]  907 	mov	r1,a
      000403 A3               [24]  908 	inc	dptr
      000404 E0               [24]  909 	movx	a,@dptr
      000405 FE               [12]  910 	mov	r6,a
      000406 A3               [24]  911 	inc	dptr
      000407 E0               [24]  912 	movx	a,@dptr
      000408 FF               [12]  913 	mov	r7,a
      000409 C3               [12]  914 	clr	c
      00040A E5 21            [12]  915 	mov	a,_timerClock
      00040C 98               [12]  916 	subb	a,r0
      00040D E5 22            [12]  917 	mov	a,(_timerClock + 1)
      00040F 99               [12]  918 	subb	a,r1
      000410 E5 23            [12]  919 	mov	a,(_timerClock + 2)
      000412 9E               [12]  920 	subb	a,r6
      000413 E5 24            [12]  921 	mov	a,(_timerClock + 3)
      000415 9F               [12]  922 	subb	a,r7
      000416 D0 01            [24]  923 	pop	ar1
      000418 D0 00            [24]  924 	pop	ar0
      00041A 40 52            [24]  925 	jc	00107$
                                    926 ;	TIMER/TIMER.c:163: timer0TaskStruct[i].TimerFun0();    //调用函数
      00041C C0 05            [24]  927 	push	ar5
      00041E C0 04            [24]  928 	push	ar4
      000420 C0 03            [24]  929 	push	ar3
      000422 C0 02            [24]  930 	push	ar2
      000424 C0 01            [24]  931 	push	ar1
      000426 C0 00            [24]  932 	push	ar0
      000428 88 82            [24]  933 	mov	dpl,r0
      00042A 89 83            [24]  934 	mov	dph,r1
      00042C 12 00 31         [24]  935 	lcall	__sdcc_call_dptr
      00042F D0 00            [24]  936 	pop	ar0
      000431 D0 01            [24]  937 	pop	ar1
      000433 D0 02            [24]  938 	pop	ar2
      000435 D0 03            [24]  939 	pop	ar3
      000437 D0 04            [24]  940 	pop	ar4
      000439 D0 05            [24]  941 	pop	ar5
                                    942 ;	TIMER/TIMER.c:164: timer0TaskStruct[i].time = \
      00043B 74 08            [12]  943 	mov	a,#0x08
      00043D 2A               [12]  944 	add	a,r2
      00043E F5 82            [12]  945 	mov	dpl,a
      000440 E4               [12]  946 	clr	a
      000441 3B               [12]  947 	addc	a,r3
      000442 F5 83            [12]  948 	mov	dph,a
      000444 E0               [24]  949 	movx	a,@dptr
      000445 F8               [12]  950 	mov	r0,a
      000446 A3               [24]  951 	inc	dptr
      000447 E0               [24]  952 	movx	a,@dptr
      000448 F9               [12]  953 	mov	r1,a
      000449 A3               [24]  954 	inc	dptr
      00044A E0               [24]  955 	movx	a,@dptr
      00044B FE               [12]  956 	mov	r6,a
      00044C A3               [24]  957 	inc	dptr
      00044D E0               [24]  958 	movx	a,@dptr
      00044E FF               [12]  959 	mov	r7,a
      00044F E5 21            [12]  960 	mov	a,_timerClock
      000451 28               [12]  961 	add	a,r0
      000452 F8               [12]  962 	mov	r0,a
      000453 E5 22            [12]  963 	mov	a,(_timerClock + 1)
      000455 39               [12]  964 	addc	a,r1
      000456 F9               [12]  965 	mov	r1,a
      000457 E5 23            [12]  966 	mov	a,(_timerClock + 2)
      000459 3E               [12]  967 	addc	a,r6
      00045A FE               [12]  968 	mov	r6,a
      00045B E5 24            [12]  969 	mov	a,(_timerClock + 3)
      00045D 3F               [12]  970 	addc	a,r7
      00045E FF               [12]  971 	mov	r7,a
      00045F 8A 82            [24]  972 	mov	dpl,r2
      000461 8B 83            [24]  973 	mov	dph,r3
      000463 E8               [12]  974 	mov	a,r0
      000464 F0               [24]  975 	movx	@dptr,a
      000465 E9               [12]  976 	mov	a,r1
      000466 A3               [24]  977 	inc	dptr
      000467 F0               [24]  978 	movx	@dptr,a
      000468 EE               [12]  979 	mov	a,r6
      000469 A3               [24]  980 	inc	dptr
      00046A F0               [24]  981 	movx	@dptr,a
      00046B EF               [12]  982 	mov	a,r7
      00046C A3               [24]  983 	inc	dptr
      00046D F0               [24]  984 	movx	@dptr,a
      00046E                        985 00107$:
                                    986 ;	TIMER/TIMER.c:157: for(i = 0; i < timer0TaskCount; i++)
      00046E 74 0C            [12]  987 	mov	a,#0x0C
      000470 2C               [12]  988 	add	a,r4
      000471 FC               [12]  989 	mov	r4,a
      000472 E4               [12]  990 	clr	a
      000473 3D               [12]  991 	addc	a,r5
      000474 FD               [12]  992 	mov	r5,a
      000475 05 3D            [12]  993 	inc	_updateTIMER0_i_1_24
      000477 E4               [12]  994 	clr	a
      000478 B5 3D 02         [24]  995 	cjne	a,_updateTIMER0_i_1_24,00122$
      00047B 05 3E            [12]  996 	inc	(_updateTIMER0_i_1_24 + 1)
      00047D                        997 00122$:
      00047D C3               [12]  998 	clr	c
      00047E E5 3D            [12]  999 	mov	a,_updateTIMER0_i_1_24
      000480 94 0A            [12] 1000 	subb	a,#0x0A
      000482 E5 3E            [12] 1001 	mov	a,(_updateTIMER0_i_1_24 + 1)
      000484 64 80            [12] 1002 	xrl	a,#0x80
      000486 94 80            [12] 1003 	subb	a,#0x80
      000488 50 03            [24] 1004 	jnc	00123$
      00048A 02 03 DE         [24] 1005 	ljmp	00106$
      00048D                       1006 00123$:
      00048D 22               [24] 1007 	ret
                                   1008 ;------------------------------------------------------------
                                   1009 ;Allocation info for local variables in function 'delay10us'
                                   1010 ;------------------------------------------------------------
                                   1011 ;	TIMER/TIMER.c:177: void delay10us()
                                   1012 ;	-----------------------------------------
                                   1013 ;	 function delay10us
                                   1014 ;	-----------------------------------------
      00048E                       1015 _delay10us:
                                   1016 ;	TIMER/TIMER.c:186: __endasm;
      00048E 00               [12] 1017 	NOP
      00048F 00               [12] 1018 	NOP
      000490 00               [12] 1019 	NOP
      000491 00               [12] 1020 	NOP
      000492 00               [12] 1021 	NOP
      000493 00               [12] 1022 	NOP
      000494 22               [24] 1023 	ret
                                   1024 ;------------------------------------------------------------
                                   1025 ;Allocation info for local variables in function 'delay10usValue'
                                   1026 ;------------------------------------------------------------
                                   1027 ;value                     Allocated to registers 
                                   1028 ;------------------------------------------------------------
                                   1029 ;	TIMER/TIMER.c:194: void delay10usValue(unsigned int value)
                                   1030 ;	-----------------------------------------
                                   1031 ;	 function delay10usValue
                                   1032 ;	-----------------------------------------
      000495                       1033 _delay10usValue:
      000495 AE 82            [24] 1034 	mov	r6,dpl
      000497 AF 83            [24] 1035 	mov	r7,dph
                                   1036 ;	TIMER/TIMER.c:196: while(value--)
      000499                       1037 00101$:
      000499 8E 04            [24] 1038 	mov	ar4,r6
      00049B 8F 05            [24] 1039 	mov	ar5,r7
      00049D 1E               [12] 1040 	dec	r6
      00049E BE FF 01         [24] 1041 	cjne	r6,#0xFF,00113$
      0004A1 1F               [12] 1042 	dec	r7
      0004A2                       1043 00113$:
      0004A2 EC               [12] 1044 	mov	a,r4
      0004A3 4D               [12] 1045 	orl	a,r5
      0004A4 60 05            [24] 1046 	jz	00104$
                                   1047 ;	TIMER/TIMER.c:202: __endasm;
      0004A6 00               [12] 1048 	NOP
      0004A7 00               [12] 1049 	NOP
      0004A8 00               [12] 1050 	NOP
      0004A9 80 EE            [24] 1051 	sjmp	00101$
      0004AB                       1052 00104$:
      0004AB 22               [24] 1053 	ret
                                   1054 ;------------------------------------------------------------
                                   1055 ;Allocation info for local variables in function 'initTimer2'
                                   1056 ;------------------------------------------------------------
                                   1057 ;value                     Allocated to registers r6 r7 
                                   1058 ;------------------------------------------------------------
                                   1059 ;	TIMER/TIMER.c:214: void initTimer2(unsigned int value)
                                   1060 ;	-----------------------------------------
                                   1061 ;	 function initTimer2
                                   1062 ;	-----------------------------------------
      0004AC                       1063 _initTimer2:
      0004AC AE 82            [24] 1064 	mov	r6,dpl
      0004AE AF 83            [24] 1065 	mov	r7,dph
                                   1066 ;	TIMER/TIMER.c:216: EA = 1;  //开中断
      0004B0 D2 AF            [12] 1067 	setb	_EA
                                   1068 ;	TIMER/TIMER.c:218: TIMER2FUN = 0;
      0004B2 E4               [12] 1069 	clr	a
      0004B3 F5 29            [12] 1070 	mov	_TIMER2FUN,a
      0004B5 F5 2A            [12] 1071 	mov	(_TIMER2FUN + 1),a
                                   1072 ;	TIMER/TIMER.c:219: T2CON = 0x00;
                                   1073 ;	1-genFromRTrack replaced	mov	_T2CON,#0x00
      0004B7 F5 C8            [12] 1074 	mov	_T2CON,a
                                   1075 ;	TIMER/TIMER.c:220: value = 65536 - value;
      0004B9 8E 02            [24] 1076 	mov	ar2,r6
      0004BB 8F 03            [24] 1077 	mov	ar3,r7
      0004BD 7C 00            [12] 1078 	mov	r4,#0x00
      0004BF 7D 00            [12] 1079 	mov	r5,#0x00
      0004C1 C3               [12] 1080 	clr	c
      0004C2 9A               [12] 1081 	subb	a,r2
      0004C3 FA               [12] 1082 	mov	r2,a
      0004C4 E4               [12] 1083 	clr	a
      0004C5 9B               [12] 1084 	subb	a,r3
      0004C6 FB               [12] 1085 	mov	r3,a
      0004C7 74 01            [12] 1086 	mov	a,#0x01
      0004C9 9C               [12] 1087 	subb	a,r4
      0004CA E4               [12] 1088 	clr	a
      0004CB 9D               [12] 1089 	subb	a,r5
      0004CC 8A 06            [24] 1090 	mov	ar6,r2
      0004CE 8B 07            [24] 1091 	mov	ar7,r3
                                   1092 ;	TIMER/TIMER.c:221: RCAP2H = value>>8;
      0004D0 8F CB            [24] 1093 	mov	_RCAP2H,r7
                                   1094 ;	TIMER/TIMER.c:222: RCAP2L = value;
      0004D2 8E CA            [24] 1095 	mov	_RCAP2L,r6
                                   1096 ;	TIMER/TIMER.c:223: TH2 = RCAP2H;
      0004D4 85 CB CD         [24] 1097 	mov	_TH2,_RCAP2H
                                   1098 ;	TIMER/TIMER.c:224: TL2 = RCAP2L;
      0004D7 85 CA CC         [24] 1099 	mov	_TL2,_RCAP2L
                                   1100 ;	TIMER/TIMER.c:225: ET2 = 1;  //使能T2中断
      0004DA D2 AD            [12] 1101 	setb	_ET2
                                   1102 ;	TIMER/TIMER.c:226: PT2 = 1;  //设置T2中断为高优先级
      0004DC D2 BD            [12] 1103 	setb	_PT2
                                   1104 ;	TIMER/TIMER.c:227: TR2 = 1;  //启动T2
      0004DE D2 CA            [12] 1105 	setb	_TR2
      0004E0 22               [24] 1106 	ret
                                   1107 ;------------------------------------------------------------
                                   1108 ;Allocation info for local variables in function 'startTimer2'
                                   1109 ;------------------------------------------------------------
                                   1110 ;	TIMER/TIMER.c:235: void startTimer2()
                                   1111 ;	-----------------------------------------
                                   1112 ;	 function startTimer2
                                   1113 ;	-----------------------------------------
      0004E1                       1114 _startTimer2:
                                   1115 ;	TIMER/TIMER.c:237: TR2 = 1;  
      0004E1 D2 CA            [12] 1116 	setb	_TR2
      0004E3 22               [24] 1117 	ret
                                   1118 ;------------------------------------------------------------
                                   1119 ;Allocation info for local variables in function 'stopTimer2'
                                   1120 ;------------------------------------------------------------
                                   1121 ;	TIMER/TIMER.c:246: void stopTimer2()
                                   1122 ;	-----------------------------------------
                                   1123 ;	 function stopTimer2
                                   1124 ;	-----------------------------------------
      0004E4                       1125 _stopTimer2:
                                   1126 ;	TIMER/TIMER.c:248: TR2 = 0;  
      0004E4 C2 CA            [12] 1127 	clr	_TR2
      0004E6 22               [24] 1128 	ret
                                   1129 ;------------------------------------------------------------
                                   1130 ;Allocation info for local variables in function 'InterruptTimer2'
                                   1131 ;------------------------------------------------------------
                                   1132 ;	TIMER/TIMER.c:257: void InterruptTimer2() __interrupt 5
                                   1133 ;	-----------------------------------------
                                   1134 ;	 function InterruptTimer2
                                   1135 ;	-----------------------------------------
      0004E7                       1136 _InterruptTimer2:
      0004E7 C0 20            [24] 1137 	push	bits
      0004E9 C0 E0            [24] 1138 	push	acc
      0004EB C0 F0            [24] 1139 	push	b
      0004ED C0 82            [24] 1140 	push	dpl
      0004EF C0 83            [24] 1141 	push	dph
      0004F1 C0 07            [24] 1142 	push	(0+7)
      0004F3 C0 06            [24] 1143 	push	(0+6)
      0004F5 C0 05            [24] 1144 	push	(0+5)
      0004F7 C0 04            [24] 1145 	push	(0+4)
      0004F9 C0 03            [24] 1146 	push	(0+3)
      0004FB C0 02            [24] 1147 	push	(0+2)
      0004FD C0 01            [24] 1148 	push	(0+1)
      0004FF C0 00            [24] 1149 	push	(0+0)
      000501 C0 D0            [24] 1150 	push	psw
      000503 75 D0 00         [24] 1151 	mov	psw,#0x00
                                   1152 ;	TIMER/TIMER.c:259: TF2 = 0;
      000506 C2 CF            [12] 1153 	clr	_TF2
                                   1154 ;	TIMER/TIMER.c:260: if(TIMER2FUN != 0)
      000508 E5 29            [12] 1155 	mov	a,_TIMER2FUN
      00050A 45 2A            [12] 1156 	orl	a,(_TIMER2FUN + 1)
      00050C 60 09            [24] 1157 	jz	00103$
                                   1158 ;	TIMER/TIMER.c:262: TIMER2FUN();
      00050E 85 29 82         [24] 1159 	mov	dpl,_TIMER2FUN
      000511 85 2A 83         [24] 1160 	mov	dph,(_TIMER2FUN + 1)
      000514 12 00 31         [24] 1161 	lcall	__sdcc_call_dptr
      000517                       1162 00103$:
      000517 D0 D0            [24] 1163 	pop	psw
      000519 D0 00            [24] 1164 	pop	(0+0)
      00051B D0 01            [24] 1165 	pop	(0+1)
      00051D D0 02            [24] 1166 	pop	(0+2)
      00051F D0 03            [24] 1167 	pop	(0+3)
      000521 D0 04            [24] 1168 	pop	(0+4)
      000523 D0 05            [24] 1169 	pop	(0+5)
      000525 D0 06            [24] 1170 	pop	(0+6)
      000527 D0 07            [24] 1171 	pop	(0+7)
      000529 D0 83            [24] 1172 	pop	dph
      00052B D0 82            [24] 1173 	pop	dpl
      00052D D0 F0            [24] 1174 	pop	b
      00052F D0 E0            [24] 1175 	pop	acc
      000531 D0 20            [24] 1176 	pop	bits
      000533 32               [24] 1177 	reti
                                   1178 ;------------------------------------------------------------
                                   1179 ;Allocation info for local variables in function 'setTimer2Fun'
                                   1180 ;------------------------------------------------------------
                                   1181 ;inTimerFun2               Allocated to registers 
                                   1182 ;------------------------------------------------------------
                                   1183 ;	TIMER/TIMER.c:272: void setTimer2Fun(void (*inTimerFun2)())
                                   1184 ;	-----------------------------------------
                                   1185 ;	 function setTimer2Fun
                                   1186 ;	-----------------------------------------
      000534                       1187 _setTimer2Fun:
      000534 85 82 29         [24] 1188 	mov	_TIMER2FUN,dpl
      000537 85 83 2A         [24] 1189 	mov	(_TIMER2FUN + 1),dph
                                   1190 ;	TIMER/TIMER.c:274: TIMER2FUN = inTimerFun2;
      00053A 22               [24] 1191 	ret
                                   1192 	.area CSEG    (CODE)
                                   1193 	.area CONST   (CODE)
                                   1194 	.area XINIT   (CODE)
                                   1195 	.area CABS    (ABS,CODE)
