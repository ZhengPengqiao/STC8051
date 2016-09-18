                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Sun Sep 18 21:21:12 2016
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
                                    138 	.globl _taskCount
                                    139 	.globl _timerCount
                                    140 	.globl _timerClock
                                    141 	.globl _getTaskCount
                                    142 	.globl _addTIMER0Task
                                    143 	.globl _delTIMER0Task
                                    144 	.globl _InterruptTimer0
                                    145 	.globl _updateTIMER0
                                    146 	.globl _delay10us
                                    147 	.globl _delay10usValue
                                    148 ;--------------------------------------------------------
                                    149 ; special function registers
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0	=	0x0080
                           000081   154 _SP	=	0x0081
                           000082   155 _DPL	=	0x0082
                           000083   156 _DPH	=	0x0083
                           000087   157 _PCON	=	0x0087
                           000088   158 _TCON	=	0x0088
                           000089   159 _TMOD	=	0x0089
                           00008A   160 _TL0	=	0x008a
                           00008B   161 _TL1	=	0x008b
                           00008C   162 _TH0	=	0x008c
                           00008D   163 _TH1	=	0x008d
                           000090   164 _P1	=	0x0090
                           000098   165 _SCON	=	0x0098
                           000099   166 _SBUF	=	0x0099
                           0000A0   167 _P2	=	0x00a0
                           0000A8   168 _IE	=	0x00a8
                           0000B0   169 _P3	=	0x00b0
                           0000B8   170 _IP	=	0x00b8
                           0000D0   171 _PSW	=	0x00d0
                           0000E0   172 _ACC	=	0x00e0
                           0000F0   173 _B	=	0x00f0
                           0000C8   174 _T2CON	=	0x00c8
                           0000CA   175 _RCAP2L	=	0x00ca
                           0000CB   176 _RCAP2H	=	0x00cb
                           0000CC   177 _TL2	=	0x00cc
                           0000CD   178 _TH2	=	0x00cd
                                    179 ;--------------------------------------------------------
                                    180 ; special function bits
                                    181 ;--------------------------------------------------------
                                    182 	.area RSEG    (ABS,DATA)
      000000                        183 	.org 0x0000
                           000080   184 _P0_0	=	0x0080
                           000081   185 _P0_1	=	0x0081
                           000082   186 _P0_2	=	0x0082
                           000083   187 _P0_3	=	0x0083
                           000084   188 _P0_4	=	0x0084
                           000085   189 _P0_5	=	0x0085
                           000086   190 _P0_6	=	0x0086
                           000087   191 _P0_7	=	0x0087
                           000088   192 _IT0	=	0x0088
                           000089   193 _IE0	=	0x0089
                           00008A   194 _IT1	=	0x008a
                           00008B   195 _IE1	=	0x008b
                           00008C   196 _TR0	=	0x008c
                           00008D   197 _TF0	=	0x008d
                           00008E   198 _TR1	=	0x008e
                           00008F   199 _TF1	=	0x008f
                           000090   200 _P1_0	=	0x0090
                           000091   201 _P1_1	=	0x0091
                           000092   202 _P1_2	=	0x0092
                           000093   203 _P1_3	=	0x0093
                           000094   204 _P1_4	=	0x0094
                           000095   205 _P1_5	=	0x0095
                           000096   206 _P1_6	=	0x0096
                           000097   207 _P1_7	=	0x0097
                           000098   208 _RI	=	0x0098
                           000099   209 _TI	=	0x0099
                           00009A   210 _RB8	=	0x009a
                           00009B   211 _TB8	=	0x009b
                           00009C   212 _REN	=	0x009c
                           00009D   213 _SM2	=	0x009d
                           00009E   214 _SM1	=	0x009e
                           00009F   215 _SM0	=	0x009f
                           0000A0   216 _P2_0	=	0x00a0
                           0000A1   217 _P2_1	=	0x00a1
                           0000A2   218 _P2_2	=	0x00a2
                           0000A3   219 _P2_3	=	0x00a3
                           0000A4   220 _P2_4	=	0x00a4
                           0000A5   221 _P2_5	=	0x00a5
                           0000A6   222 _P2_6	=	0x00a6
                           0000A7   223 _P2_7	=	0x00a7
                           0000A8   224 _EX0	=	0x00a8
                           0000A9   225 _ET0	=	0x00a9
                           0000AA   226 _EX1	=	0x00aa
                           0000AB   227 _ET1	=	0x00ab
                           0000AC   228 _ES	=	0x00ac
                           0000AF   229 _EA	=	0x00af
                           0000B0   230 _P3_0	=	0x00b0
                           0000B1   231 _P3_1	=	0x00b1
                           0000B2   232 _P3_2	=	0x00b2
                           0000B3   233 _P3_3	=	0x00b3
                           0000B4   234 _P3_4	=	0x00b4
                           0000B5   235 _P3_5	=	0x00b5
                           0000B6   236 _P3_6	=	0x00b6
                           0000B7   237 _P3_7	=	0x00b7
                           0000B0   238 _RXD	=	0x00b0
                           0000B1   239 _TXD	=	0x00b1
                           0000B2   240 _INT0	=	0x00b2
                           0000B3   241 _INT1	=	0x00b3
                           0000B4   242 _T0	=	0x00b4
                           0000B5   243 _T1	=	0x00b5
                           0000B6   244 _WR	=	0x00b6
                           0000B7   245 _RD	=	0x00b7
                           0000B8   246 _PX0	=	0x00b8
                           0000B9   247 _PT0	=	0x00b9
                           0000BA   248 _PX1	=	0x00ba
                           0000BB   249 _PT1	=	0x00bb
                           0000BC   250 _PS	=	0x00bc
                           0000D0   251 _P	=	0x00d0
                           0000D1   252 _F1	=	0x00d1
                           0000D2   253 _OV	=	0x00d2
                           0000D3   254 _RS0	=	0x00d3
                           0000D4   255 _RS1	=	0x00d4
                           0000D5   256 _F0	=	0x00d5
                           0000D6   257 _AC	=	0x00d6
                           0000D7   258 _CY	=	0x00d7
                           0000AD   259 _ET2	=	0x00ad
                           0000BD   260 _PT2	=	0x00bd
                           0000C8   261 _T2CON_0	=	0x00c8
                           0000C9   262 _T2CON_1	=	0x00c9
                           0000CA   263 _T2CON_2	=	0x00ca
                           0000CB   264 _T2CON_3	=	0x00cb
                           0000CC   265 _T2CON_4	=	0x00cc
                           0000CD   266 _T2CON_5	=	0x00cd
                           0000CE   267 _T2CON_6	=	0x00ce
                           0000CF   268 _T2CON_7	=	0x00cf
                           0000C8   269 _CP_RL2	=	0x00c8
                           0000C9   270 _C_T2	=	0x00c9
                           0000CA   271 _TR2	=	0x00ca
                           0000CB   272 _EXEN2	=	0x00cb
                           0000CC   273 _TCLK	=	0x00cc
                           0000CD   274 _RCLK	=	0x00cd
                           0000CE   275 _EXF2	=	0x00ce
                           0000CF   276 _TF2	=	0x00cf
                                    277 ;--------------------------------------------------------
                                    278 ; overlayable register banks
                                    279 ;--------------------------------------------------------
                                    280 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        281 	.ds 8
                                    282 ;--------------------------------------------------------
                                    283 ; overlayable bit register bank
                                    284 ;--------------------------------------------------------
                                    285 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        286 bits:
      000020                        287 	.ds 1
                           008000   288 	b0 = bits[0]
                           008100   289 	b1 = bits[1]
                           008200   290 	b2 = bits[2]
                           008300   291 	b3 = bits[3]
                           008400   292 	b4 = bits[4]
                           008500   293 	b5 = bits[5]
                           008600   294 	b6 = bits[6]
                           008700   295 	b7 = bits[7]
                                    296 ;--------------------------------------------------------
                                    297 ; internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area DSEG    (DATA)
      000021                        300 _timerClock::
      000021                        301 	.ds 4
      000025                        302 _timerCount::
      000025                        303 	.ds 2
      000027                        304 _taskCount::
      000027                        305 	.ds 2
      000029                        306 _addTIMER0Task_PARM_2:
      000029                        307 	.ds 2
      00002B                        308 _addTIMER0Task_PARM_3:
      00002B                        309 	.ds 2
      00002D                        310 _addTIMER0Task_inTimerMs_1_11:
      00002D                        311 	.ds 2
      00002F                        312 _addTIMER0Task_sloc0_1_0:
      00002F                        313 	.ds 2
      000031                        314 _addTIMER0Task_sloc1_1_0:
      000031                        315 	.ds 2
      000033                        316 _addTIMER0Task_sloc2_1_0:
      000033                        317 	.ds 4
      000037                        318 _delTIMER0Task_intag_1_16:
      000037                        319 	.ds 2
      000039                        320 _delTIMER0Task_i_1_17:
      000039                        321 	.ds 2
      00003B                        322 _updateTIMER0_i_1_22:
      00003B                        323 	.ds 2
                                    324 ;--------------------------------------------------------
                                    325 ; overlayable items in internal ram 
                                    326 ;--------------------------------------------------------
                                    327 	.area	OSEG    (OVR,DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; indirectly addressable internal ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area ISEG    (DATA)
                                    332 ;--------------------------------------------------------
                                    333 ; absolute internal ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area IABS    (ABS,DATA)
                                    336 	.area IABS    (ABS,DATA)
                                    337 ;--------------------------------------------------------
                                    338 ; bit data
                                    339 ;--------------------------------------------------------
                                    340 	.area BSEG    (BIT)
                                    341 ;--------------------------------------------------------
                                    342 ; paged external ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area PSEG    (PAG,XDATA)
                                    345 ;--------------------------------------------------------
                                    346 ; external ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area XSEG    (XDATA)
      000001                        349 _timer0TaskStruct::
      000001                        350 	.ds 120
                                    351 ;--------------------------------------------------------
                                    352 ; absolute external ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area XABS    (ABS,XDATA)
                                    355 ;--------------------------------------------------------
                                    356 ; external initialized ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area XISEG   (XDATA)
                                    359 	.area HOME    (CODE)
                                    360 	.area GSINIT0 (CODE)
                                    361 	.area GSINIT1 (CODE)
                                    362 	.area GSINIT2 (CODE)
                                    363 	.area GSINIT3 (CODE)
                                    364 	.area GSINIT4 (CODE)
                                    365 	.area GSINIT5 (CODE)
                                    366 	.area GSINIT  (CODE)
                                    367 	.area GSFINAL (CODE)
                                    368 	.area CSEG    (CODE)
                                    369 ;--------------------------------------------------------
                                    370 ; global & static initialisations
                                    371 ;--------------------------------------------------------
                                    372 	.area HOME    (CODE)
                                    373 	.area GSINIT  (CODE)
                                    374 	.area GSFINAL (CODE)
                                    375 	.area GSINIT  (CODE)
                                    376 ;	TIMER/TIMER.c:13: unsigned long timerClock = 0;
      000086 E4               [12]  377 	clr	a
      000087 F5 21            [12]  378 	mov	_timerClock,a
      000089 F5 22            [12]  379 	mov	(_timerClock + 1),a
      00008B F5 23            [12]  380 	mov	(_timerClock + 2),a
      00008D F5 24            [12]  381 	mov	(_timerClock + 3),a
                                    382 ;	TIMER/TIMER.c:15: unsigned int timerCount = 20;  //定义初始定时周期
      00008F 75 25 14         [24]  383 	mov	_timerCount,#0x14
                                    384 ;	1-genFromRTrack replaced	mov	(_timerCount + 1),#0x00
      000092 F5 26            [12]  385 	mov	(_timerCount + 1),a
                                    386 ;	TIMER/TIMER.c:16: int taskCount = 0;
      000094 F5 27            [12]  387 	mov	_taskCount,a
      000096 F5 28            [12]  388 	mov	(_taskCount + 1),a
                                    389 ;--------------------------------------------------------
                                    390 ; Home
                                    391 ;--------------------------------------------------------
                                    392 	.area HOME    (CODE)
                                    393 	.area HOME    (CODE)
                                    394 ;--------------------------------------------------------
                                    395 ; code
                                    396 ;--------------------------------------------------------
                                    397 	.area CSEG    (CODE)
                                    398 ;------------------------------------------------------------
                                    399 ;Allocation info for local variables in function 'Timer0Start'
                                    400 ;------------------------------------------------------------
                                    401 ;	TIMER/TIMER.c:23: void Timer0Start()
                                    402 ;	-----------------------------------------
                                    403 ;	 function Timer0Start
                                    404 ;	-----------------------------------------
      0001E2                        405 _Timer0Start:
                           000007   406 	ar7 = 0x07
                           000006   407 	ar6 = 0x06
                           000005   408 	ar5 = 0x05
                           000004   409 	ar4 = 0x04
                           000003   410 	ar3 = 0x03
                           000002   411 	ar2 = 0x02
                           000001   412 	ar1 = 0x01
                           000000   413 	ar0 = 0x00
                                    414 ;	TIMER/TIMER.c:25: TR0 = 1;      //开启定时器
      0001E2 D2 8C            [12]  415 	setb	_TR0
      0001E4 22               [24]  416 	ret
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'Timer0Stop'
                                    419 ;------------------------------------------------------------
                                    420 ;	TIMER/TIMER.c:33: void Timer0Stop()
                                    421 ;	-----------------------------------------
                                    422 ;	 function Timer0Stop
                                    423 ;	-----------------------------------------
      0001E5                        424 _Timer0Stop:
                                    425 ;	TIMER/TIMER.c:35: TR0 = 0;      //停止定时器
      0001E5 C2 8C            [12]  426 	clr	_TR0
      0001E7 22               [24]  427 	ret
                                    428 ;------------------------------------------------------------
                                    429 ;Allocation info for local variables in function 'timer0SetValue'
                                    430 ;------------------------------------------------------------
                                    431 ;value                     Allocated to registers r6 r7 
                                    432 ;------------------------------------------------------------
                                    433 ;	TIMER/TIMER.c:43: void timer0SetValue(unsigned int value)
                                    434 ;	-----------------------------------------
                                    435 ;	 function timer0SetValue
                                    436 ;	-----------------------------------------
      0001E8                        437 _timer0SetValue:
      0001E8 AE 82            [24]  438 	mov	r6,dpl
      0001EA AF 83            [24]  439 	mov	r7,dph
                                    440 ;	TIMER/TIMER.c:45: value = value * 928;
      0001EC 8E 12            [24]  441 	mov	__mulint_PARM_2,r6
      0001EE 8F 13            [24]  442 	mov	(__mulint_PARM_2 + 1),r7
      0001F0 90 03 A0         [24]  443 	mov	dptr,#0x03A0
      0001F3 12 06 35         [24]  444 	lcall	__mulint
      0001F6 AE 82            [24]  445 	mov	r6,dpl
      0001F8 AF 83            [24]  446 	mov	r7,dph
                                    447 ;	TIMER/TIMER.c:46: value = 0xFFFF-value;
      0001FA 74 FF            [12]  448 	mov	a,#0xFF
      0001FC C3               [12]  449 	clr	c
      0001FD 9E               [12]  450 	subb	a,r6
      0001FE FE               [12]  451 	mov	r6,a
      0001FF 74 FF            [12]  452 	mov	a,#0xFF
      000201 9F               [12]  453 	subb	a,r7
                                    454 ;	TIMER/TIMER.c:47: TH0 = (value>>8) & 0xFF;   //设置定时时间
      000202 FD               [12]  455 	mov	r5,a
      000203 8D 8C            [24]  456 	mov	_TH0,r5
                                    457 ;	TIMER/TIMER.c:48: TL0 =  value     & 0xFF;
      000205 8E 8A            [24]  458 	mov	_TL0,r6
      000207 22               [24]  459 	ret
                                    460 ;------------------------------------------------------------
                                    461 ;Allocation info for local variables in function 'time0Init'
                                    462 ;------------------------------------------------------------
                                    463 ;i                         Allocated to registers r6 r7 
                                    464 ;------------------------------------------------------------
                                    465 ;	TIMER/TIMER.c:56: void time0Init()
                                    466 ;	-----------------------------------------
                                    467 ;	 function time0Init
                                    468 ;	-----------------------------------------
      000208                        469 _time0Init:
                                    470 ;	TIMER/TIMER.c:59: for(i = 0; i < timer0TaskCount; i++)
      000208 7E 00            [12]  471 	mov	r6,#0x00
      00020A 7F 00            [12]  472 	mov	r7,#0x00
      00020C 7C 00            [12]  473 	mov	r4,#0x00
      00020E 7D 00            [12]  474 	mov	r5,#0x00
      000210                        475 00102$:
                                    476 ;	TIMER/TIMER.c:61: timer0TaskStruct[i].TimerFun0 = NULL;
      000210 EC               [12]  477 	mov	a,r4
      000211 24 01            [12]  478 	add	a,#_timer0TaskStruct
      000213 FA               [12]  479 	mov	r2,a
      000214 ED               [12]  480 	mov	a,r5
      000215 34 00            [12]  481 	addc	a,#(_timer0TaskStruct >> 8)
      000217 FB               [12]  482 	mov	r3,a
      000218 8A 82            [24]  483 	mov	dpl,r2
      00021A 8B 83            [24]  484 	mov	dph,r3
      00021C A3               [24]  485 	inc	dptr
      00021D A3               [24]  486 	inc	dptr
      00021E A3               [24]  487 	inc	dptr
      00021F A3               [24]  488 	inc	dptr
      000220 E4               [12]  489 	clr	a
      000221 F0               [24]  490 	movx	@dptr,a
      000222 A3               [24]  491 	inc	dptr
      000223 F0               [24]  492 	movx	@dptr,a
                                    493 ;	TIMER/TIMER.c:62: taskCount = 0;
      000224 F5 27            [12]  494 	mov	_taskCount,a
      000226 F5 28            [12]  495 	mov	(_taskCount + 1),a
                                    496 ;	TIMER/TIMER.c:59: for(i = 0; i < timer0TaskCount; i++)
      000228 74 0C            [12]  497 	mov	a,#0x0C
      00022A 2C               [12]  498 	add	a,r4
      00022B FC               [12]  499 	mov	r4,a
      00022C E4               [12]  500 	clr	a
      00022D 3D               [12]  501 	addc	a,r5
      00022E FD               [12]  502 	mov	r5,a
      00022F 0E               [12]  503 	inc	r6
      000230 BE 00 01         [24]  504 	cjne	r6,#0x00,00113$
      000233 0F               [12]  505 	inc	r7
      000234                        506 00113$:
      000234 C3               [12]  507 	clr	c
      000235 EE               [12]  508 	mov	a,r6
      000236 94 0A            [12]  509 	subb	a,#0x0A
      000238 EF               [12]  510 	mov	a,r7
      000239 64 80            [12]  511 	xrl	a,#0x80
      00023B 94 80            [12]  512 	subb	a,#0x80
      00023D 40 D1            [24]  513 	jc	00102$
                                    514 ;	TIMER/TIMER.c:65: EA = 1;  //开中断
      00023F D2 AF            [12]  515 	setb	_EA
                                    516 ;	TIMER/TIMER.c:67: TMOD = 0x01;  //使能模式1
      000241 75 89 01         [24]  517 	mov	_TMOD,#0x01
                                    518 ;	TIMER/TIMER.c:68: timer0SetValue(timerCount);
      000244 85 25 82         [24]  519 	mov	dpl,_timerCount
      000247 85 26 83         [24]  520 	mov	dph,(_timerCount + 1)
      00024A 12 01 E8         [24]  521 	lcall	_timer0SetValue
                                    522 ;	TIMER/TIMER.c:69: ET0 = 1;  //开定时器0的中断
      00024D D2 A9            [12]  523 	setb	_ET0
                                    524 ;	TIMER/TIMER.c:70: Timer0Start();
      00024F 02 01 E2         [24]  525 	ljmp	_Timer0Start
                                    526 ;------------------------------------------------------------
                                    527 ;Allocation info for local variables in function 'getTaskCount'
                                    528 ;------------------------------------------------------------
                                    529 ;	TIMER/TIMER.c:79: int getTaskCount()
                                    530 ;	-----------------------------------------
                                    531 ;	 function getTaskCount
                                    532 ;	-----------------------------------------
      000252                        533 _getTaskCount:
                                    534 ;	TIMER/TIMER.c:81: return taskCount;
      000252 85 27 82         [24]  535 	mov	dpl,_taskCount
      000255 85 28 83         [24]  536 	mov	dph,(_taskCount + 1)
      000258 22               [24]  537 	ret
                                    538 ;------------------------------------------------------------
                                    539 ;Allocation info for local variables in function 'addTIMER0Task'
                                    540 ;------------------------------------------------------------
                                    541 ;inTimerFun0               Allocated with name '_addTIMER0Task_PARM_2'
                                    542 ;intag                     Allocated with name '_addTIMER0Task_PARM_3'
                                    543 ;inTimerMs                 Allocated with name '_addTIMER0Task_inTimerMs_1_11'
                                    544 ;i                         Allocated to registers r4 r5 
                                    545 ;sloc0                     Allocated with name '_addTIMER0Task_sloc0_1_0'
                                    546 ;sloc1                     Allocated with name '_addTIMER0Task_sloc1_1_0'
                                    547 ;sloc2                     Allocated with name '_addTIMER0Task_sloc2_1_0'
                                    548 ;------------------------------------------------------------
                                    549 ;	TIMER/TIMER.c:91: void addTIMER0Task(unsigned int inTimerMs,void (*inTimerFun0)(),int intag)
                                    550 ;	-----------------------------------------
                                    551 ;	 function addTIMER0Task
                                    552 ;	-----------------------------------------
      000259                        553 _addTIMER0Task:
      000259 85 82 2D         [24]  554 	mov	_addTIMER0Task_inTimerMs_1_11,dpl
      00025C 85 83 2E         [24]  555 	mov	(_addTIMER0Task_inTimerMs_1_11 + 1),dph
                                    556 ;	TIMER/TIMER.c:94: if(taskCount == 0) //在添加第一次任务时，会初始化。
      00025F E5 27            [12]  557 	mov	a,_taskCount
      000261 45 28            [12]  558 	orl	a,(_taskCount + 1)
      000263 70 03            [24]  559 	jnz	00112$
                                    560 ;	TIMER/TIMER.c:96: time0Init();
      000265 12 02 08         [24]  561 	lcall	_time0Init
                                    562 ;	TIMER/TIMER.c:98: for(i = 0; i < timer0TaskCount; i++)
      000268                        563 00112$:
      000268 7C 00            [12]  564 	mov	r4,#0x00
      00026A 7D 00            [12]  565 	mov	r5,#0x00
      00026C 7A 00            [12]  566 	mov	r2,#0x00
      00026E 7B 00            [12]  567 	mov	r3,#0x00
      000270                        568 00106$:
                                    569 ;	TIMER/TIMER.c:100: if(timer0TaskStruct[i].TimerFun0 == NULL)
      000270 EA               [12]  570 	mov	a,r2
      000271 24 01            [12]  571 	add	a,#_timer0TaskStruct
      000273 F5 31            [12]  572 	mov	_addTIMER0Task_sloc1_1_0,a
      000275 EB               [12]  573 	mov	a,r3
      000276 34 00            [12]  574 	addc	a,#(_timer0TaskStruct >> 8)
      000278 F5 32            [12]  575 	mov	(_addTIMER0Task_sloc1_1_0 + 1),a
      00027A 74 04            [12]  576 	mov	a,#0x04
      00027C 25 31            [12]  577 	add	a,_addTIMER0Task_sloc1_1_0
      00027E F5 2F            [12]  578 	mov	_addTIMER0Task_sloc0_1_0,a
      000280 E4               [12]  579 	clr	a
      000281 35 32            [12]  580 	addc	a,(_addTIMER0Task_sloc1_1_0 + 1)
      000283 F5 30            [12]  581 	mov	(_addTIMER0Task_sloc0_1_0 + 1),a
      000285 85 2F 82         [24]  582 	mov	dpl,_addTIMER0Task_sloc0_1_0
      000288 85 30 83         [24]  583 	mov	dph,(_addTIMER0Task_sloc0_1_0 + 1)
      00028B E0               [24]  584 	movx	a,@dptr
      00028C FE               [12]  585 	mov	r6,a
      00028D A3               [24]  586 	inc	dptr
      00028E E0               [24]  587 	movx	a,@dptr
      00028F FF               [12]  588 	mov	r7,a
      000290 4E               [12]  589 	orl	a,r6
      000291 70 76            [24]  590 	jnz	00107$
                                    591 ;	TIMER/TIMER.c:102: timer0TaskStruct[i].TimerFun0 = inTimerFun0;
      000293 85 2F 82         [24]  592 	mov	dpl,_addTIMER0Task_sloc0_1_0
      000296 85 30 83         [24]  593 	mov	dph,(_addTIMER0Task_sloc0_1_0 + 1)
      000299 E5 29            [12]  594 	mov	a,_addTIMER0Task_PARM_2
      00029B F0               [24]  595 	movx	@dptr,a
      00029C E5 2A            [12]  596 	mov	a,(_addTIMER0Task_PARM_2 + 1)
      00029E A3               [24]  597 	inc	dptr
      00029F F0               [24]  598 	movx	@dptr,a
                                    599 ;	TIMER/TIMER.c:103: timer0TaskStruct[i].tag = intag;
      0002A0 85 31 82         [24]  600 	mov	dpl,_addTIMER0Task_sloc1_1_0
      0002A3 85 32 83         [24]  601 	mov	dph,(_addTIMER0Task_sloc1_1_0 + 1)
      0002A6 A3               [24]  602 	inc	dptr
      0002A7 A3               [24]  603 	inc	dptr
      0002A8 A3               [24]  604 	inc	dptr
      0002A9 A3               [24]  605 	inc	dptr
      0002AA A3               [24]  606 	inc	dptr
      0002AB A3               [24]  607 	inc	dptr
      0002AC E5 2B            [12]  608 	mov	a,_addTIMER0Task_PARM_3
      0002AE F0               [24]  609 	movx	@dptr,a
      0002AF E5 2C            [12]  610 	mov	a,(_addTIMER0Task_PARM_3 + 1)
      0002B1 A3               [24]  611 	inc	dptr
      0002B2 F0               [24]  612 	movx	@dptr,a
                                    613 ;	TIMER/TIMER.c:104: timer0TaskStruct[i].time = timerClock + inTimerMs;
      0002B3 85 2D 33         [24]  614 	mov	_addTIMER0Task_sloc2_1_0,_addTIMER0Task_inTimerMs_1_11
      0002B6 85 2E 34         [24]  615 	mov	(_addTIMER0Task_sloc2_1_0 + 1),(_addTIMER0Task_inTimerMs_1_11 + 1)
      0002B9 E4               [12]  616 	clr	a
      0002BA F5 35            [12]  617 	mov	(_addTIMER0Task_sloc2_1_0 + 2),a
      0002BC F5 36            [12]  618 	mov	(_addTIMER0Task_sloc2_1_0 + 3),a
      0002BE E5 33            [12]  619 	mov	a,_addTIMER0Task_sloc2_1_0
      0002C0 25 21            [12]  620 	add	a,_timerClock
      0002C2 F8               [12]  621 	mov	r0,a
      0002C3 E5 34            [12]  622 	mov	a,(_addTIMER0Task_sloc2_1_0 + 1)
      0002C5 35 22            [12]  623 	addc	a,(_timerClock + 1)
      0002C7 F9               [12]  624 	mov	r1,a
      0002C8 E5 35            [12]  625 	mov	a,(_addTIMER0Task_sloc2_1_0 + 2)
      0002CA 35 23            [12]  626 	addc	a,(_timerClock + 2)
      0002CC FE               [12]  627 	mov	r6,a
      0002CD E5 36            [12]  628 	mov	a,(_addTIMER0Task_sloc2_1_0 + 3)
      0002CF 35 24            [12]  629 	addc	a,(_timerClock + 3)
      0002D1 FF               [12]  630 	mov	r7,a
      0002D2 85 31 82         [24]  631 	mov	dpl,_addTIMER0Task_sloc1_1_0
      0002D5 85 32 83         [24]  632 	mov	dph,(_addTIMER0Task_sloc1_1_0 + 1)
      0002D8 E8               [12]  633 	mov	a,r0
      0002D9 F0               [24]  634 	movx	@dptr,a
      0002DA E9               [12]  635 	mov	a,r1
      0002DB A3               [24]  636 	inc	dptr
      0002DC F0               [24]  637 	movx	@dptr,a
      0002DD EE               [12]  638 	mov	a,r6
      0002DE A3               [24]  639 	inc	dptr
      0002DF F0               [24]  640 	movx	@dptr,a
      0002E0 EF               [12]  641 	mov	a,r7
      0002E1 A3               [24]  642 	inc	dptr
      0002E2 F0               [24]  643 	movx	@dptr,a
                                    644 ;	TIMER/TIMER.c:105: timer0TaskStruct[i].timeBack = inTimerMs;
      0002E3 85 31 82         [24]  645 	mov	dpl,_addTIMER0Task_sloc1_1_0
      0002E6 85 32 83         [24]  646 	mov	dph,(_addTIMER0Task_sloc1_1_0 + 1)
      0002E9 A3               [24]  647 	inc	dptr
      0002EA A3               [24]  648 	inc	dptr
      0002EB A3               [24]  649 	inc	dptr
      0002EC A3               [24]  650 	inc	dptr
      0002ED A3               [24]  651 	inc	dptr
      0002EE A3               [24]  652 	inc	dptr
      0002EF A3               [24]  653 	inc	dptr
      0002F0 A3               [24]  654 	inc	dptr
      0002F1 E5 33            [12]  655 	mov	a,_addTIMER0Task_sloc2_1_0
      0002F3 F0               [24]  656 	movx	@dptr,a
      0002F4 E5 34            [12]  657 	mov	a,(_addTIMER0Task_sloc2_1_0 + 1)
      0002F6 A3               [24]  658 	inc	dptr
      0002F7 F0               [24]  659 	movx	@dptr,a
      0002F8 E5 35            [12]  660 	mov	a,(_addTIMER0Task_sloc2_1_0 + 2)
      0002FA A3               [24]  661 	inc	dptr
      0002FB F0               [24]  662 	movx	@dptr,a
      0002FC E5 36            [12]  663 	mov	a,(_addTIMER0Task_sloc2_1_0 + 3)
      0002FE A3               [24]  664 	inc	dptr
      0002FF F0               [24]  665 	movx	@dptr,a
                                    666 ;	TIMER/TIMER.c:106: taskCount++;
      000300 05 27            [12]  667 	inc	_taskCount
      000302 E4               [12]  668 	clr	a
                                    669 ;	TIMER/TIMER.c:107: break;
      000303 B5 27 1D         [24]  670 	cjne	a,_taskCount,00108$
      000306 05 28            [12]  671 	inc	(_taskCount + 1)
      000308 22               [24]  672 	ret
      000309                        673 00107$:
                                    674 ;	TIMER/TIMER.c:98: for(i = 0; i < timer0TaskCount; i++)
      000309 74 0C            [12]  675 	mov	a,#0x0C
      00030B 2A               [12]  676 	add	a,r2
      00030C FA               [12]  677 	mov	r2,a
      00030D E4               [12]  678 	clr	a
      00030E 3B               [12]  679 	addc	a,r3
      00030F FB               [12]  680 	mov	r3,a
      000310 0C               [12]  681 	inc	r4
      000311 BC 00 01         [24]  682 	cjne	r4,#0x00,00122$
      000314 0D               [12]  683 	inc	r5
      000315                        684 00122$:
      000315 C3               [12]  685 	clr	c
      000316 EC               [12]  686 	mov	a,r4
      000317 94 0A            [12]  687 	subb	a,#0x0A
      000319 ED               [12]  688 	mov	a,r5
      00031A 64 80            [12]  689 	xrl	a,#0x80
      00031C 94 80            [12]  690 	subb	a,#0x80
      00031E 50 03            [24]  691 	jnc	00123$
      000320 02 02 70         [24]  692 	ljmp	00106$
      000323                        693 00123$:
      000323                        694 00108$:
      000323 22               [24]  695 	ret
                                    696 ;------------------------------------------------------------
                                    697 ;Allocation info for local variables in function 'delTIMER0Task'
                                    698 ;------------------------------------------------------------
                                    699 ;intag                     Allocated with name '_delTIMER0Task_intag_1_16'
                                    700 ;i                         Allocated with name '_delTIMER0Task_i_1_17'
                                    701 ;------------------------------------------------------------
                                    702 ;	TIMER/TIMER.c:118: void delTIMER0Task(int intag)
                                    703 ;	-----------------------------------------
                                    704 ;	 function delTIMER0Task
                                    705 ;	-----------------------------------------
      000324                        706 _delTIMER0Task:
      000324 85 82 37         [24]  707 	mov	_delTIMER0Task_intag_1_16,dpl
      000327 85 83 38         [24]  708 	mov	(_delTIMER0Task_intag_1_16 + 1),dph
                                    709 ;	TIMER/TIMER.c:121: for(i = 0; i < timer0TaskCount; i++)
      00032A E4               [12]  710 	clr	a
      00032B F5 39            [12]  711 	mov	_delTIMER0Task_i_1_17,a
      00032D F5 3A            [12]  712 	mov	(_delTIMER0Task_i_1_17 + 1),a
      00032F 7A 00            [12]  713 	mov	r2,#0x00
      000331 7B 00            [12]  714 	mov	r3,#0x00
      000333                        715 00106$:
                                    716 ;	TIMER/TIMER.c:123: if(timer0TaskStruct[i].tag == intag)
      000333 EA               [12]  717 	mov	a,r2
      000334 24 01            [12]  718 	add	a,#_timer0TaskStruct
      000336 F8               [12]  719 	mov	r0,a
      000337 EB               [12]  720 	mov	a,r3
      000338 34 00            [12]  721 	addc	a,#(_timer0TaskStruct >> 8)
      00033A F9               [12]  722 	mov	r1,a
      00033B 74 06            [12]  723 	mov	a,#0x06
      00033D 28               [12]  724 	add	a,r0
      00033E F5 82            [12]  725 	mov	dpl,a
      000340 E4               [12]  726 	clr	a
      000341 39               [12]  727 	addc	a,r1
      000342 F5 83            [12]  728 	mov	dph,a
      000344 E0               [24]  729 	movx	a,@dptr
      000345 FE               [12]  730 	mov	r6,a
      000346 A3               [24]  731 	inc	dptr
      000347 E0               [24]  732 	movx	a,@dptr
      000348 FF               [12]  733 	mov	r7,a
      000349 AC 37            [24]  734 	mov	r4,_delTIMER0Task_intag_1_16
      00034B AD 38            [24]  735 	mov	r5,(_delTIMER0Task_intag_1_16 + 1)
      00034D EE               [12]  736 	mov	a,r6
      00034E B5 04 2C         [24]  737 	cjne	a,ar4,00107$
      000351 EF               [12]  738 	mov	a,r7
      000352 B5 05 28         [24]  739 	cjne	a,ar5,00107$
                                    740 ;	TIMER/TIMER.c:125: timer0TaskStruct[i].TimerFun0 = NULL;
      000355 88 82            [24]  741 	mov	dpl,r0
      000357 89 83            [24]  742 	mov	dph,r1
      000359 A3               [24]  743 	inc	dptr
      00035A A3               [24]  744 	inc	dptr
      00035B A3               [24]  745 	inc	dptr
      00035C A3               [24]  746 	inc	dptr
      00035D E4               [12]  747 	clr	a
      00035E F0               [24]  748 	movx	@dptr,a
      00035F A3               [24]  749 	inc	dptr
      000360 F0               [24]  750 	movx	@dptr,a
                                    751 ;	TIMER/TIMER.c:126: taskCount--;
      000361 15 27            [12]  752 	dec	_taskCount
      000363 74 FF            [12]  753 	mov	a,#0xFF
      000365 B5 27 02         [24]  754 	cjne	a,_taskCount,00121$
      000368 15 28            [12]  755 	dec	(_taskCount + 1)
      00036A                        756 00121$:
                                    757 ;	TIMER/TIMER.c:127: if(taskCount <= 0)
      00036A C3               [12]  758 	clr	c
      00036B E4               [12]  759 	clr	a
      00036C 95 27            [12]  760 	subb	a,_taskCount
      00036E 74 80            [12]  761 	mov	a,#(0x00 ^ 0x80)
      000370 85 28 F0         [24]  762 	mov	b,(_taskCount + 1)
      000373 63 F0 80         [24]  763 	xrl	b,#0x80
      000376 95 F0            [12]  764 	subb	a,b
      000378 40 1F            [24]  765 	jc	00108$
                                    766 ;	TIMER/TIMER.c:129: Timer0Stop();
                                    767 ;	TIMER/TIMER.c:131: break;
      00037A 02 01 E5         [24]  768 	ljmp	_Timer0Stop
      00037D                        769 00107$:
                                    770 ;	TIMER/TIMER.c:121: for(i = 0; i < timer0TaskCount; i++)
      00037D 74 0C            [12]  771 	mov	a,#0x0C
      00037F 2A               [12]  772 	add	a,r2
      000380 FA               [12]  773 	mov	r2,a
      000381 E4               [12]  774 	clr	a
      000382 3B               [12]  775 	addc	a,r3
      000383 FB               [12]  776 	mov	r3,a
      000384 05 39            [12]  777 	inc	_delTIMER0Task_i_1_17
      000386 E4               [12]  778 	clr	a
      000387 B5 39 02         [24]  779 	cjne	a,_delTIMER0Task_i_1_17,00123$
      00038A 05 3A            [12]  780 	inc	(_delTIMER0Task_i_1_17 + 1)
      00038C                        781 00123$:
      00038C C3               [12]  782 	clr	c
      00038D E5 39            [12]  783 	mov	a,_delTIMER0Task_i_1_17
      00038F 94 0A            [12]  784 	subb	a,#0x0A
      000391 E5 3A            [12]  785 	mov	a,(_delTIMER0Task_i_1_17 + 1)
      000393 64 80            [12]  786 	xrl	a,#0x80
      000395 94 80            [12]  787 	subb	a,#0x80
      000397 40 9A            [24]  788 	jc	00106$
      000399                        789 00108$:
      000399 22               [24]  790 	ret
                                    791 ;------------------------------------------------------------
                                    792 ;Allocation info for local variables in function 'InterruptTimer0'
                                    793 ;------------------------------------------------------------
                                    794 ;	TIMER/TIMER.c:141: void InterruptTimer0() __interrupt 1
                                    795 ;	-----------------------------------------
                                    796 ;	 function InterruptTimer0
                                    797 ;	-----------------------------------------
      00039A                        798 _InterruptTimer0:
      00039A C0 20            [24]  799 	push	bits
      00039C C0 E0            [24]  800 	push	acc
      00039E C0 F0            [24]  801 	push	b
      0003A0 C0 82            [24]  802 	push	dpl
      0003A2 C0 83            [24]  803 	push	dph
      0003A4 C0 07            [24]  804 	push	(0+7)
      0003A6 C0 06            [24]  805 	push	(0+6)
      0003A8 C0 05            [24]  806 	push	(0+5)
      0003AA C0 04            [24]  807 	push	(0+4)
      0003AC C0 03            [24]  808 	push	(0+3)
      0003AE C0 02            [24]  809 	push	(0+2)
      0003B0 C0 01            [24]  810 	push	(0+1)
      0003B2 C0 00            [24]  811 	push	(0+0)
      0003B4 C0 D0            [24]  812 	push	psw
      0003B6 75 D0 00         [24]  813 	mov	psw,#0x00
                                    814 ;	TIMER/TIMER.c:143: timerClock += timerCount;
      0003B9 AC 25            [24]  815 	mov	r4,_timerCount
      0003BB AD 26            [24]  816 	mov	r5,(_timerCount + 1)
      0003BD E4               [12]  817 	clr	a
      0003BE FE               [12]  818 	mov	r6,a
      0003BF FF               [12]  819 	mov	r7,a
      0003C0 EC               [12]  820 	mov	a,r4
      0003C1 25 21            [12]  821 	add	a,_timerClock
      0003C3 F5 21            [12]  822 	mov	_timerClock,a
      0003C5 ED               [12]  823 	mov	a,r5
      0003C6 35 22            [12]  824 	addc	a,(_timerClock + 1)
      0003C8 F5 22            [12]  825 	mov	(_timerClock + 1),a
      0003CA EE               [12]  826 	mov	a,r6
      0003CB 35 23            [12]  827 	addc	a,(_timerClock + 2)
      0003CD F5 23            [12]  828 	mov	(_timerClock + 2),a
      0003CF EF               [12]  829 	mov	a,r7
      0003D0 35 24            [12]  830 	addc	a,(_timerClock + 3)
      0003D2 F5 24            [12]  831 	mov	(_timerClock + 3),a
                                    832 ;	TIMER/TIMER.c:144: timer0SetValue(timerCount);
      0003D4 85 25 82         [24]  833 	mov	dpl,_timerCount
      0003D7 85 26 83         [24]  834 	mov	dph,(_timerCount + 1)
      0003DA 12 01 E8         [24]  835 	lcall	_timer0SetValue
      0003DD D0 D0            [24]  836 	pop	psw
      0003DF D0 00            [24]  837 	pop	(0+0)
      0003E1 D0 01            [24]  838 	pop	(0+1)
      0003E3 D0 02            [24]  839 	pop	(0+2)
      0003E5 D0 03            [24]  840 	pop	(0+3)
      0003E7 D0 04            [24]  841 	pop	(0+4)
      0003E9 D0 05            [24]  842 	pop	(0+5)
      0003EB D0 06            [24]  843 	pop	(0+6)
      0003ED D0 07            [24]  844 	pop	(0+7)
      0003EF D0 83            [24]  845 	pop	dph
      0003F1 D0 82            [24]  846 	pop	dpl
      0003F3 D0 F0            [24]  847 	pop	b
      0003F5 D0 E0            [24]  848 	pop	acc
      0003F7 D0 20            [24]  849 	pop	bits
      0003F9 32               [24]  850 	reti
                                    851 ;------------------------------------------------------------
                                    852 ;Allocation info for local variables in function 'updateTIMER0'
                                    853 ;------------------------------------------------------------
                                    854 ;i                         Allocated with name '_updateTIMER0_i_1_22'
                                    855 ;------------------------------------------------------------
                                    856 ;	TIMER/TIMER.c:152: void updateTIMER0()
                                    857 ;	-----------------------------------------
                                    858 ;	 function updateTIMER0
                                    859 ;	-----------------------------------------
      0003FA                        860 _updateTIMER0:
                                    861 ;	TIMER/TIMER.c:155: for(i = 0; i < timer0TaskCount; i++)
      0003FA E4               [12]  862 	clr	a
      0003FB F5 3B            [12]  863 	mov	_updateTIMER0_i_1_22,a
      0003FD F5 3C            [12]  864 	mov	(_updateTIMER0_i_1_22 + 1),a
      0003FF 7C 00            [12]  865 	mov	r4,#0x00
      000401 7D 00            [12]  866 	mov	r5,#0x00
      000403                        867 00106$:
                                    868 ;	TIMER/TIMER.c:157: if(timer0TaskStruct[i].TimerFun0 != NULL)
      000403 EC               [12]  869 	mov	a,r4
      000404 24 01            [12]  870 	add	a,#_timer0TaskStruct
      000406 FA               [12]  871 	mov	r2,a
      000407 ED               [12]  872 	mov	a,r5
      000408 34 00            [12]  873 	addc	a,#(_timer0TaskStruct >> 8)
      00040A FB               [12]  874 	mov	r3,a
      00040B 8A 82            [24]  875 	mov	dpl,r2
      00040D 8B 83            [24]  876 	mov	dph,r3
      00040F A3               [24]  877 	inc	dptr
      000410 A3               [24]  878 	inc	dptr
      000411 A3               [24]  879 	inc	dptr
      000412 A3               [24]  880 	inc	dptr
      000413 E0               [24]  881 	movx	a,@dptr
      000414 F8               [12]  882 	mov	r0,a
      000415 A3               [24]  883 	inc	dptr
      000416 E0               [24]  884 	movx	a,@dptr
      000417 F9               [12]  885 	mov	r1,a
      000418 48               [12]  886 	orl	a,r0
      000419 60 78            [24]  887 	jz	00107$
                                    888 ;	TIMER/TIMER.c:159: if(timer0TaskStruct[i].time <= timerClock)
      00041B C0 00            [24]  889 	push	ar0
      00041D C0 01            [24]  890 	push	ar1
      00041F 8A 82            [24]  891 	mov	dpl,r2
      000421 8B 83            [24]  892 	mov	dph,r3
      000423 E0               [24]  893 	movx	a,@dptr
      000424 F8               [12]  894 	mov	r0,a
      000425 A3               [24]  895 	inc	dptr
      000426 E0               [24]  896 	movx	a,@dptr
      000427 F9               [12]  897 	mov	r1,a
      000428 A3               [24]  898 	inc	dptr
      000429 E0               [24]  899 	movx	a,@dptr
      00042A FE               [12]  900 	mov	r6,a
      00042B A3               [24]  901 	inc	dptr
      00042C E0               [24]  902 	movx	a,@dptr
      00042D FF               [12]  903 	mov	r7,a
      00042E C3               [12]  904 	clr	c
      00042F E5 21            [12]  905 	mov	a,_timerClock
      000431 98               [12]  906 	subb	a,r0
      000432 E5 22            [12]  907 	mov	a,(_timerClock + 1)
      000434 99               [12]  908 	subb	a,r1
      000435 E5 23            [12]  909 	mov	a,(_timerClock + 2)
      000437 9E               [12]  910 	subb	a,r6
      000438 E5 24            [12]  911 	mov	a,(_timerClock + 3)
      00043A 9F               [12]  912 	subb	a,r7
      00043B D0 01            [24]  913 	pop	ar1
      00043D D0 00            [24]  914 	pop	ar0
      00043F 40 52            [24]  915 	jc	00107$
                                    916 ;	TIMER/TIMER.c:161: timer0TaskStruct[i].TimerFun0();    //调用函数
      000441 C0 05            [24]  917 	push	ar5
      000443 C0 04            [24]  918 	push	ar4
      000445 C0 03            [24]  919 	push	ar3
      000447 C0 02            [24]  920 	push	ar2
      000449 C0 01            [24]  921 	push	ar1
      00044B C0 00            [24]  922 	push	ar0
      00044D 88 82            [24]  923 	mov	dpl,r0
      00044F 89 83            [24]  924 	mov	dph,r1
      000451 12 00 11         [24]  925 	lcall	__sdcc_call_dptr
      000454 D0 00            [24]  926 	pop	ar0
      000456 D0 01            [24]  927 	pop	ar1
      000458 D0 02            [24]  928 	pop	ar2
      00045A D0 03            [24]  929 	pop	ar3
      00045C D0 04            [24]  930 	pop	ar4
      00045E D0 05            [24]  931 	pop	ar5
                                    932 ;	TIMER/TIMER.c:162: timer0TaskStruct[i].time = \
      000460 74 08            [12]  933 	mov	a,#0x08
      000462 2A               [12]  934 	add	a,r2
      000463 F5 82            [12]  935 	mov	dpl,a
      000465 E4               [12]  936 	clr	a
      000466 3B               [12]  937 	addc	a,r3
      000467 F5 83            [12]  938 	mov	dph,a
      000469 E0               [24]  939 	movx	a,@dptr
      00046A F8               [12]  940 	mov	r0,a
      00046B A3               [24]  941 	inc	dptr
      00046C E0               [24]  942 	movx	a,@dptr
      00046D F9               [12]  943 	mov	r1,a
      00046E A3               [24]  944 	inc	dptr
      00046F E0               [24]  945 	movx	a,@dptr
      000470 FE               [12]  946 	mov	r6,a
      000471 A3               [24]  947 	inc	dptr
      000472 E0               [24]  948 	movx	a,@dptr
      000473 FF               [12]  949 	mov	r7,a
      000474 E5 21            [12]  950 	mov	a,_timerClock
      000476 28               [12]  951 	add	a,r0
      000477 F8               [12]  952 	mov	r0,a
      000478 E5 22            [12]  953 	mov	a,(_timerClock + 1)
      00047A 39               [12]  954 	addc	a,r1
      00047B F9               [12]  955 	mov	r1,a
      00047C E5 23            [12]  956 	mov	a,(_timerClock + 2)
      00047E 3E               [12]  957 	addc	a,r6
      00047F FE               [12]  958 	mov	r6,a
      000480 E5 24            [12]  959 	mov	a,(_timerClock + 3)
      000482 3F               [12]  960 	addc	a,r7
      000483 FF               [12]  961 	mov	r7,a
      000484 8A 82            [24]  962 	mov	dpl,r2
      000486 8B 83            [24]  963 	mov	dph,r3
      000488 E8               [12]  964 	mov	a,r0
      000489 F0               [24]  965 	movx	@dptr,a
      00048A E9               [12]  966 	mov	a,r1
      00048B A3               [24]  967 	inc	dptr
      00048C F0               [24]  968 	movx	@dptr,a
      00048D EE               [12]  969 	mov	a,r6
      00048E A3               [24]  970 	inc	dptr
      00048F F0               [24]  971 	movx	@dptr,a
      000490 EF               [12]  972 	mov	a,r7
      000491 A3               [24]  973 	inc	dptr
      000492 F0               [24]  974 	movx	@dptr,a
      000493                        975 00107$:
                                    976 ;	TIMER/TIMER.c:155: for(i = 0; i < timer0TaskCount; i++)
      000493 74 0C            [12]  977 	mov	a,#0x0C
      000495 2C               [12]  978 	add	a,r4
      000496 FC               [12]  979 	mov	r4,a
      000497 E4               [12]  980 	clr	a
      000498 3D               [12]  981 	addc	a,r5
      000499 FD               [12]  982 	mov	r5,a
      00049A 05 3B            [12]  983 	inc	_updateTIMER0_i_1_22
      00049C E4               [12]  984 	clr	a
      00049D B5 3B 02         [24]  985 	cjne	a,_updateTIMER0_i_1_22,00122$
      0004A0 05 3C            [12]  986 	inc	(_updateTIMER0_i_1_22 + 1)
      0004A2                        987 00122$:
      0004A2 C3               [12]  988 	clr	c
      0004A3 E5 3B            [12]  989 	mov	a,_updateTIMER0_i_1_22
      0004A5 94 0A            [12]  990 	subb	a,#0x0A
      0004A7 E5 3C            [12]  991 	mov	a,(_updateTIMER0_i_1_22 + 1)
      0004A9 64 80            [12]  992 	xrl	a,#0x80
      0004AB 94 80            [12]  993 	subb	a,#0x80
      0004AD 50 03            [24]  994 	jnc	00123$
      0004AF 02 04 03         [24]  995 	ljmp	00106$
      0004B2                        996 00123$:
      0004B2 22               [24]  997 	ret
                                    998 ;------------------------------------------------------------
                                    999 ;Allocation info for local variables in function 'delay10us'
                                   1000 ;------------------------------------------------------------
                                   1001 ;	TIMER/TIMER.c:175: void delay10us()
                                   1002 ;	-----------------------------------------
                                   1003 ;	 function delay10us
                                   1004 ;	-----------------------------------------
      0004B3                       1005 _delay10us:
                                   1006 ;	TIMER/TIMER.c:184: __endasm;
      0004B3 00               [12] 1007 	NOP
      0004B4 00               [12] 1008 	NOP
      0004B5 00               [12] 1009 	NOP
      0004B6 00               [12] 1010 	NOP
      0004B7 00               [12] 1011 	NOP
      0004B8 00               [12] 1012 	NOP
      0004B9 22               [24] 1013 	ret
                                   1014 ;------------------------------------------------------------
                                   1015 ;Allocation info for local variables in function 'delay10usValue'
                                   1016 ;------------------------------------------------------------
                                   1017 ;value                     Allocated to registers 
                                   1018 ;------------------------------------------------------------
                                   1019 ;	TIMER/TIMER.c:192: void delay10usValue(unsigned int value)
                                   1020 ;	-----------------------------------------
                                   1021 ;	 function delay10usValue
                                   1022 ;	-----------------------------------------
      0004BA                       1023 _delay10usValue:
      0004BA AE 82            [24] 1024 	mov	r6,dpl
      0004BC AF 83            [24] 1025 	mov	r7,dph
                                   1026 ;	TIMER/TIMER.c:194: while(value--);
      0004BE                       1027 00101$:
      0004BE 8E 04            [24] 1028 	mov	ar4,r6
      0004C0 8F 05            [24] 1029 	mov	ar5,r7
      0004C2 1E               [12] 1030 	dec	r6
      0004C3 BE FF 01         [24] 1031 	cjne	r6,#0xFF,00110$
      0004C6 1F               [12] 1032 	dec	r7
      0004C7                       1033 00110$:
      0004C7 EC               [12] 1034 	mov	a,r4
      0004C8 4D               [12] 1035 	orl	a,r5
      0004C9 70 F3            [24] 1036 	jnz	00101$
      0004CB 22               [24] 1037 	ret
                                   1038 	.area CSEG    (CODE)
                                   1039 	.area CONST   (CODE)
                                   1040 	.area XINIT   (CODE)
                                   1041 	.area CABS    (ABS,CODE)
