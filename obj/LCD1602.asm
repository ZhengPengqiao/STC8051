;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Thu Sep 29 13:34:06 2016
;--------------------------------------------------------
	.module LCD1602
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _LcdShowString_PARM_3
	.globl _LcdShowString_PARM_2
	.globl _LcdAreaClear_PARM_3
	.globl _LcdAreaClear_PARM_2
	.globl _LcdSetCursor_PARM_2
	.globl _LcdWaitReady
	.globl _LcdWriteCmd
	.globl _LcdWriteData
	.globl _LcdSetCursor
	.globl _initLcd
	.globl _LcdFullClear
	.globl _LcdAreaClear
	.globl _LcdShowString
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
_LcdSetCursor_PARM_2:
	.ds 1
_LcdAreaClear_PARM_2:
	.ds 1
_LcdAreaClear_PARM_3:
	.ds 1
_LcdShowString_PARM_2:
	.ds 1
_LcdShowString_PARM_3:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'LcdWaitReady'
;------------------------------------------------------------
;status                    Allocated to registers r7 
;------------------------------------------------------------
;	LCD1602/LCD1602.c:9: void LcdWaitReady()
;	-----------------------------------------
;	 function LcdWaitReady
;	-----------------------------------------
_LcdWaitReady:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	LCD1602/LCD1602.c:12: LCD1602_DB = 0xFF;
	mov	_P0,#0xFF
;	LCD1602/LCD1602.c:13: LCD1602_RS = 0;   //状态
	clr	_P1_0
;	LCD1602/LCD1602.c:14: LCD1602_RW = 1;   //读
	setb	_P1_1
;	LCD1602/LCD1602.c:16: do{
00101$:
;	LCD1602/LCD1602.c:17: LCD1602_E = 1;
	setb	_P1_5
;	LCD1602/LCD1602.c:18: status = LCD1602_DB;  //读取状态位
	mov	r7,_P0
;	LCD1602/LCD1602.c:19: LCD1602_E = 0;
	clr	_P1_5
;	LCD1602/LCD1602.c:20: }while(status & 0x80);
	mov	a,r7
	jb	acc.7,00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LcdWriteCmd'
;------------------------------------------------------------
;cmd                       Allocated to registers r7 
;------------------------------------------------------------
;	LCD1602/LCD1602.c:29: void LcdWriteCmd(unsigned char cmd)
;	-----------------------------------------
;	 function LcdWriteCmd
;	-----------------------------------------
_LcdWriteCmd:
	mov	r7,dpl
;	LCD1602/LCD1602.c:31: LcdWaitReady();
	push	ar7
	lcall	_LcdWaitReady
	pop	ar7
;	LCD1602/LCD1602.c:32: LCD1602_RS = 0;   //命令
	clr	_P1_0
;	LCD1602/LCD1602.c:33: LCD1602_RW = 0;   //写
	clr	_P1_1
;	LCD1602/LCD1602.c:34: LCD1602_DB = cmd;
	mov	_P0,r7
;	LCD1602/LCD1602.c:35: LCD1602_E = 1;    //脉冲
	setb	_P1_5
;	LCD1602/LCD1602.c:36: LCD1602_E = 0;
	clr	_P1_5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LcdWriteData'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	LCD1602/LCD1602.c:45: void LcdWriteData(unsigned char data)
;	-----------------------------------------
;	 function LcdWriteData
;	-----------------------------------------
_LcdWriteData:
	mov	r7,dpl
;	LCD1602/LCD1602.c:47: LcdWaitReady();
	push	ar7
	lcall	_LcdWaitReady
	pop	ar7
;	LCD1602/LCD1602.c:48: LCD1602_RS = 1;   //数据
	setb	_P1_0
;	LCD1602/LCD1602.c:49: LCD1602_RW = 0;   //写
	clr	_P1_1
;	LCD1602/LCD1602.c:50: LCD1602_DB = data;
	mov	_P0,r7
;	LCD1602/LCD1602.c:51: LCD1602_E = 1;    //脉冲
	setb	_P1_5
;	LCD1602/LCD1602.c:52: LCD1602_E = 0;
	clr	_P1_5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LcdSetCursor'
