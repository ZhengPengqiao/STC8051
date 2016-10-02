                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Sun Oct  2 10:13:52 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _fun
                                     14 	.globl _ds1302BurstRead
                                     15 	.globl _initDS1302
                                     16 	.globl _LcdShowString
                                     17 	.globl _initLcd
                                     18 	.globl _addTIMER0Task
                                     19 	.globl _updateTIMER0
                                     20 	.globl _TF2
                                     21 	.globl _EXF2
                                     22 	.globl _RCLK
                                     23 	.globl _TCLK
                                     24 	.globl _EXEN2
                                     25 	.globl _TR2
                                     26 	.globl _C_T2
                                     27 	.globl _CP_RL2
                                     28 	.globl _T2CON_7
                                     29 	.globl _T2CON_6
                                     30 	.globl _T2CON_5
                                     31 	.globl _T2CON_4
                                     32 	.globl _T2CON_3
                                     33 	.globl _T2CON_2
                                     34 	.globl _T2CON_1
                                     35 	.globl _T2CON_0
                                     36 	.globl _PT2
                                     37 	.globl _ET2
                                     38 	.globl _CY
                                     39 	.globl _AC
                                     40 	.globl _F0
                                     41 	.globl _RS1
                                     42 	.globl _RS0
                                     43 	.globl _OV
                                     44 	.globl _F1
                                     45 	.globl _P
                                     46 	.globl _PS
                                     47 	.globl _PT1
                                     48 	.globl _PX1
                                     49 	.globl _PT0
                                     50 	.globl _PX0
                                     51 	.globl _RD
                                     52 	.globl _WR
                                     53 	.globl _T1
                                     54 	.globl _T0
                                     55 	.globl _INT1
                                     56 	.globl _INT0
                                     57 	.globl _TXD
                                     58 	.globl _RXD
                                     59 	.globl _P3_7
                                     60 	.globl _P3_6
                                     61 	.globl _P3_5
                                     62 	.globl _P3_4
                                     63 	.globl _P3_3
                                     64 	.globl _P3_2
                                     65 	.globl _P3_1
                                     66 	.globl _P3_0
                                     67 	.globl _EA
                                     68 	.globl _ES
                                     69 	.globl _ET1
                                     70 	.globl _EX1
                                     71 	.globl _ET0
                                     72 	.globl _EX0
                                     73 	.globl _P2_7
                                     74 	.globl _P2_6
                                     75 	.globl _P2_5
                                     76 	.globl _P2_4
                                     77 	.globl _P2_3
                                     78 	.globl _P2_2
                                     79 	.globl _P2_1
                                     80 	.globl _P2_0
                                     81 	.globl _SM0
                                     82 	.globl _SM1
                                     83 	.globl _SM2
                                     84 	.globl _REN
                                     85 	.globl _TB8
                                     86 	.globl _RB8
                                     87 	.globl _TI
                                     88 	.globl _RI
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _TH2
                                    114 	.globl _TL2
                                    115 	.globl _RCAP2H
                                    116 	.globl _RCAP2L
                                    117 	.globl _T2CON
                                    118 	.globl _B
                                    119 	.globl _ACC
                                    120 	.globl _PSW
                                    121 	.globl _IP
                                    122 	.globl _P3
                                    123 	.globl _IE
                                    124 	.globl _P2
                                    125 	.globl _SBUF
                                    126 	.globl _SCON
                                    127 	.globl _P1
                                    128 	.globl _TH1
                                    129 	.globl _TH0
                                    130 	.globl _TL1
                                    131 	.globl _TL0
                                    132 	.globl _TMOD
                                    133 	.globl _TCON
                                    134 	.globl _PCON
                                    135 	.globl _DPH
                                    136 	.globl _DPL
                                    137 	.globl _SP
                                    138 	.globl _P0
                                    139 	.globl _timeStatua
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0	=	0x0080
                           000081   146 _SP	=	0x0081
                           000082   147 _DPL	=	0x0082
                           000083   148 _DPH	=	0x0083
                           000087   149 _PCON	=	0x0087
                           000088   150 _TCON	=	0x0088
                           000089   151 _TMOD	=	0x0089
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           00008C   154 _TH0	=	0x008c
                           00008D   155 _TH1	=	0x008d
                           000090   156 _P1	=	0x0090
                           000098   157 _SCON	=	0x0098
                           000099   158 _SBUF	=	0x0099
                           0000A0   159 _P2	=	0x00a0
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 _P3	=	0x00b0
                           0000B8   162 _IP	=	0x00b8
                           0000D0   163 _PSW	=	0x00d0
                           0000E0   164 _ACC	=	0x00e0
                           0000F0   165 _B	=	0x00f0
                           0000C8   166 _T2CON	=	0x00c8
                           0000CA   167 _RCAP2L	=	0x00ca
                           0000CB   168 _RCAP2H	=	0x00cb
                           0000CC   169 _TL2	=	0x00cc
                           0000CD   170 _TH2	=	0x00cd
                                    171 ;--------------------------------------------------------
                                    172 ; special function bits
                                    173 ;--------------------------------------------------------
                                    174 	.area RSEG    (ABS,DATA)
      000000                        175 	.org 0x0000
                           000080   176 _P0_0	=	0x0080
                           000081   177 _P0_1	=	0x0081
                           000082   178 _P0_2	=	0x0082
                           000083   179 _P0_3	=	0x0083
                           000084   180 _P0_4	=	0x0084
                           000085   181 _P0_5	=	0x0085
                           000086   182 _P0_6	=	0x0086
                           000087   183 _P0_7	=	0x0087
                           000088   184 _IT0	=	0x0088
                           000089   185 _IE0	=	0x0089
                           00008A   186 _IT1	=	0x008a
                           00008B   187 _IE1	=	0x008b
                           00008C   188 _TR0	=	0x008c
                           00008D   189 _TF0	=	0x008d
                           00008E   190 _TR1	=	0x008e
                           00008F   191 _TF1	=	0x008f
                           000090   192 _P1_0	=	0x0090
                           000091   193 _P1_1	=	0x0091
                           000092   194 _P1_2	=	0x0092
                           000093   195 _P1_3	=	0x0093
                           000094   196 _P1_4	=	0x0094
                           000095   197 _P1_5	=	0x0095
                           000096   198 _P1_6	=	0x0096
                           000097   199 _P1_7	=	0x0097
                           000098   200 _RI	=	0x0098
                           000099   201 _TI	=	0x0099
                           00009A   202 _RB8	=	0x009a
                           00009B   203 _TB8	=	0x009b
                           00009C   204 _REN	=	0x009c
                           00009D   205 _SM2	=	0x009d
                           00009E   206 _SM1	=	0x009e
                           00009F   207 _SM0	=	0x009f
                           0000A0   208 _P2_0	=	0x00a0
                           0000A1   209 _P2_1	=	0x00a1
                           0000A2   210 _P2_2	=	0x00a2
                           0000A3   211 _P2_3	=	0x00a3
                           0000A4   212 _P2_4	=	0x00a4
                           0000A5   213 _P2_5	=	0x00a5
                           0000A6   214 _P2_6	=	0x00a6
                           0000A7   215 _P2_7	=	0x00a7
                           0000A8   216 _EX0	=	0x00a8
                           0000A9   217 _ET0	=	0x00a9
                           0000AA   218 _EX1	=	0x00aa
                           0000AB   219 _ET1	=	0x00ab
                           0000AC   220 _ES	=	0x00ac
                           0000AF   221 _EA	=	0x00af
                           0000B0   222 _P3_0	=	0x00b0
                           0000B1   223 _P3_1	=	0x00b1
                           0000B2   224 _P3_2	=	0x00b2
                           0000B3   225 _P3_3	=	0x00b3
                           0000B4   226 _P3_4	=	0x00b4
                           0000B5   227 _P3_5	=	0x00b5
                           0000B6   228 _P3_6	=	0x00b6
                           0000B7   229 _P3_7	=	0x00b7
                           0000B0   230 _RXD	=	0x00b0
                           0000B1   231 _TXD	=	0x00b1
                           0000B2   232 _INT0	=	0x00b2
                           0000B3   233 _INT1	=	0x00b3
                           0000B4   234 _T0	=	0x00b4
                           0000B5   235 _T1	=	0x00b5
                           0000B6   236 _WR	=	0x00b6
                           0000B7   237 _RD	=	0x00b7
                           0000B8   238 _PX0	=	0x00b8
                           0000B9   239 _PT0	=	0x00b9
                           0000BA   240 _PX1	=	0x00ba
                           0000BB   241 _PT1	=	0x00bb
                           0000BC   242 _PS	=	0x00bc
                           0000D0   243 _P	=	0x00d0
                           0000D1   244 _F1	=	0x00d1
                           0000D2   245 _OV	=	0x00d2
                           0000D3   246 _RS0	=	0x00d3
                           0000D4   247 _RS1	=	0x00d4
                           0000D5   248 _F0	=	0x00d5
                           0000D6   249 _AC	=	0x00d6
                           0000D7   250 _CY	=	0x00d7
                           0000AD   251 _ET2	=	0x00ad
                           0000BD   252 _PT2	=	0x00bd
                           0000C8   253 _T2CON_0	=	0x00c8
                           0000C9   254 _T2CON_1	=	0x00c9
                           0000CA   255 _T2CON_2	=	0x00ca
                           0000CB   256 _T2CON_3	=	0x00cb
                           0000CC   257 _T2CON_4	=	0x00cc
                           0000CD   258 _T2CON_5	=	0x00cd
                           0000CE   259 _T2CON_6	=	0x00ce
                           0000CF   260 _T2CON_7	=	0x00cf
                           0000C8   261 _CP_RL2	=	0x00c8
                           0000C9   262 _C_T2	=	0x00c9
                           0000CA   263 _TR2	=	0x00ca
                           0000CB   264 _EXEN2	=	0x00cb
                           0000CC   265 _TCLK	=	0x00cc
                           0000CD   266 _RCLK	=	0x00cd
                           0000CE   267 _EXF2	=	0x00ce
                           0000CF   268 _TF2	=	0x00cf
                                    269 ;--------------------------------------------------------
                                    270 ; overlayable register banks
                                    271 ;--------------------------------------------------------
                                    272 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        273 	.ds 8
                                    274 ;--------------------------------------------------------
                                    275 ; internal ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area DSEG    (DATA)
      000008                        278 _timeStatua::
      000008                        279 	.ds 1
      000009                        280 _main_time_1_19:
      000009                        281 	.ds 8
      000011                        282 _main_str_1_19:
      000011                        283 	.ds 12
                                    284 ;--------------------------------------------------------
                                    285 ; overlayable items in internal ram 
                                    286 ;--------------------------------------------------------
                                    287 ;--------------------------------------------------------
                                    288 ; Stack segment in internal ram 
                                    289 ;--------------------------------------------------------
                                    290 	.area	SSEG
      00004E                        291 __start__stack:
      00004E                        292 	.ds	1
                                    293 
                                    294 ;--------------------------------------------------------
                                    295 ; indirectly addressable internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area ISEG    (DATA)
                                    298 ;--------------------------------------------------------
                                    299 ; absolute internal ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area IABS    (ABS,DATA)
                                    302 	.area IABS    (ABS,DATA)
                                    303 ;--------------------------------------------------------
                                    304 ; bit data
                                    305 ;--------------------------------------------------------
                                    306 	.area BSEG    (BIT)
                                    307 ;--------------------------------------------------------
                                    308 ; paged external ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area PSEG    (PAG,XDATA)
                                    311 ;--------------------------------------------------------
                                    312 ; external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area XSEG    (XDATA)
                                    315 ;--------------------------------------------------------
                                    316 ; absolute external ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area XABS    (ABS,XDATA)
                                    319 ;--------------------------------------------------------
                                    320 ; external initialized ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area XISEG   (XDATA)
                                    323 	.area HOME    (CODE)
                                    324 	.area GSINIT0 (CODE)
                                    325 	.area GSINIT1 (CODE)
                                    326 	.area GSINIT2 (CODE)
                                    327 	.area GSINIT3 (CODE)
                                    328 	.area GSINIT4 (CODE)
                                    329 	.area GSINIT5 (CODE)
                                    330 	.area GSINIT  (CODE)
                                    331 	.area GSFINAL (CODE)
                                    332 	.area CSEG    (CODE)
                                    333 ;--------------------------------------------------------
                                    334 ; interrupt vector 
                                    335 ;--------------------------------------------------------
                                    336 	.area HOME    (CODE)
      000000                        337 __interrupt_vect:
      000000 02 00 33         [24]  338 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  339 	reti
      000004                        340 	.ds	7
      00000B 02 03 75         [24]  341 	ljmp	_InterruptTimer0
      00000E                        342 	.ds	5
      000013 32               [24]  343 	reti
      000014                        344 	.ds	7
      00001B 32               [24]  345 	reti
      00001C                        346 	.ds	7
      000023 32               [24]  347 	reti
      000024                        348 	.ds	7
      00002B 02 04 E7         [24]  349 	ljmp	_InterruptTimer2
                                    350 ;--------------------------------------------------------
                                    351 ; global & static initialisations
                                    352 ;--------------------------------------------------------
                                    353 	.area HOME    (CODE)
                                    354 	.area GSINIT  (CODE)
                                    355 	.area GSFINAL (CODE)
                                    356 	.area GSINIT  (CODE)
                                    357 	.globl __sdcc_gsinit_startup
                                    358 	.globl __sdcc_program_startup
                                    359 	.globl __start__stack
                                    360 	.globl __mcs51_genXINIT
                                    361 	.globl __mcs51_genXRAMCLEAR
                                    362 	.globl __mcs51_genRAMCLEAR
                                    363 ;	main.c:6: unsigned char timeStatua = 0;
      00008C 75 08 00         [24]  364 	mov	_timeStatua,#0x00
                                    365 	.area GSFINAL (CODE)
      0000A1 02 00 2E         [24]  366 	ljmp	__sdcc_program_startup
                                    367 ;--------------------------------------------------------
                                    368 ; Home
                                    369 ;--------------------------------------------------------
                                    370 	.area HOME    (CODE)
                                    371 	.area HOME    (CODE)
      00002E                        372 __sdcc_program_startup:
      00002E 02 00 A8         [24]  373 	ljmp	_main
                                    374 ;	return from main will return to caller
                                    375 ;--------------------------------------------------------
                                    376 ; code
                                    377 ;--------------------------------------------------------
                                    378 	.area CSEG    (CODE)
                                    379 ;------------------------------------------------------------
                                    380 ;Allocation info for local variables in function 'fun'
                                    381 ;------------------------------------------------------------
                                    382 ;	main.c:7: void fun()
                                    383 ;	-----------------------------------------
                                    384 ;	 function fun
                                    385 ;	-----------------------------------------
      0000A4                        386 _fun:
                           000007   387 	ar7 = 0x07
                           000006   388 	ar6 = 0x06
                           000005   389 	ar5 = 0x05
                           000004   390 	ar4 = 0x04
                           000003   391 	ar3 = 0x03
                           000002   392 	ar2 = 0x02
                           000001   393 	ar1 = 0x01
                           000000   394 	ar0 = 0x00
                                    395 ;	main.c:9: timeStatua = 1;
      0000A4 75 08 01         [24]  396 	mov	_timeStatua,#0x01
      0000A7 22               [24]  397 	ret
                                    398 ;------------------------------------------------------------
                                    399 ;Allocation info for local variables in function 'main'
                                    400 ;------------------------------------------------------------
                                    401 ;psec                      Allocated to registers r7 
                                    402 ;time                      Allocated with name '_main_time_1_19'
                                    403 ;str                       Allocated with name '_main_str_1_19'
                                    404 ;------------------------------------------------------------
                                    405 ;	main.c:12: void main()
                                    406 ;	-----------------------------------------
                                    407 ;	 function main
                                    408 ;	-----------------------------------------
      0000A8                        409 _main:
                                    410 ;	main.c:14: unsigned char psec=0xAA; //秒备份,初值 AA 确保首次读取时间后会刷新显示
      0000A8 7F AA            [12]  411 	mov	r7,#0xAA
                                    412 ;	main.c:17: initDS1302(); //初始化实时时钟
      0000AA C0 07            [24]  413 	push	ar7
      0000AC 12 05 3B         [24]  414 	lcall	_initDS1302
                                    415 ;	main.c:21: initLcd(); //初始化液晶
      0000AF 12 06 C8         [24]  416 	lcall	_initLcd
                                    417 ;	main.c:22: addTIMER0Task(200,fun,1);
      0000B2 75 2B A4         [24]  418 	mov	_addTIMER0Task_PARM_2,#_fun
      0000B5 75 2C 00         [24]  419 	mov	(_addTIMER0Task_PARM_2 + 1),#(_fun >> 8)
      0000B8 75 2D 80         [24]  420 	mov	(_addTIMER0Task_PARM_2 + 2),#0x80
      0000BB 75 2D 01         [24]  421 	mov	_addTIMER0Task_PARM_3,#0x01
      0000BE 75 2E 00         [24]  422 	mov	(_addTIMER0Task_PARM_3 + 1),#0x00
      0000C1 90 00 C8         [24]  423 	mov	dptr,#0x00C8
      0000C4 12 02 34         [24]  424 	lcall	_addTIMER0Task
      0000C7 D0 07            [24]  425 	pop	ar7
                                    426 ;	main.c:23: while (1)
      0000C9                        427 00106$:
                                    428 ;	main.c:25: updateTIMER0();
      0000C9 C0 07            [24]  429 	push	ar7
      0000CB 12 03 D5         [24]  430 	lcall	_updateTIMER0
      0000CE D0 07            [24]  431 	pop	ar7
                                    432 ;	main.c:26: if( timeStatua != 0)
      0000D0 E5 08            [12]  433 	mov	a,_timeStatua
      0000D2 60 F5            [24]  434 	jz	00106$
                                    435 ;	main.c:29: ds1302BurstRead(time); //读取 DS1302 当前时间
      0000D4 90 00 09         [24]  436 	mov	dptr,#_main_time_1_19
      0000D7 75 F0 40         [24]  437 	mov	b,#0x40
      0000DA C0 07            [24]  438 	push	ar7
      0000DC 12 05 D3         [24]  439 	lcall	_ds1302BurstRead
      0000DF D0 07            [24]  440 	pop	ar7
                                    441 ;	main.c:30: if (psec != time[0])			//检测到时间有变化时刷新显示
      0000E1 EF               [12]  442 	mov	a,r7
      0000E2 B5 09 02         [24]  443 	cjne	a,_main_time_1_19,00120$
      0000E5 80 E2            [24]  444 	sjmp	00106$
      0000E7                        445 00120$:
                                    446 ;	main.c:32: str[0] = '2'; //添加年份的高 2 位:20
      0000E7 75 11 32         [24]  447 	mov	_main_str_1_19,#0x32
                                    448 ;	main.c:33: str[1] = '0';
      0000EA 75 12 30         [24]  449 	mov	(_main_str_1_19 + 0x0001),#0x30
                                    450 ;	main.c:34: str[2] = (time[6] >> 4) + '0'; //“年”高位数字转换为 ASCII 码
      0000ED E5 0F            [12]  451 	mov	a,(_main_time_1_19 + 0x0006)
      0000EF C4               [12]  452 	swap	a
      0000F0 54 0F            [12]  453 	anl	a,#0x0F
      0000F2 24 30            [12]  454 	add	a,#0x30
      0000F4 F5 13            [12]  455 	mov	(_main_str_1_19 + 0x0002),a
                                    456 ;	main.c:35: str[3] = (time[6]&0x0F) + '0'; //“年”低位数字转换为 ASCII 码
      0000F6 74 0F            [12]  457 	mov	a,#0x0F
      0000F8 55 0F            [12]  458 	anl	a,(_main_time_1_19 + 0x0006)
      0000FA 24 30            [12]  459 	add	a,#0x30
      0000FC F5 14            [12]  460 	mov	(_main_str_1_19 + 0x0003),a
                                    461 ;	main.c:36: str[4] = '-'; //添加日期分隔符
      0000FE 75 15 2D         [24]  462 	mov	(_main_str_1_19 + 0x0004),#0x2D
                                    463 ;	main.c:37: str[5] = (time[4] >> 4) + '0'; //“月”
      000101 E5 0D            [12]  464 	mov	a,(_main_time_1_19 + 0x0004)
      000103 C4               [12]  465 	swap	a
      000104 54 0F            [12]  466 	anl	a,#0x0F
      000106 24 30            [12]  467 	add	a,#0x30
      000108 F5 16            [12]  468 	mov	(_main_str_1_19 + 0x0005),a
                                    469 ;	main.c:38: str[6] = (time[4]&0x0F) + '0';
      00010A 74 0F            [12]  470 	mov	a,#0x0F
      00010C 55 0D            [12]  471 	anl	a,(_main_time_1_19 + 0x0004)
      00010E 24 30            [12]  472 	add	a,#0x30
      000110 F5 17            [12]  473 	mov	(_main_str_1_19 + 0x0006),a
                                    474 ;	main.c:39: str[7] = '-';
      000112 75 18 2D         [24]  475 	mov	(_main_str_1_19 + 0x0007),#0x2D
                                    476 ;	main.c:40: str[8] = (time[3] >> 4) + '0'; //“日”
      000115 E5 0C            [12]  477 	mov	a,(_main_time_1_19 + 0x0003)
      000117 C4               [12]  478 	swap	a
      000118 54 0F            [12]  479 	anl	a,#0x0F
      00011A 24 30            [12]  480 	add	a,#0x30
      00011C F5 19            [12]  481 	mov	(_main_str_1_19 + 0x0008),a
                                    482 ;	main.c:41: str[9] = (time[3]&0x0F) + '0';
      00011E 74 0F            [12]  483 	mov	a,#0x0F
      000120 55 0C            [12]  484 	anl	a,(_main_time_1_19 + 0x0003)
      000122 24 30            [12]  485 	add	a,#0x30
      000124 F5 1A            [12]  486 	mov	(_main_str_1_19 + 0x0009),a
                                    487 ;	main.c:42: str[10] = '\0';
      000126 75 1B 00         [24]  488 	mov	(_main_str_1_19 + 0x000a),#0x00
                                    489 ;	main.c:43: LcdShowString(0, 0, str); //显示到液晶的第一行
      000129 75 4B 11         [24]  490 	mov	_LcdShowString_PARM_3,#_main_str_1_19
      00012C 75 4C 00         [24]  491 	mov	(_LcdShowString_PARM_3 + 1),#0x00
      00012F 75 4D 40         [24]  492 	mov	(_LcdShowString_PARM_3 + 2),#0x40
      000132 75 4A 00         [24]  493 	mov	_LcdShowString_PARM_2,#0x00
      000135 75 82 00         [24]  494 	mov	dpl,#0x00
      000138 12 07 01         [24]  495 	lcall	_LcdShowString
                                    496 ;	main.c:44: str[0] = (time[5]&0x0F) + '0'; //“星期”
      00013B 74 0F            [12]  497 	mov	a,#0x0F
      00013D 55 0E            [12]  498 	anl	a,(_main_time_1_19 + 0x0005)
      00013F 24 30            [12]  499 	add	a,#0x30
      000141 F5 11            [12]  500 	mov	_main_str_1_19,a
                                    501 ;	main.c:45: str[1] = '\0';
      000143 75 12 00         [24]  502 	mov	(_main_str_1_19 + 0x0001),#0x00
                                    503 ;	main.c:46: LcdShowString(11, 0, "week");
      000146 75 4B 8A         [24]  504 	mov	_LcdShowString_PARM_3,#___str_0
      000149 75 4C 07         [24]  505 	mov	(_LcdShowString_PARM_3 + 1),#(___str_0 >> 8)
      00014C 75 4D 80         [24]  506 	mov	(_LcdShowString_PARM_3 + 2),#0x80
      00014F 75 4A 00         [24]  507 	mov	_LcdShowString_PARM_2,#0x00
      000152 75 82 0B         [24]  508 	mov	dpl,#0x0B
      000155 12 07 01         [24]  509 	lcall	_LcdShowString
                                    510 ;	main.c:47: LcdShowString(15, 0, str); //显示到液晶的第一行
      000158 75 4B 11         [24]  511 	mov	_LcdShowString_PARM_3,#_main_str_1_19
      00015B 75 4C 00         [24]  512 	mov	(_LcdShowString_PARM_3 + 1),#0x00
      00015E 75 4D 40         [24]  513 	mov	(_LcdShowString_PARM_3 + 2),#0x40
      000161 75 4A 00         [24]  514 	mov	_LcdShowString_PARM_2,#0x00
      000164 75 82 0F         [24]  515 	mov	dpl,#0x0F
      000167 12 07 01         [24]  516 	lcall	_LcdShowString
                                    517 ;	main.c:48: str[0] = (time[2] >> 4) + '0'; //“时”
      00016A E5 0B            [12]  518 	mov	a,(_main_time_1_19 + 0x0002)
      00016C C4               [12]  519 	swap	a
      00016D 54 0F            [12]  520 	anl	a,#0x0F
      00016F 24 30            [12]  521 	add	a,#0x30
      000171 F5 11            [12]  522 	mov	_main_str_1_19,a
                                    523 ;	main.c:49: str[1] = (time[2]&0x0F) + '0';
      000173 74 0F            [12]  524 	mov	a,#0x0F
      000175 55 0B            [12]  525 	anl	a,(_main_time_1_19 + 0x0002)
      000177 24 30            [12]  526 	add	a,#0x30
      000179 F5 12            [12]  527 	mov	(_main_str_1_19 + 0x0001),a
                                    528 ;	main.c:50: str[2] = ':'; //添加时间分隔符
      00017B 75 13 3A         [24]  529 	mov	(_main_str_1_19 + 0x0002),#0x3A
                                    530 ;	main.c:51: str[3] = (time[1] >> 4) + '0'; //“分”
      00017E E5 0A            [12]  531 	mov	a,(_main_time_1_19 + 0x0001)
      000180 C4               [12]  532 	swap	a
      000181 54 0F            [12]  533 	anl	a,#0x0F
      000183 24 30            [12]  534 	add	a,#0x30
      000185 F5 14            [12]  535 	mov	(_main_str_1_19 + 0x0003),a
                                    536 ;	main.c:52: str[4] = (time[1]&0x0F) + '0';
      000187 74 0F            [12]  537 	mov	a,#0x0F
      000189 55 0A            [12]  538 	anl	a,(_main_time_1_19 + 0x0001)
      00018B 24 30            [12]  539 	add	a,#0x30
      00018D F5 15            [12]  540 	mov	(_main_str_1_19 + 0x0004),a
                                    541 ;	main.c:53: str[5] = ':';
      00018F 75 16 3A         [24]  542 	mov	(_main_str_1_19 + 0x0005),#0x3A
                                    543 ;	main.c:54: str[6] = (time[0] >> 4) + '0'; //“秒”
      000192 E5 09            [12]  544 	mov	a,_main_time_1_19
      000194 C4               [12]  545 	swap	a
      000195 54 0F            [12]  546 	anl	a,#0x0F
      000197 24 30            [12]  547 	add	a,#0x30
      000199 F5 17            [12]  548 	mov	(_main_str_1_19 + 0x0006),a
                                    549 ;	main.c:55: str[7] = (time[0]&0x0F) + '0';
      00019B 74 0F            [12]  550 	mov	a,#0x0F
      00019D 55 09            [12]  551 	anl	a,_main_time_1_19
      00019F 24 30            [12]  552 	add	a,#0x30
      0001A1 F5 18            [12]  553 	mov	(_main_str_1_19 + 0x0007),a
                                    554 ;	main.c:56: str[8] = '\0';
      0001A3 75 19 00         [24]  555 	mov	(_main_str_1_19 + 0x0008),#0x00
                                    556 ;	main.c:57: LcdShowString(4, 1, str); //显示到液晶的第二行
      0001A6 75 4B 11         [24]  557 	mov	_LcdShowString_PARM_3,#_main_str_1_19
      0001A9 75 4C 00         [24]  558 	mov	(_LcdShowString_PARM_3 + 1),#0x00
      0001AC 75 4D 40         [24]  559 	mov	(_LcdShowString_PARM_3 + 2),#0x40
      0001AF 75 4A 01         [24]  560 	mov	_LcdShowString_PARM_2,#0x01
      0001B2 75 82 04         [24]  561 	mov	dpl,#0x04
      0001B5 12 07 01         [24]  562 	lcall	_LcdShowString
                                    563 ;	main.c:58: psec = time[0]; //用当前值更新上次秒数
      0001B8 AF 09            [24]  564 	mov	r7,_main_time_1_19
      0001BA 02 00 C9         [24]  565 	ljmp	00106$
                                    566 	.area CSEG    (CODE)
                                    567 	.area CONST   (CODE)
      00078A                        568 ___str_0:
      00078A 77 65 65 6B            569 	.ascii "week"
      00078E 00                     570 	.db 0x00
                                    571 	.area XINIT   (CODE)
                                    572 	.area CABS    (ABS,CODE)
