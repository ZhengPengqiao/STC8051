;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Sun Oct  2 10:13:52 2016
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _fun
	.globl _ds1302BurstRead
	.globl _initDS1302
	.globl _LcdShowString
	.globl _initLcd
	.globl _addTIMER0Task
	.globl _updateTIMER0
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _timeStatua
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_timeStatua::
	.ds 1
_main_time_1_19:
	.ds 8
_main_str_1_19:
	.ds 12
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_InterruptTimer0
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_InterruptTimer2
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:6: unsigned char timeStatua = 0;
	mov	_timeStatua,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'fun'
;------------------------------------------------------------
;	main.c:7: void fun()
;	-----------------------------------------
;	 function fun
;	-----------------------------------------
_fun:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:9: timeStatua = 1;
	mov	_timeStatua,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;psec                      Allocated to registers r7 
;time                      Allocated with name '_main_time_1_19'
;str                       Allocated with name '_main_str_1_19'
;------------------------------------------------------------
;	main.c:12: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:14: unsigned char psec=0xAA; //秒备份,初值 AA 确保首次读取时间后会刷新显示
	mov	r7,#0xAA
;	main.c:17: initDS1302(); //初始化实时时钟
	push	ar7
	lcall	_initDS1302
;	main.c:21: initLcd(); //初始化液晶
	lcall	_initLcd
;	main.c:22: addTIMER0Task(200,fun,1);
	mov	_addTIMER0Task_PARM_2,#_fun
	mov	(_addTIMER0Task_PARM_2 + 1),#(_fun >> 8)
	mov	(_addTIMER0Task_PARM_2 + 2),#0x80
	mov	_addTIMER0Task_PARM_3,#0x01
	mov	(_addTIMER0Task_PARM_3 + 1),#0x00
	mov	dptr,#0x00C8
	lcall	_addTIMER0Task
	pop	ar7
;	main.c:23: while (1)
00106$:
;	main.c:25: updateTIMER0();
	push	ar7
	lcall	_updateTIMER0
	pop	ar7
;	main.c:26: if( timeStatua != 0)
	mov	a,_timeStatua
	jz	00106$
;	main.c:29: ds1302BurstRead(time); //读取 DS1302 当前时间
	mov	dptr,#_main_time_1_19
	mov	b,#0x40
	push	ar7
	lcall	_ds1302BurstRead
	pop	ar7
;	main.c:30: if (psec != time[0])			//检测到时间有变化时刷新显示
	mov	a,r7
	cjne	a,_main_time_1_19,00120$
	sjmp	00106$
00120$:
;	main.c:32: str[0] = '2'; //添加年份的高 2 位:20
	mov	_main_str_1_19,#0x32
;	main.c:33: str[1] = '0';
	mov	(_main_str_1_19 + 0x0001),#0x30
;	main.c:34: str[2] = (time[6] >> 4) + '0'; //“年”高位数字转换为 ASCII 码
	mov	a,(_main_time_1_19 + 0x0006)
	swap	a
	anl	a,#0x0F
	add	a,#0x30
	mov	(_main_str_1_19 + 0x0002),a
;	main.c:35: str[3] = (time[6]&0x0F) + '0'; //“年”低位数字转换为 ASCII 码
	mov	a,#0x0F
	anl	a,(_main_time_1_19 + 0x0006)
	add	a,#0x30
	mov	(_main_str_1_19 + 0x0003),a
;	main.c:36: str[4] = '-'; //添加日期分隔符
	mov	(_main_str_1_19 + 0x0004),#0x2D
;	main.c:37: str[5] = (time[4] >> 4) + '0'; //“月”
	mov	a,(_main_time_1_19 + 0x0004)
	swap	a
	anl	a,#0x0F
	add	a,#0x30
	mov	(_main_str_1_19 + 0x0005),a
;	main.c:38: str[6] = (time[4]&0x0F) + '0';
	mov	a,#0x0F
	anl	a,(_main_time_1_19 + 0x0004)
	add	a,#0x30
	mov	(_main_str_1_19 + 0x0006),a
;	main.c:39: str[7] = '-';
	mov	(_main_str_1_19 + 0x0007),#0x2D
;	main.c:40: str[8] = (time[3] >> 4) + '0'; //“日”
	mov	a,(_main_time_1_19 + 0x0003)
	swap	a
	anl	a,#0x0F
	add	a,#0x30
	mov	(_main_str_1_19 + 0x0008),a