;------------------------------------------------------------
;y                         Allocated with name '_LcdSetCursor_PARM_2'
;x                         Allocated to registers r7 
;addr                      Allocated to registers r6 
;------------------------------------------------------------
;	LCD1602/LCD1602.c:62: void LcdSetCursor(unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function LcdSetCursor
;	-----------------------------------------
_LcdSetCursor:
	mov	r7,dpl
;	LCD1602/LCD1602.c:65: if( y == 0)  //根据输入计算地址
	mov	a,_LcdSetCursor_PARM_2
	jnz	00102$
;	LCD1602/LCD1602.c:67: addr = 0+x; //第一行地址从0x00开始
	mov	ar6,r7
	sjmp	00103$
00102$:
;	LCD1602/LCD1602.c:71: addr = 0x40 + x;  //第二行地址从0x40开始
	mov	a,#0x40
	add	a,r7
	mov	r6,a
00103$:
;	LCD1602/LCD1602.c:73: LcdWriteCmd(addr | 0x80); //设置RAM地址
	mov	a,#0x80
	orl	a,r6
	mov	dpl,a
	ljmp	_LcdWriteCmd
;------------------------------------------------------------
;Allocation info for local variables in function 'initLcd'
;------------------------------------------------------------
;	LCD1602/LCD1602.c:82: void initLcd()
;	-----------------------------------------
;	 function initLcd
;	-----------------------------------------
_initLcd:
;	LCD1602/LCD1602.c:84: LcdWriteCmd(0x38);  //16*2显示,5*7点阵,8数据接口
	mov	dpl,#0x38
	lcall	_LcdWriteCmd
;	LCD1602/LCD1602.c:85: LcdWriteCmd(0x0C);  //显示器开,光标关闭
	mov	dpl,#0x0C
	lcall	_LcdWriteCmd
;	LCD1602/LCD1602.c:86: LcdWriteCmd(0x06);  //文字不动,地址自动加一
	mov	dpl,#0x06
	lcall	_LcdWriteCmd
;	LCD1602/LCD1602.c:87: LcdWriteCmd(0x01);  //清屏
	mov	dpl,#0x01
	ljmp	_LcdWriteCmd
;------------------------------------------------------------
;Allocation info for local variables in function 'LcdFullClear'
;------------------------------------------------------------
;	LCD1602/LCD1602.c:96: void LcdFullClear()
;	-----------------------------------------
;	 function LcdFullClear
;	-----------------------------------------
_LcdFullClear:
;	LCD1602/LCD1602.c:98: LcdWriteCmd(0x01);
	mov	dpl,#0x01
	ljmp	_LcdWriteCmd
;------------------------------------------------------------
;Allocation info for local variables in function 'LcdAreaClear'
;------------------------------------------------------------
;y                         Allocated with name '_LcdAreaClear_PARM_2'
;len                       Allocated with name '_LcdAreaClear_PARM_3'
;x                         Allocated to registers 
;------------------------------------------------------------
;	LCD1602/LCD1602.c:107: void LcdAreaClear(unsigned char x, unsigned char y, unsigned char len)
;	-----------------------------------------
;	 function LcdAreaClear
;	-----------------------------------------
_LcdAreaClear:
;	LCD1602/LCD1602.c:109: LcdSetCursor(x,y); //将光标移动到制定位置
	mov	_LcdSetCursor_PARM_2,_LcdAreaClear_PARM_2
	lcall	_LcdSetCursor
;	LCD1602/LCD1602.c:110: while(len--)
	mov	r7,_LcdAreaClear_PARM_3
00101$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00104$
;	LCD1602/LCD1602.c:112: LcdWriteData(' ');
	mov	dpl,#0x20
	push	ar7
	lcall	_LcdWriteData
	pop	ar7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LcdShowString'
;------------------------------------------------------------
;y                         Allocated with name '_LcdShowString_PARM_2'
;str                       Allocated with name '_LcdShowString_PARM_3'
;x                         Allocated to registers 
;------------------------------------------------------------
;	LCD1602/LCD1602.c:123: void LcdShowString(unsigned char x, unsigned char y,unsigned char *str)
;	-----------------------------------------
;	 function LcdShowString
;	-----------------------------------------
_LcdShowString:
;	LCD1602/LCD1602.c:125: LcdSetCursor(x,y); //设置起始地址
	mov	_LcdSetCursor_PARM_2,_LcdShowString_PARM_2
	lcall	_LcdSetCursor
;	LCD1602/LCD1602.c:126: while(*str != '\0')  //连续写入数据,直到检测到结束符
	mov	r5,_LcdShowString_PARM_3
	mov	r6,(_LcdShowString_PARM_3 + 1)
	mov	r7,(_LcdShowString_PARM_3 + 2)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	LCD1602/LCD1602.c:128: LcdWriteData(*str++);  //先发送数据,然后str+1
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00114$
	inc	r6
00114$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_LcdWriteData
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
