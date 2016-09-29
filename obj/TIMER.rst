                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Thu Sep 29 13:34:06 2016
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
      000171                        415 _Timer0Start:
                           000007   416 	ar7 = 0x07
                           000006   417 	ar6 = 0x06
                           000005   418 	ar5 = 0x05
                           000004   419 	ar4 = 0x04
                           000003   420 	ar3 = 0x03
                           000002   421 	ar2 = 0x02
                           000001   422 	ar1 = 0x01
                           000000   423 	ar0 = 0x00
                                    424 ;	TIMER/TIMER.c:27: TR0 = 1;      //开启定时器
      000171 D2 8C            [12]  425 	setb	_TR0
      000173 22               [24]  426 	ret
                                    427 ;------------------------------------------------------------
                                    428 ;Allocation info for local variables in function 'Timer0Stop'
                                    429 ;------------------------------------------------------------
                                    430 ;	TIMER/TIMER.c:35: void Timer0Stop()
                                    431 ;	-----------------------------------------
                                    432 ;	 function Timer0Stop
                                    433 ;	-----------------------------------------
      000174                        434 _Timer0Stop:
                                    435 ;	TIMER/TIMER.c:37: TR0 = 0;      //停止定时器
      000174 C2 8C            [12]  436 	clr	_TR0
      000176 22               [24]  437 	ret
                                    438 ;------------------------------------------------------------
                                    439 ;Allocation info for local variables in function 'timer0SetValue'
                                    440 ;------------------------------------------------------------
                                    441 ;value                     Allocated to registers r6 r7 
                                    442 ;------------------------------------------------------------
                                    443 ;	TIMER/TIMER.c:45: void timer0SetValue(unsigned int value)
                                    444 ;	-----------------------------------------
                                    445 ;	 function timer0SetValue
                                    446 ;	-----------------------------------------
      000177                        447 _timer0SetValue:
      000177 AE 82            [24]  448 	mov	r6,dpl
      000179 AF 83            [24]  449 	mov	r7,dph
                                    450 ;	TIMER/TIMER.c:47: value = value * 928;
      00017B 8E 6D            [24]  451 	mov	__mulint_PARM_2,r6
      00017D 8F 6E            [24]  452 	mov	(__mulint_PARM_2 + 1),r7
      00017F 90 03 A0         [24]  453 	mov	dptr,#0x03A0
      000182 12 0C F8         [24]  454 	lcall	__mulint
      000185 AE 82            [24]  455 	mov	r6,dpl
      000187 AF 83            [24]  456 	mov	r7,dph
                                    457 ;	TIMER/TIMER.c:48: value = 0xFFFF-value;
      000189 74 FF            [12]  458 	mov	a,#0xFF
      00018B C3               [12]  459 	clr	c
      00018C 9E               [12]  460 	subb	a,r6
      00018D FE               [12]  461 	mov	r6,a
      00018E 74 FF            [12]  462 	mov	a,#0xFF
      000190 9F               [12]  463 	subb	a,r7
                                    464 ;	TIMER/TIMER.c:49: TH0 = (value>>8) & 0xFF;   //设置定时时间
      000191 FD               [12]  465 	mov	r5,a
      000192 8D 8C            [24]  466 	mov	_TH0,r5
                                    467 ;	TIMER/TIMER.c:50: TL0 =  value     & 0xFF;
      000194 8E 8A            [24]  468 	mov	_TL0,r6
      000196 22               [24]  469 	ret
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'time0Init'
                                    472 ;------------------------------------------------------------
                                    473 ;i                         Allocated to registers r6 r7 
                                    474 ;------------------------------------------------------------
                                    475 ;	TIMER/TIMER.c:58: void time0Init()
                                    476 ;	-----------------------------------------
                                    477 ;	 function time0Init
                                    478 ;	-----------------------------------------
      000197                        479 _time0Init:
                                    480 ;	TIMER/TIMER.c:61: for(i = 0; i < timer0TaskCount; i++)
      000197 7E 00            [12]  481 	mov	r6,#0x00
      000199 7F 00            [12]  482 	mov	r7,#0x00
      00019B 7C 00            [12]  483 	mov	r4,#0x00
      00019D 7D 00            [12]  484 	mov	r5,#0x00
      00019F                        485 00102$:
                                    486 ;	TIMER/TIMER.c:63: timer0TaskStruct[i].TimerFun0 = NULL;
      00019F EC               [12]  487 	mov	a,r4
      0001A0 24 01            [12]  488 	add	a,#_timer0TaskStruct
      0001A2 FA               [12]  489 	mov	r2,a
      0001A3 ED               [12]  490 	mov	a,r5
      0001A4 34 00            [12]  491 	addc	a,#(_timer0TaskStruct >> 8)
      0001A6 FB               [12]  492 	mov	r3,a
      0001A7 8A 82            [24]  493 	mov	dpl,r2
      0001A9 8B 83            [24]  494 	mov	dph,r3
      0001AB A3               [24]  495 	inc	dptr
      0001AC A3               [24]  496 	inc	dptr
      0001AD A3               [24]  497 	inc	dptr
      0001AE A3               [24]  498 	inc	dptr
      0001AF E4               [12]  499 	clr	a
      0001B0 F0               [24]  500 	movx	@dptr,a
      0001B1 A3               [24]  501 	inc	dptr
      0001B2 F0               [24]  502 	movx	@dptr,a
                                    503 ;	TIMER/TIMER.c:64: taskCount = 0;
      0001B3 F5 27            [12]  504 	mov	_taskCount,a
      0001B5 F5 28            [12]  505 	mov	(_taskCount + 1),a
                                    506 ;	TIMER/TIMER.c:61: for(i = 0; i < timer0TaskCount; i++)
      0001B7 74 0C            [12]  507 	mov	a,#0x0C
      0001B9 2C               [12]  508 	add	a,r4
      0001BA FC               [12]  509 	mov	r4,a
      0001BB E4               [12]  510 	clr	a
      0001BC 3D               [12]  511 	addc	a,r5
      0001BD FD               [12]  512 	mov	r5,a
      0001BE 0E               [12]  513 	inc	r6
      0001BF BE 00 01         [24]  514 	cjne	r6,#0x00,00113$
      0001C2 0F               [12]  515 	inc	r7
      0001C3                        516 00113$:
      0001C3 C3               [12]  517 	clr	c
      0001C4 EE               [12]  518 	mov	a,r6
      0001C5 94 0A            [12]  519 	subb	a,#0x0A
      0001C7 EF               [12]  520 	mov	a,r7
      0001C8 64 80            [12]  521 	xrl	a,#0x80
      0001CA 94 80            [12]  522 	subb	a,#0x80
      0001CC 40 D1            [24]  523 	jc	00102$
                                    524 ;	TIMER/TIMER.c:67: EA = 1;  //开中断
      0001CE D2 AF            [12]  525 	setb	_EA
                                    526 ;	TIMER/TIMER.c:69: TMOD = 0x01;  //使能模式1
      0001D0 75 89 01         [24]  527 	mov	_TMOD,#0x01
                                    528 ;	TIMER/TIMER.c:70: timer0SetValue(timerCount);
      0001D3 85 25 82         [24]  529 	mov	dpl,_timerCount
      0001D6 85 26 83         [24]  530 	mov	dph,(_timerCount + 1)
      0001D9 12 01 77         [24]  531 	lcall	_timer0SetValue
                                    532 ;	TIMER/TIMER.c:71: ET0 = 1;  //开定时器0的中断
      0001DC D2 A9            [12]  533 	setb	_ET0
                                    534 ;	TIMER/TIMER.c:72: Timer0Start();
      0001DE 02 01 71         [24]  535 	ljmp	_Timer0Start
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'getTaskCount'
                                    538 ;------------------------------------------------------------
                                    539 ;	TIMER/TIMER.c:81: int getTaskCount()
                                    540 ;	-----------------------------------------
                                    541 ;	 function getTaskCount
                                    542 ;	-----------------------------------------
      0001E1                        543 _getTaskCount:
                                    544 ;	TIMER/TIMER.c:83: return taskCount;
      0001E1 85 27 82         [24]  545 	mov	dpl,_taskCount
      0001E4 85 28 83         [24]  546 	mov	dph,(_taskCount + 1)
      0001E7 22               [24]  547 	ret
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
      0001E8                        563 _addTIMER0Task:
      0001E8 85 82 2F         [24]  564 	mov	_addTIMER0Task_inTimerMs_1_13,dpl
      0001EB 85 83 30         [24]  565 	mov	(_addTIMER0Task_inTimerMs_1_13 + 1),dph
                                    566 ;	TIMER/TIMER.c:96: if(taskCount == 0) //在添加第一次任务时，会初始化。
      0001EE E5 27            [12]  567 	mov	a,_taskCount
      0001F0 45 28            [12]  568 	orl	a,(_taskCount + 1)
      0001F2 70 03            [24]  569 	jnz	00112$
                                    570 ;	TIMER/TIMER.c:98: time0Init();
      0001F4 12 01 97         [24]  571 	lcall	_time0Init
                                    572 ;	TIMER/TIMER.c:100: for(i = 0; i < timer0TaskCount; i++)
      0001F7                        573 00112$:
      0001F7 7C 00            [12]  574 	mov	r4,#0x00
      0001F9 7D 00            [12]  575 	mov	r5,#0x00
      0001FB 7A 00            [12]  576 	mov	r2,#0x00
      0001FD 7B 00            [12]  577 	mov	r3,#0x00
      0001FF                        578 00106$:
                                    579 ;	TIMER/TIMER.c:102: if(timer0TaskStruct[i].TimerFun0 == NULL)
      0001FF EA               [12]  580 	mov	a,r2
      000200 24 01            [12]  581 	add	a,#_timer0TaskStruct
      000202 F5 33            [12]  582 	mov	_addTIMER0Task_sloc1_1_0,a
      000204 EB               [12]  583 	mov	a,r3
      000205 34 00            [12]  584 	addc	a,#(_timer0TaskStruct >> 8)
      000207 F5 34            [12]  585 	mov	(_addTIMER0Task_sloc1_1_0 + 1),a
      000209 74 04            [12]  586 	mov	a,#0x04
      00020B 25 33            [12]  587 	add	a,_addTIMER0Task_sloc1_1_0
      00020D F5 31            [12]  588 	mov	_addTIMER0Task_sloc0_1_0,a
      00020F E4               [12]  589 	clr	a
      000210 35 34            [12]  590 	addc	a,(_addTIMER0Task_sloc1_1_0 + 1)
      000212 F5 32            [12]  591 	mov	(_addTIMER0Task_sloc0_1_0 + 1),a
      000214 85 31 82         [24]  592 	mov	dpl,_addTIMER0Task_sloc0_1_0
      000217 85 32 83         [24]  593 	mov	dph,(_addTIMER0Task_sloc0_1_0 + 1)
      00021A E0               [24]  594 	movx	a,@dptr
      00021B FE               [12]  595 	mov	r6,a
      00021C A3               [24]  596 	inc	dptr
      00021D E0               [24]  597 	movx	a,@dptr
      00021E FF               [12]  598 	mov	r7,a
      00021F 4E               [12]  599 	orl	a,r6
      000220 70 76            [24]  600 	jnz	00107$
                                    601 ;	TIMER/TIMER.c:104: timer0TaskStruct[i].TimerFun0 = inTimerFun0;
      000222 85 31 82         [24]  602 	mov	dpl,_addTIMER0Task_sloc0_1_0
      000225 85 32 83         [24]  603 	mov	dph,(_addTIMER0Task_sloc0_1_0 + 1)
      000228 E5 2B            [12]  604 	mov	a,_addTIMER0Task_PARM_2
      00022A F0               [24]  605 	movx	@dptr,a
      00022B E5 2C            [12]  606 	mov	a,(_addTIMER0Task_PARM_2 + 1)
      00022D A3               [24]  607 	inc	dptr
      00022E F0               [24]  608 	movx	@dptr,a
                                    609 ;	TIMER/TIMER.c:105: timer0TaskStruct[i].tag = intag;
      00022F 85 33 82         [24]  610 	mov	dpl,_addTIMER0Task_sloc1_1_0
      000232 85 34 83         [24]  611 	mov	dph,(_addTIMER0Task_sloc1_1_0 + 1)
      000235 A3               [24]  612 	inc	dptr
      000236 A3               [24]  613 	inc	dptr
      000237 A3               [24]  614 	inc	dptr
      000238 A3               [24]  615 	inc	dptr
      000239 A3               [24]  616 	inc	dptr
      00023A A3               [24]  617 	inc	dptr
      00023B E5 2D            [12]  618 	mov	a,_addTIMER0Task_PARM_3
      00023D F0               [24]  619 	movx	@dptr,a
      00023E E5 2E            [12]  620 	mov	a,(_addTIMER0Task_PARM_3 + 1)
      000240 A3               [24]  621 	inc	dptr
      000241 F0               [24]  622 	movx	@dptr,a
                                    623 ;	TIMER/TIMER.c:106: timer0TaskStruct[i].time = timerClock + inTimerMs;
      000242 85 2F 35         [24]  624 	mov	_addTIMER0Task_sloc2_1_0,_addTIMER0Task_inTimerMs_1_13
      000245 85 30 36         [24]  625 	mov	(_addTIMER0Task_sloc2_1_0 + 1),(_addTIMER0Task_inTimerMs_1_13 + 1)
      000248 E4               [12]  626 	clr	a
      000249 F5 37            [12]  627 	mov	(_addTIMER0Task_sloc2_1_0 + 2),a
      00024B F5 38            [12]  628 	mov	(_addTIMER0Task_sloc2_1_0 + 3),a
      00024D E5 35            [12]  629 	mov	a,_addTIMER0Task_sloc2_1_0
      00024F 25 21            [12]  630 	add	a,_timerClock
      000251 F8               [12]  631 	mov	r0,a
      000252 E5 36            [12]  632 	mov	a,(_addTIMER0Task_sloc2_1_0 + 1)
      000254 35 22            [12]  633 	addc	a,(_timerClock + 1)
      000256 F9               [12]  634 	mov	r1,a
      000257 E5 37            [12]  635 	mov	a,(_addTIMER0Task_sloc2_1_0 + 2)
      000259 35 23            [12]  636 	addc	a,(_timerClock + 2)
      00025B FE               [12]  637 	mov	r6,a
      00025C E5 38            [12]  638 	mov	a,(_addTIMER0Task_sloc2_1_0 + 3)
      00025E 35 24            [12]  639 	addc	a,(_timerClock + 3)
      000260 FF               [12]  640 	mov	r7,a
      000261 85 33 82         [24]  641 	mov	dpl,_addTIMER0Task_sloc1_1_0
      000264 85 34 83         [24]  642 	mov	dph,(_addTIMER0Task_sloc1_1_0 + 1)
      000267 E8               [12]  643 	mov	a,r0
      000268 F0               [24]  644 	movx	@dptr,a
      000269 E9               [12]  645 	mov	a,r1
      00026A A3               [24]  646 	inc	dptr
      00026B F0               [24]  647 	movx	@dptr,a
      00026C EE               [12]  648 	mov	a,r6
      00026D A3               [24]  649 	inc	dptr
      00026E F0               [24]  650 	movx	@dptr,a
      00026F EF               [12]  651 	mov	a,r7
      000270 A3               [24]  652 	inc	dptr
      000271 F0               [24]  653 	movx	@dptr,a
                                    654 ;	TIMER/TIMER.c:107: timer0TaskStruct[i].timeBack = inTimerMs;
      000272 85 33 82         [24]  655 	mov	dpl,_addTIMER0Task_sloc1_1_0
      000275 85 34 83         [24]  656 	mov	dph,(_addTIMER0Task_sloc1_1_0 + 1)
      000278 A3               [24]  657 	inc	dptr
      000279 A3               [24]  658 	inc	dptr
      00027A A3               [24]  659 	inc	dptr
      00027B A3               [24]  660 	inc	dptr
      00027C A3               [24]  661 	inc	dptr
      00027D A3               [24]  662 	inc	dptr
      00027E A3               [24]  663 	inc	dptr
      00027F A3               [24]  664 	inc	dptr
      000280 E5 35            [12]  665 	mov	a,_addTIMER0Task_sloc2_1_0
      000282 F0               [24]  666 	movx	@dptr,a
      000283 E5 36            [12]  667 	mov	a,(_addTIMER0Task_sloc2_1_0 + 1)
      000285 A3               [24]  668 	inc	dptr
      000286 F0               [24]  669 	movx	@dptr,a
      000287 E5 37            [12]  670 	mov	a,(_addTIMER0Task_sloc2_1_0 + 2)
      000289 A3               [24]  671 	inc	dptr
      00028A F0               [24]  672 	movx	@dptr,a
      00028B E5 38            [12]  673 	mov	a,(_addTIMER0Task_sloc2_1_0 + 3)
      00028D A3               [24]  674 	inc	dptr
      00028E F0               [24]  675 	movx	@dptr,a
                                    676 ;	TIMER/TIMER.c:108: taskCount++;
      00028F 05 27            [12]  677 	inc	_taskCount
      000291 E4               [12]  678 	clr	a
                                    679 ;	TIMER/TIMER.c:109: break;
      000292 B5 27 1D         [24]  680 	cjne	a,_taskCount,00108$
      000295 05 28            [12]  681 	inc	(_taskCount + 1)
      000297 22               [24]  682 	ret
      000298                        683 00107$:
                                    684 ;	TIMER/TIMER.c:100: for(i = 0; i < timer0TaskCount; i++)
      000298 74 0C            [12]  685 	mov	a,#0x0C
      00029A 2A               [12]  686 	add	a,r2
      00029B FA               [12]  687 	mov	r2,a
      00029C E4               [12]  688 	clr	a
      00029D 3B               [12]  689 	addc	a,r3
      00029E FB               [12]  690 	mov	r3,a
      00029F 0C               [12]  691 	inc	r4
      0002A0 BC 00 01         [24]  692 	cjne	r4,#0x00,00122$
      0002A3 0D               [12]  693 	inc	r5
      0002A4                        694 00122$:
      0002A4 C3               [12]  695 	clr	c
      0002A5 EC               [12]  696 	mov	a,r4
      0002A6 94 0A            [12]  697 	subb	a,#0x0A
      0002A8 ED               [12]  698 	mov	a,r5
      0002A9 64 80            [12]  699 	xrl	a,#0x80
      0002AB 94 80            [12]  700 	subb	a,#0x80
      0002AD 50 03            [24]  701 	jnc	00123$
      0002AF 02 01 FF         [24]  702 	ljmp	00106$
      0002B2                        703 00123$:
      0002B2                        704 00108$:
      0002B2 22               [24]  705 	ret
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
      0002B3                        716 _delTIMER0Task:
      0002B3 85 82 39         [24]  717 	mov	_delTIMER0Task_intag_1_18,dpl
      0002B6 85 83 3A         [24]  718 	mov	(_delTIMER0Task_intag_1_18 + 1),dph
                                    719 ;	TIMER/TIMER.c:123: for(i = 0; i < timer0TaskCount; i++)
      0002B9 E4               [12]  720 	clr	a
      0002BA F5 3B            [12]  721 	mov	_delTIMER0Task_i_1_19,a
      0002BC F5 3C            [12]  722 	mov	(_delTIMER0Task_i_1_19 + 1),a
      0002BE 7A 00            [12]  723 	mov	r2,#0x00
      0002C0 7B 00            [12]  724 	mov	r3,#0x00
      0002C2                        725 00106$:
                                    726 ;	TIMER/TIMER.c:125: if(timer0TaskStruct[i].tag == intag)
      0002C2 EA               [12]  727 	mov	a,r2
      0002C3 24 01            [12]  728 	add	a,#_timer0TaskStruct
      0002C5 F8               [12]  729 	mov	r0,a
      0002C6 EB               [12]  730 	mov	a,r3
      0002C7 34 00            [12]  731 	addc	a,#(_timer0TaskStruct >> 8)
      0002C9 F9               [12]  732 	mov	r1,a
      0002CA 74 06            [12]  733 	mov	a,#0x06
      0002CC 28               [12]  734 	add	a,r0
      0002CD F5 82            [12]  735 	mov	dpl,a
      0002CF E4               [12]  736 	clr	a
      0002D0 39               [12]  737 	addc	a,r1
      0002D1 F5 83            [12]  738 	mov	dph,a
      0002D3 E0               [24]  739 	movx	a,@dptr
      0002D4 FE               [12]  740 	mov	r6,a
      0002D5 A3               [24]  741 	inc	dptr
      0002D6 E0               [24]  742 	movx	a,@dptr
      0002D7 FF               [12]  743 	mov	r7,a
      0002D8 AC 39            [24]  744 	mov	r4,_delTIMER0Task_intag_1_18
      0002DA AD 3A            [24]  745 	mov	r5,(_delTIMER0Task_intag_1_18 + 1)
      0002DC EE               [12]  746 	mov	a,r6
      0002DD B5 04 2C         [24]  747 	cjne	a,ar4,00107$
      0002E0 EF               [12]  748 	mov	a,r7
      0002E1 B5 05 28         [24]  749 	cjne	a,ar5,00107$
                                    750 ;	TIMER/TIMER.c:127: timer0TaskStruct[i].TimerFun0 = NULL;
      0002E4 88 82            [24]  751 	mov	dpl,r0
      0002E6 89 83            [24]  752 	mov	dph,r1
      0002E8 A3               [24]  753 	inc	dptr
      0002E9 A3               [24]  754 	inc	dptr
      0002EA A3               [24]  755 	inc	dptr
      0002EB A3               [24]  756 	inc	dptr
      0002EC E4               [12]  757 	clr	a
      0002ED F0               [24]  758 	movx	@dptr,a
      0002EE A3               [24]  759 	inc	dptr
      0002EF F0               [24]  760 	movx	@dptr,a
                                    761 ;	TIMER/TIMER.c:128: taskCount--;
      0002F0 15 27            [12]  762 	dec	_taskCount
      0002F2 74 FF            [12]  763 	mov	a,#0xFF
      0002F4 B5 27 02         [24]  764 	cjne	a,_taskCount,00121$
      0002F7 15 28            [12]  765 	dec	(_taskCount + 1)
      0002F9                        766 00121$:
                                    767 ;	TIMER/TIMER.c:129: if(taskCount <= 0)
      0002F9 C3               [12]  768 	clr	c
      0002FA E4               [12]  769 	clr	a
      0002FB 95 27            [12]  770 	subb	a,_taskCount
      0002FD 74 80            [12]  771 	mov	a,#(0x00 ^ 0x80)
      0002FF 85 28 F0         [24]  772 	mov	b,(_taskCount + 1)
      000302 63 F0 80         [24]  773 	xrl	b,#0x80
      000305 95 F0            [12]  774 	subb	a,b
      000307 40 1F            [24]  775 	jc	00108$
                                    776 ;	TIMER/TIMER.c:131: Timer0Stop();
                                    777 ;	TIMER/TIMER.c:133: break;
      000309 02 01 74         [24]  778 	ljmp	_Timer0Stop
      00030C                        779 00107$:
                                    780 ;	TIMER/TIMER.c:123: for(i = 0; i < timer0TaskCount; i++)
      00030C 74 0C            [12]  781 	mov	a,#0x0C
      00030E 2A               [12]  782 	add	a,r2
      00030F FA               [12]  783 	mov	r2,a
      000310 E4               [12]  784 	clr	a
      000311 3B               [12]  785 	addc	a,r3
      000312 FB               [12]  786 	mov	r3,a
      000313 05 3B            [12]  787 	inc	_delTIMER0Task_i_1_19
      000315 E4               [12]  788 	clr	a
      000316 B5 3B 02         [24]  789 	cjne	a,_delTIMER0Task_i_1_19,00123$
      000319 05 3C            [12]  790 	inc	(_delTIMER0Task_i_1_19 + 1)
      00031B                        791 00123$:
      00031B C3               [12]  792 	clr	c
      00031C E5 3B            [12]  793 	mov	a,_delTIMER0Task_i_1_19
      00031E 94 0A            [12]  794 	subb	a,#0x0A
      000320 E5 3C            [12]  795 	mov	a,(_delTIMER0Task_i_1_19 + 1)
      000322 64 80            [12]  796 	xrl	a,#0x80
      000324 94 80            [12]  797 	subb	a,#0x80
      000326 40 9A            [24]  798 	jc	00106$
      000328                        799 00108$:
      000328 22               [24]  800 	ret
                                    801 ;------------------------------------------------------------
                                    802 ;Allocation info for local variables in function 'InterruptTimer0'
                                    803 ;------------------------------------------------------------
                                    804 ;	TIMER/TIMER.c:143: void InterruptTimer0() __interrupt 1
                                    805 ;	-----------------------------------------
                                    806 ;	 function InterruptTimer0
                                    807 ;	-----------------------------------------
      000329                        808 _InterruptTimer0:
      000329 C0 20            [24]  809 	push	bits
      00032B C0 E0            [24]  810 	push	acc
      00032D C0 F0            [24]  811 	push	b
      00032F C0 82            [24]  812 	push	dpl
      000331 C0 83            [24]  813 	push	dph
      000333 C0 07            [24]  814 	push	(0+7)
      000335 C0 06            [24]  815 	push	(0+6)
      000337 C0 05            [24]  816 	push	(0+5)
      000339 C0 04            [24]  817 	push	(0+4)
      00033B C0 03            [24]  818 	push	(0+3)
      00033D C0 02            [24]  819 	push	(0+2)
      00033F C0 01            [24]  820 	push	(0+1)
      000341 C0 00            [24]  821 	push	(0+0)
      000343 C0 D0            [24]  822 	push	psw
      000345 75 D0 00         [24]  823 	mov	psw,#0x00
                                    824 ;	TIMER/TIMER.c:145: timerClock += timerCount;
      000348 AC 25            [24]  825 	mov	r4,_timerCount
      00034A AD 26            [24]  826 	mov	r5,(_timerCount + 1)
      00034C E4               [12]  827 	clr	a
      00034D FE               [12]  828 	mov	r6,a
      00034E FF               [12]  829 	mov	r7,a
      00034F EC               [12]  830 	mov	a,r4
      000350 25 21            [12]  831 	add	a,_timerClock
      000352 F5 21            [12]  832 	mov	_timerClock,a
      000354 ED               [12]  833 	mov	a,r5
      000355 35 22            [12]  834 	addc	a,(_timerClock + 1)
      000357 F5 22            [12]  835 	mov	(_timerClock + 1),a
      000359 EE               [12]  836 	mov	a,r6
      00035A 35 23            [12]  837 	addc	a,(_timerClock + 2)
      00035C F5 23            [12]  838 	mov	(_timerClock + 2),a
      00035E EF               [12]  839 	mov	a,r7
      00035F 35 24            [12]  840 	addc	a,(_timerClock + 3)
      000361 F5 24            [12]  841 	mov	(_timerClock + 3),a
                                    842 ;	TIMER/TIMER.c:146: timer0SetValue(timerCount);
      000363 85 25 82         [24]  843 	mov	dpl,_timerCount
      000366 85 26 83         [24]  844 	mov	dph,(_timerCount + 1)
      000369 12 01 77         [24]  845 	lcall	_timer0SetValue
      00036C D0 D0            [24]  846 	pop	psw
      00036E D0 00            [24]  847 	pop	(0+0)
      000370 D0 01            [24]  848 	pop	(0+1)
      000372 D0 02            [24]  849 	pop	(0+2)
      000374 D0 03            [24]  850 	pop	(0+3)
      000376 D0 04            [24]  851 	pop	(0+4)
      000378 D0 05            [24]  852 	pop	(0+5)
      00037A D0 06            [24]  853 	pop	(0+6)
      00037C D0 07            [24]  854 	pop	(0+7)
      00037E D0 83            [24]  855 	pop	dph
      000380 D0 82            [24]  856 	pop	dpl
      000382 D0 F0            [24]  857 	pop	b
      000384 D0 E0            [24]  858 	pop	acc
      000386 D0 20            [24]  859 	pop	bits
      000388 32               [24]  860 	reti
                                    861 ;------------------------------------------------------------
                                    862 ;Allocation info for local variables in function 'updateTIMER0'
                                    863 ;------------------------------------------------------------
                                    864 ;i                         Allocated with name '_updateTIMER0_i_1_24'
                                    865 ;------------------------------------------------------------
                                    866 ;	TIMER/TIMER.c:154: void updateTIMER0()
                                    867 ;	-----------------------------------------
                                    868 ;	 function updateTIMER0
                                    869 ;	-----------------------------------------
      000389                        870 _updateTIMER0:
                                    871 ;	TIMER/TIMER.c:157: for(i = 0; i < timer0TaskCount; i++)
      000389 E4               [12]  872 	clr	a
      00038A F5 3D            [12]  873 	mov	_updateTIMER0_i_1_24,a
      00038C F5 3E            [12]  874 	mov	(_updateTIMER0_i_1_24 + 1),a
      00038E 7C 00            [12]  875 	mov	r4,#0x00
      000390 7D 00            [12]  876 	mov	r5,#0x00
      000392                        877 00106$:
                                    878 ;	TIMER/TIMER.c:159: if(timer0TaskStruct[i].TimerFun0 != NULL)
      000392 EC               [12]  879 	mov	a,r4
      000393 24 01            [12]  880 	add	a,#_timer0TaskStruct
      000395 FA               [12]  881 	mov	r2,a
      000396 ED               [12]  882 	mov	a,r5
      000397 34 00            [12]  883 	addc	a,#(_timer0TaskStruct >> 8)
      000399 FB               [12]  884 	mov	r3,a
      00039A 8A 82            [24]  885 	mov	dpl,r2
      00039C 8B 83            [24]  886 	mov	dph,r3
      00039E A3               [24]  887 	inc	dptr
      00039F A3               [24]  888 	inc	dptr
      0003A0 A3               [24]  889 	inc	dptr
      0003A1 A3               [24]  890 	inc	dptr
      0003A2 E0               [24]  891 	movx	a,@dptr
      0003A3 F8               [12]  892 	mov	r0,a
      0003A4 A3               [24]  893 	inc	dptr
      0003A5 E0               [24]  894 	movx	a,@dptr
      0003A6 F9               [12]  895 	mov	r1,a
      0003A7 48               [12]  896 	orl	a,r0
      0003A8 60 78            [24]  897 	jz	00107$
                                    898 ;	TIMER/TIMER.c:161: if(timer0TaskStruct[i].time <= timerClock)
      0003AA C0 00            [24]  899 	push	ar0
      0003AC C0 01            [24]  900 	push	ar1
      0003AE 8A 82            [24]  901 	mov	dpl,r2
      0003B0 8B 83            [24]  902 	mov	dph,r3
      0003B2 E0               [24]  903 	movx	a,@dptr
      0003B3 F8               [12]  904 	mov	r0,a
      0003B4 A3               [24]  905 	inc	dptr
      0003B5 E0               [24]  906 	movx	a,@dptr
      0003B6 F9               [12]  907 	mov	r1,a
      0003B7 A3               [24]  908 	inc	dptr
      0003B8 E0               [24]  909 	movx	a,@dptr
      0003B9 FE               [12]  910 	mov	r6,a
      0003BA A3               [24]  911 	inc	dptr
      0003BB E0               [24]  912 	movx	a,@dptr
      0003BC FF               [12]  913 	mov	r7,a
      0003BD C3               [12]  914 	clr	c
      0003BE E5 21            [12]  915 	mov	a,_timerClock
      0003C0 98               [12]  916 	subb	a,r0
      0003C1 E5 22            [12]  917 	mov	a,(_timerClock + 1)
      0003C3 99               [12]  918 	subb	a,r1
      0003C4 E5 23            [12]  919 	mov	a,(_timerClock + 2)
      0003C6 9E               [12]  920 	subb	a,r6
      0003C7 E5 24            [12]  921 	mov	a,(_timerClock + 3)
      0003C9 9F               [12]  922 	subb	a,r7
      0003CA D0 01            [24]  923 	pop	ar1
      0003CC D0 00            [24]  924 	pop	ar0
      0003CE 40 52            [24]  925 	jc	00107$
                                    926 ;	TIMER/TIMER.c:163: timer0TaskStruct[i].TimerFun0();    //调用函数
      0003D0 C0 05            [24]  927 	push	ar5
      0003D2 C0 04            [24]  928 	push	ar4
      0003D4 C0 03            [24]  929 	push	ar3
      0003D6 C0 02            [24]  930 	push	ar2
      0003D8 C0 01            [24]  931 	push	ar1
      0003DA C0 00            [24]  932 	push	ar0
      0003DC 88 82            [24]  933 	mov	dpl,r0
      0003DE 89 83            [24]  934 	mov	dph,r1
      0003E0 12 00 31         [24]  935 	lcall	__sdcc_call_dptr
      0003E3 D0 00            [24]  936 	pop	ar0
      0003E5 D0 01            [24]  937 	pop	ar1
      0003E7 D0 02            [24]  938 	pop	ar2
      0003E9 D0 03            [24]  939 	pop	ar3
      0003EB D0 04            [24]  940 	pop	ar4
      0003ED D0 05            [24]  941 	pop	ar5
                                    942 ;	TIMER/TIMER.c:164: timer0TaskStruct[i].time = \
      0003EF 74 08            [12]  943 	mov	a,#0x08
      0003F1 2A               [12]  944 	add	a,r2
      0003F2 F5 82            [12]  945 	mov	dpl,a
      0003F4 E4               [12]  946 	clr	a
      0003F5 3B               [12]  947 	addc	a,r3
      0003F6 F5 83            [12]  948 	mov	dph,a
      0003F8 E0               [24]  949 	movx	a,@dptr
      0003F9 F8               [12]  950 	mov	r0,a
      0003FA A3               [24]  951 	inc	dptr
      0003FB E0               [24]  952 	movx	a,@dptr
      0003FC F9               [12]  953 	mov	r1,a
      0003FD A3               [24]  954 	inc	dptr
      0003FE E0               [24]  955 	movx	a,@dptr
      0003FF FE               [12]  956 	mov	r6,a
      000400 A3               [24]  957 	inc	dptr
      000401 E0               [24]  958 	movx	a,@dptr
      000402 FF               [12]  959 	mov	r7,a
      000403 E5 21            [12]  960 	mov	a,_timerClock
      000405 28               [12]  961 	add	a,r0
      000406 F8               [12]  962 	mov	r0,a
      000407 E5 22            [12]  963 	mov	a,(_timerClock + 1)
      000409 39               [12]  964 	addc	a,r1
      00040A F9               [12]  965 	mov	r1,a
      00040B E5 23            [12]  966 	mov	a,(_timerClock + 2)
      00040D 3E               [12]  967 	addc	a,r6
      00040E FE               [12]  968 	mov	r6,a
      00040F E5 24            [12]  969 	mov	a,(_timerClock + 3)
      000411 3F               [12]  970 	addc	a,r7
      000412 FF               [12]  971 	mov	r7,a
      000413 8A 82            [24]  972 	mov	dpl,r2
      000415 8B 83            [24]  973 	mov	dph,r3
      000417 E8               [12]  974 	mov	a,r0
      000418 F0               [24]  975 	movx	@dptr,a
      000419 E9               [12]  976 	mov	a,r1
      00041A A3               [24]  977 	inc	dptr
      00041B F0               [24]  978 	movx	@dptr,a
      00041C EE               [12]  979 	mov	a,r6
      00041D A3               [24]  980 	inc	dptr
      00041E F0               [24]  981 	movx	@dptr,a
      00041F EF               [12]  982 	mov	a,r7
      000420 A3               [24]  983 	inc	dptr
      000421 F0               [24]  984 	movx	@dptr,a
      000422                        985 00107$:
                                    986 ;	TIMER/TIMER.c:157: for(i = 0; i < timer0TaskCount; i++)
      000422 74 0C            [12]  987 	mov	a,#0x0C
      000424 2C               [12]  988 	add	a,r4
      000425 FC               [12]  989 	mov	r4,a
      000426 E4               [12]  990 	clr	a
      000427 3D               [12]  991 	addc	a,r5
      000428 FD               [12]  992 	mov	r5,a
      000429 05 3D            [12]  993 	inc	_updateTIMER0_i_1_24
      00042B E4               [12]  994 	clr	a
      00042C B5 3D 02         [24]  995 	cjne	a,_updateTIMER0_i_1_24,00122$
      00042F 05 3E            [12]  996 	inc	(_updateTIMER0_i_1_24 + 1)
      000431                        997 00122$:
      000431 C3               [12]  998 	clr	c
      000432 E5 3D            [12]  999 	mov	a,_updateTIMER0_i_1_24
      000434 94 0A            [12] 1000 	subb	a,#0x0A
      000436 E5 3E            [12] 1001 	mov	a,(_updateTIMER0_i_1_24 + 1)
      000438 64 80            [12] 1002 	xrl	a,#0x80
      00043A 94 80            [12] 1003 	subb	a,#0x80
      00043C 50 03            [24] 1004 	jnc	00123$
      00043E 02 03 92         [24] 1005 	ljmp	00106$
      000441                       1006 00123$:
      000441 22               [24] 1007 	ret
                                   1008 ;------------------------------------------------------------
                                   1009 ;Allocation info for local variables in function 'delay10us'
                                   1010 ;------------------------------------------------------------
                                   1011 ;	TIMER/TIMER.c:177: void delay10us()
                                   1012 ;	-----------------------------------------
                                   1013 ;	 function delay10us
                                   1014 ;	-----------------------------------------
      000442                       1015 _delay10us:
                                   1016 ;	TIMER/TIMER.c:186: __endasm;
      000442 00               [12] 1017 	NOP
      000443 00               [12] 1018 	NOP
      000444 00               [12] 1019 	NOP
      000445 00               [12] 1020 	NOP
      000446 00               [12] 1021 	NOP
      000447 00               [12] 1022 	NOP
      000448 22               [24] 1023 	ret
                                   1024 ;------------------------------------------------------------
                                   1025 ;Allocation info for local variables in function 'delay10usValue'
                                   1026 ;------------------------------------------------------------
                                   1027 ;value                     Allocated to registers 
                                   1028 ;------------------------------------------------------------
                                   1029 ;	TIMER/TIMER.c:194: void delay10usValue(unsigned int value)
                                   1030 ;	-----------------------------------------
                                   1031 ;	 function delay10usValue
                                   1032 ;	-----------------------------------------
      000449                       1033 _delay10usValue:
      000449 AE 82            [24] 1034 	mov	r6,dpl
      00044B AF 83            [24] 1035 	mov	r7,dph
                                   1036 ;	TIMER/TIMER.c:196: while(value--);
      00044D                       1037 00101$:
      00044D 8E 04            [24] 1038 	mov	ar4,r6
      00044F 8F 05            [24] 1039 	mov	ar5,r7
      000451 1E               [12] 1040 	dec	r6
      000452 BE FF 01         [24] 1041 	cjne	r6,#0xFF,00110$
      000455 1F               [12] 1042 	dec	r7
      000456                       1043 00110$:
      000456 EC               [12] 1044 	mov	a,r4
      000457 4D               [12] 1045 	orl	a,r5
      000458 70 F3            [24] 1046 	jnz	00101$
      00045A 22               [24] 1047 	ret
                                   1048 ;------------------------------------------------------------
                                   1049 ;Allocation info for local variables in function 'initTimer2'
                                   1050 ;------------------------------------------------------------
                                   1051 ;value                     Allocated to registers r6 r7 
                                   1052 ;------------------------------------------------------------
                                   1053 ;	TIMER/TIMER.c:207: void initTimer2(unsigned int value)
                                   1054 ;	-----------------------------------------
                                   1055 ;	 function initTimer2
                                   1056 ;	-----------------------------------------
      00045B                       1057 _initTimer2:
      00045B AE 82            [24] 1058 	mov	r6,dpl
      00045D AF 83            [24] 1059 	mov	r7,dph
                                   1060 ;	TIMER/TIMER.c:209: EA = 1;  //开中断
      00045F D2 AF            [12] 1061 	setb	_EA
                                   1062 ;	TIMER/TIMER.c:211: TIMER2FUN = 0;
      000461 E4               [12] 1063 	clr	a
      000462 F5 29            [12] 1064 	mov	_TIMER2FUN,a
      000464 F5 2A            [12] 1065 	mov	(_TIMER2FUN + 1),a
                                   1066 ;	TIMER/TIMER.c:212: T2CON = 0x00;
                                   1067 ;	1-genFromRTrack replaced	mov	_T2CON,#0x00
      000466 F5 C8            [12] 1068 	mov	_T2CON,a
                                   1069 ;	TIMER/TIMER.c:213: value = 65536 - value;
      000468 8E 02            [24] 1070 	mov	ar2,r6
      00046A 8F 03            [24] 1071 	mov	ar3,r7
      00046C 7C 00            [12] 1072 	mov	r4,#0x00
      00046E 7D 00            [12] 1073 	mov	r5,#0x00
      000470 C3               [12] 1074 	clr	c
      000471 9A               [12] 1075 	subb	a,r2
      000472 FA               [12] 1076 	mov	r2,a
      000473 E4               [12] 1077 	clr	a
      000474 9B               [12] 1078 	subb	a,r3
      000475 FB               [12] 1079 	mov	r3,a
      000476 74 01            [12] 1080 	mov	a,#0x01
      000478 9C               [12] 1081 	subb	a,r4
      000479 E4               [12] 1082 	clr	a
      00047A 9D               [12] 1083 	subb	a,r5
      00047B 8A 06            [24] 1084 	mov	ar6,r2
      00047D 8B 07            [24] 1085 	mov	ar7,r3
                                   1086 ;	TIMER/TIMER.c:214: RCAP2H = value>>8;
      00047F 8F CB            [24] 1087 	mov	_RCAP2H,r7
                                   1088 ;	TIMER/TIMER.c:215: RCAP2L = value;
      000481 8E CA            [24] 1089 	mov	_RCAP2L,r6
                                   1090 ;	TIMER/TIMER.c:216: TH2 = RCAP2H;
      000483 85 CB CD         [24] 1091 	mov	_TH2,_RCAP2H
                                   1092 ;	TIMER/TIMER.c:217: TL2 = RCAP2L;
      000486 85 CA CC         [24] 1093 	mov	_TL2,_RCAP2L
                                   1094 ;	TIMER/TIMER.c:218: ET2 = 1;  //使能T2中断
      000489 D2 AD            [12] 1095 	setb	_ET2
                                   1096 ;	TIMER/TIMER.c:219: PT2 = 1;  //设置T2中断为高优先级
      00048B D2 BD            [12] 1097 	setb	_PT2
                                   1098 ;	TIMER/TIMER.c:220: TR2 = 1;  //启动T2
      00048D D2 CA            [12] 1099 	setb	_TR2
      00048F 22               [24] 1100 	ret
                                   1101 ;------------------------------------------------------------
                                   1102 ;Allocation info for local variables in function 'startTimer2'
                                   1103 ;------------------------------------------------------------
                                   1104 ;	TIMER/TIMER.c:228: void startTimer2()
                                   1105 ;	-----------------------------------------
                                   1106 ;	 function startTimer2
                                   1107 ;	-----------------------------------------
      000490                       1108 _startTimer2:
                                   1109 ;	TIMER/TIMER.c:230: TR2 = 1;  
      000490 D2 CA            [12] 1110 	setb	_TR2
      000492 22               [24] 1111 	ret
                                   1112 ;------------------------------------------------------------
                                   1113 ;Allocation info for local variables in function 'stopTimer2'
                                   1114 ;------------------------------------------------------------
                                   1115 ;	TIMER/TIMER.c:239: void stopTimer2()
                                   1116 ;	-----------------------------------------
                                   1117 ;	 function stopTimer2
                                   1118 ;	-----------------------------------------
      000493                       1119 _stopTimer2:
                                   1120 ;	TIMER/TIMER.c:241: TR2 = 0;  
      000493 C2 CA            [12] 1121 	clr	_TR2
      000495 22               [24] 1122 	ret
                                   1123 ;------------------------------------------------------------
                                   1124 ;Allocation info for local variables in function 'InterruptTimer2'
                                   1125 ;------------------------------------------------------------
                                   1126 ;	TIMER/TIMER.c:250: void InterruptTimer2() __interrupt 5
                                   1127 ;	-----------------------------------------
                                   1128 ;	 function InterruptTimer2
                                   1129 ;	-----------------------------------------
      000496                       1130 _InterruptTimer2:
      000496 C0 20            [24] 1131 	push	bits
      000498 C0 E0            [24] 1132 	push	acc
      00049A C0 F0            [24] 1133 	push	b
      00049C C0 82            [24] 1134 	push	dpl
      00049E C0 83            [24] 1135 	push	dph
      0004A0 C0 07            [24] 1136 	push	(0+7)
      0004A2 C0 06            [24] 1137 	push	(0+6)
      0004A4 C0 05            [24] 1138 	push	(0+5)
      0004A6 C0 04            [24] 1139 	push	(0+4)
      0004A8 C0 03            [24] 1140 	push	(0+3)
      0004AA C0 02            [24] 1141 	push	(0+2)
      0004AC C0 01            [24] 1142 	push	(0+1)
      0004AE C0 00            [24] 1143 	push	(0+0)
      0004B0 C0 D0            [24] 1144 	push	psw
      0004B2 75 D0 00         [24] 1145 	mov	psw,#0x00
                                   1146 ;	TIMER/TIMER.c:252: TF2 = 0;
      0004B5 C2 CF            [12] 1147 	clr	_TF2
                                   1148 ;	TIMER/TIMER.c:253: if(TIMER2FUN != 0)
      0004B7 E5 29            [12] 1149 	mov	a,_TIMER2FUN
      0004B9 45 2A            [12] 1150 	orl	a,(_TIMER2FUN + 1)
      0004BB 60 09            [24] 1151 	jz	00103$
                                   1152 ;	TIMER/TIMER.c:255: TIMER2FUN();
      0004BD 85 29 82         [24] 1153 	mov	dpl,_TIMER2FUN
      0004C0 85 2A 83         [24] 1154 	mov	dph,(_TIMER2FUN + 1)
      0004C3 12 00 31         [24] 1155 	lcall	__sdcc_call_dptr
      0004C6                       1156 00103$:
      0004C6 D0 D0            [24] 1157 	pop	psw
      0004C8 D0 00            [24] 1158 	pop	(0+0)
      0004CA D0 01            [24] 1159 	pop	(0+1)
      0004CC D0 02            [24] 1160 	pop	(0+2)
      0004CE D0 03            [24] 1161 	pop	(0+3)
      0004D0 D0 04            [24] 1162 	pop	(0+4)
      0004D2 D0 05            [24] 1163 	pop	(0+5)
      0004D4 D0 06            [24] 1164 	pop	(0+6)
      0004D6 D0 07            [24] 1165 	pop	(0+7)
      0004D8 D0 83            [24] 1166 	pop	dph
      0004DA D0 82            [24] 1167 	pop	dpl
      0004DC D0 F0            [24] 1168 	pop	b
      0004DE D0 E0            [24] 1169 	pop	acc
      0004E0 D0 20            [24] 1170 	pop	bits
      0004E2 32               [24] 1171 	reti
                                   1172 ;------------------------------------------------------------
                                   1173 ;Allocation info for local variables in function 'setTimer2Fun'
                                   1174 ;------------------------------------------------------------
                                   1175 ;inTimerFun2               Allocated to registers 
                                   1176 ;------------------------------------------------------------
                                   1177 ;	TIMER/TIMER.c:265: void setTimer2Fun(void (*inTimerFun2)())
                                   1178 ;	-----------------------------------------
                                   1179 ;	 function setTimer2Fun
                                   1180 ;	-----------------------------------------
      0004E3                       1181 _setTimer2Fun:
      0004E3 85 82 29         [24] 1182 	mov	_TIMER2FUN,dpl
      0004E6 85 83 2A         [24] 1183 	mov	(_TIMER2FUN + 1),dph
                                   1184 ;	TIMER/TIMER.c:267: TIMER2FUN = inTimerFun2;
      0004E9 22               [24] 1185 	ret
                                   1186 	.area CSEG    (CODE)
                                   1187 	.area CONST   (CODE)
                                   1188 	.area XINIT   (CODE)
                                   1189 	.area CABS    (ABS,CODE)