;	main.c:41: str[9] = (time[3]&0x0F) + '0';
	mov	a,#0x0F
	anl	a,(_main_time_1_19 + 0x0003)
	add	a,#0x30
	mov	(_main_str_1_19 + 0x0009),a
;	main.c:42: str[10] = '\0';
	mov	(_main_str_1_19 + 0x000a),#0x00
;	main.c:43: LcdShowString(0, 0, str); //显示到液晶的第一行
	mov	_LcdShowString_PARM_3,#_main_str_1_19
	mov	(_LcdShowString_PARM_3 + 1),#0x00
	mov	(_LcdShowString_PARM_3 + 2),#0x40
	mov	_LcdShowString_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_LcdShowString
;	main.c:44: str[0] = (time[5]&0x0F) + '0'; //“星期”
	mov	a,#0x0F
	anl	a,(_main_time_1_19 + 0x0005)
	add	a,#0x30
	mov	_main_str_1_19,a
;	main.c:45: str[1] = '\0';
	mov	(_main_str_1_19 + 0x0001),#0x00
;	main.c:46: LcdShowString(11, 0, "week");
	mov	_LcdShowString_PARM_3,#___str_0
	mov	(_LcdShowString_PARM_3 + 1),#(___str_0 >> 8)
	mov	(_LcdShowString_PARM_3 + 2),#0x80
	mov	_LcdShowString_PARM_2,#0x00
	mov	dpl,#0x0B
	lcall	_LcdShowString
;	main.c:47: LcdShowString(15, 0, str); //显示到液晶的第一行
	mov	_LcdShowString_PARM_3,#_main_str_1_19
	mov	(_LcdShowString_PARM_3 + 1),#0x00
	mov	(_LcdShowString_PARM_3 + 2),#0x40
	mov	_LcdShowString_PARM_2,#0x00
	mov	dpl,#0x0F
	lcall	_LcdShowString
;	main.c:48: str[0] = (time[2] >> 4) + '0'; //“时”
	mov	a,(_main_time_1_19 + 0x0002)
	swap	a
	anl	a,#0x0F
	add	a,#0x30
	mov	_main_str_1_19,a
;	main.c:49: str[1] = (time[2]&0x0F) + '0';
	mov	a,#0x0F
	anl	a,(_main_time_1_19 + 0x0002)
	add	a,#0x30
	mov	(_main_str_1_19 + 0x0001),a
;	main.c:50: str[2] = ':'; //添加时间分隔符
	mov	(_main_str_1_19 + 0x0002),#0x3A
;	main.c:51: str[3] = (time[1] >> 4) + '0'; //“分”
	mov	a,(_main_time_1_19 + 0x0001)
	swap	a
	anl	a,#0x0F
	add	a,#0x30
	mov	(_main_str_1_19 + 0x0003),a
;	main.c:52: str[4] = (time[1]&0x0F) + '0';
	mov	a,#0x0F
	anl	a,(_main_time_1_19 + 0x0001)
	add	a,#0x30
	mov	(_main_str_1_19 + 0x0004),a
;	main.c:53: str[5] = ':';
	mov	(_main_str_1_19 + 0x0005),#0x3A
;	main.c:54: str[6] = (time[0] >> 4) + '0'; //“秒”
	mov	a,_main_time_1_19
	swap	a
	anl	a,#0x0F
	add	a,#0x30
	mov	(_main_str_1_19 + 0x0006),a
;	main.c:55: str[7] = (time[0]&0x0F) + '0';
	mov	a,#0x0F
	anl	a,_main_time_1_19
	add	a,#0x30
	mov	(_main_str_1_19 + 0x0007),a
;	main.c:56: str[8] = '\0';
	mov	(_main_str_1_19 + 0x0008),#0x00
;	main.c:57: LcdShowString(4, 1, str); //显示到液晶的第二行
	mov	_LcdShowString_PARM_3,#_main_str_1_19
	mov	(_LcdShowString_PARM_3 + 1),#0x00
	mov	(_LcdShowString_PARM_3 + 2),#0x40
	mov	_LcdShowString_PARM_2,#0x01
	mov	dpl,#0x04
	lcall	_LcdShowString
;	main.c:58: psec = time[0]; //用当前值更新上次秒数
	mov	r7,_main_time_1_19
	ljmp	00106$
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "week"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
