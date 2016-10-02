;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Sun Oct  2 10:13:52 2016
;--------------------------------------------------------
	.module DS1302
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
	.globl _ds1302SingleWrite_PARM_2
	.globl _initDS1302
	.globl _ds1302ByteWrite
	.globl _ds1302ByteRead
	.globl _ds1302SingleRead
	.globl _ds1302SingleWrite
	.globl _ds1302BurstRead
	.globl _ds1302BurstWrite
	.globl _setDs1302Time
	.globl _getDs1302Time
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
_initDS1302_InitTime_1_8:
	.ds 7
_ds1302SingleWrite_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'initDS1302'
;------------------------------------------------------------
;dat                       Allocated to registers 
;InitTime                  Allocated with name '_initDS1302_InitTime_1_8'
;------------------------------------------------------------
;	DS1302/DS1302.c:9: void initDS1302()
;	-----------------------------------------
;	 function initDS1302
;	-----------------------------------------
_initDS1302:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	DS1302/DS1302.c:13: unsigned char InitTime[] = { 
	mov	_initDS1302_InitTime_1_8,#0x00
	mov	(_initDS1302_InitTime_1_8 + 0x0001),#0x30
	mov	(_initDS1302_InitTime_1_8 + 0x0002),#0x12
	mov	(_initDS1302_InitTime_1_8 + 0x0003),#0x08
	mov	(_initDS1302_InitTime_1_8 + 0x0004),#0x10
	mov	(_initDS1302_InitTime_1_8 + 0x0005),#0x02
	mov	(_initDS1302_InitTime_1_8 + 0x0006),#0x13
;	DS1302/DS1302.c:16: DS1302_CE = 0; //初始化 DS1302 通信引脚
	clr	_P1_7
;	DS1302/DS1302.c:17: DS1302_CK = 0;
	clr	_P3_5
;	DS1302/DS1302.c:18: dat = ds1302SingleRead(0); //读取秒寄存器
	mov	dpl,#0x00
	lcall	_ds1302SingleRead
	mov	a,dpl
;	DS1302/DS1302.c:20: if ((dat & 0x80) != 0)
	jnb	acc.7,00103$
;	DS1302/DS1302.c:22: ds1302SingleWrite(7, 0x00); //撤销写保护以允许写入数据
	mov	_ds1302SingleWrite_PARM_2,#0x00
	mov	dpl,#0x07
	lcall	_ds1302SingleWrite
;	DS1302/DS1302.c:23: ds1302BurstWrite(InitTime); //设置 DS1302 为默认的初始时间
	mov	dptr,#_initDS1302_InitTime_1_8
	mov	b,#0x40
	ljmp	_ds1302BurstWrite
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302ByteWrite'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;mask                      Allocated to registers r6 
;------------------------------------------------------------
;	DS1302/DS1302.c:33: void ds1302ByteWrite(unsigned char data)
;	-----------------------------------------
;	 function ds1302ByteWrite
;	-----------------------------------------
_ds1302ByteWrite:
	mov	r7,dpl
;	DS1302/DS1302.c:36: for(mask = 0x01; mask != 0; mask <<= 1)   //低位在前
	mov	r6,#0x01
00105$:
;	DS1302/DS1302.c:38: if( (mask & data) == 0)
	mov	a,r7
	anl	a,r6
	jnz	00102$
;	DS1302/DS1302.c:40: DS1302_IO = 0;    //发送低电平
	clr	_P3_4
	sjmp	00103$
00102$:
;	DS1302/DS1302.c:44: DS1302_IO = 1;    //发送高电平
	setb	_P3_4
00103$:
;	DS1302/DS1302.c:46: DS1302_CK = 1;   //上升沿
	setb	_P3_5
;	DS1302/DS1302.c:47: DS1302_CK = 0;   //下降沿
	clr	_P3_5
;	DS1302/DS1302.c:36: for(mask = 0x01; mask != 0; mask <<= 1)   //低位在前
	mov	a,r6
	add	a,r6
	mov	r6,a
	jz	00120$
	sjmp	00105$
00120$:
;	DS1302/DS1302.c:50: DS1302_IO = 1; //最后确保释放 IO 引脚
	setb	_P3_4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302ByteRead'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;mask                      Allocated to registers r6 
;------------------------------------------------------------
;	DS1302/DS1302.c:60: unsigned char ds1302ByteRead()
;	-----------------------------------------
;	 function ds1302ByteRead
;	-----------------------------------------
_ds1302ByteRead:
;	DS1302/DS1302.c:62: unsigned char data = 0;
	mov	r7,#0x00
;	DS1302/DS1302.c:64: for(mask = 0x01; mask != 0; mask <<= 1)   //低位在前
	mov	r6,#0x01
00104$:
;	DS1302/DS1302.c:66: if( DS1302_IO != 0)   //先上升沿之前读,这是因为模拟spi的问题
	jnb	_P3_4,00102$
;	DS1302/DS1302.c:68: data |= mask;    //保存高电平
	mov	a,r6
	orl	ar7,a
00102$:
;	DS1302/DS1302.c:70: DS1302_CK = 1;   //上升沿
	setb	_P3_5
;	DS1302/DS1302.c:71: DS1302_CK = 0;   //下降沿
	clr	_P3_5
;	DS1302/DS1302.c:64: for(mask = 0x01; mask != 0; mask <<= 1)   //低位在前
	mov	a,r6
	add	a,r6
	mov	r6,a
	jz	00119$
	sjmp	00104$
00119$:
;	DS1302/DS1302.c:74: return data;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302SingleRead'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;data                      Allocated to registers 
;------------------------------------------------------------
;	DS1302/DS1302.c:83: unsigned char ds1302SingleRead(unsigned char addr)
;	-----------------------------------------
;	 function ds1302SingleRead
;	-----------------------------------------
_ds1302SingleRead:
	mov	r7,dpl
;	DS1302/DS1302.c:86: DS1302_CE = 1;   //使能定ds1302芯片
	setb	_P1_7
;	DS1302/DS1302.c:87: ds1302ByteWrite((addr << 1) | 0x81);
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,#0x81
	orl	a,r7
	mov	dpl,a
	lcall	_ds1302ByteWrite
;	DS1302/DS1302.c:88: data = ds1302ByteRead();
	lcall	_ds1302ByteRead
;	DS1302/DS1302.c:89: DS1302_CE = 0;   //禁止定ds1302芯片
	clr	_P1_7
;	DS1302/DS1302.c:90: return data;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302SingleWrite'
;------------------------------------------------------------
;data                      Allocated with name '_ds1302SingleWrite_PARM_2'
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	DS1302/DS1302.c:100: void ds1302SingleWrite(unsigned char addr, unsigned char data)
;	-----------------------------------------
;	 function ds1302SingleWrite
;	-----------------------------------------
_ds1302SingleWrite:
	mov	r7,dpl
;	DS1302/DS1302.c:102: DS1302_CE = 1;   //使能定ds1302芯片
	setb	_P1_7
;	DS1302/DS1302.c:103: ds1302ByteWrite( (addr << 1) | 0x80);
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,#0x80
	orl	a,r7
	mov	dpl,a
	lcall	_ds1302ByteWrite
;	DS1302/DS1302.c:104: ds1302ByteWrite(data);
	mov	dpl,_ds1302SingleWrite_PARM_2
	lcall	_ds1302ByteWrite
;	DS1302/DS1302.c:105: DS1302_CE = 0;   //禁止定ds1302芯片
	clr	_P1_7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302BurstRead'
;------------------------------------------------------------
;data                      Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	DS1302/DS1302.c:115: void ds1302BurstRead(unsigned char *data)
;	-----------------------------------------
;	 function ds1302BurstRead
;	-----------------------------------------
_ds1302BurstRead:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	DS1302/DS1302.c:118: DS1302_CE = 1;   //使能定ds1302芯片
	setb	_P1_7
;	DS1302/DS1302.c:119: ds1302ByteWrite( 0xBF );
	mov	dpl,#0xBF
	push	ar7
	push	ar6
	push	ar5
	lcall	_ds1302ByteWrite
	pop	ar5
	pop	ar6
	pop	ar7
;	DS1302/DS1302.c:120: for(i = 0; i < 8; i++)
	mov	r4,#0x00
00102$:
;	DS1302/DS1302.c:122: data[i] = ds1302ByteRead();
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_ds1302ByteRead
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r0
	lcall	__gptrput
;	DS1302/DS1302.c:120: for(i = 0; i < 8; i++)
	inc	r4
	cjne	r4,#0x08,00113$
00113$:
	jc	00102$
;	DS1302/DS1302.c:124: DS1302_CE = 0;   //禁止定ds1302芯片
	clr	_P1_7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302BurstWrite'
;------------------------------------------------------------
;data                      Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	DS1302/DS1302.c:133: void ds1302BurstWrite(unsigned char *data)
;	-----------------------------------------
;	 function ds1302BurstWrite
;	-----------------------------------------
_ds1302BurstWrite:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	DS1302/DS1302.c:136: DS1302_CE = 1;   //使能定ds1302芯片
	setb	_P1_7
;	DS1302/DS1302.c:137: ds1302ByteWrite( 0xBE );
	mov	dpl,#0xBE
	push	ar7
	push	ar6
	push	ar5
	lcall	_ds1302ByteWrite
	pop	ar5
	pop	ar6
	pop	ar7
;	DS1302/DS1302.c:138: for(i = 0; i < 8; i++)
	mov	r4,#0x00
00102$:
;	DS1302/DS1302.c:140: ds1302ByteWrite(data[i]);
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_ds1302ByteWrite
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	DS1302/DS1302.c:138: for(i = 0; i < 8; i++)
	inc	r4
	cjne	r4,#0x08,00113$
00113$:
	jc	00102$
;	DS1302/DS1302.c:142: DS1302_CE = 0;   //禁止定ds1302芯片
	clr	_P1_7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setDs1302Time'
;------------------------------------------------------------
;date                      Allocated to registers 
;------------------------------------------------------------
;	DS1302/DS1302.c:152: void setDs1302Time(DataStruct *date)
;	-----------------------------------------
;	 function setDs1302Time
;	-----------------------------------------
_setDs1302Time:
;	DS1302/DS1302.c:155: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getDs1302Time'
;------------------------------------------------------------
;date                      Allocated to registers 
;------------------------------------------------------------
;	DS1302/DS1302.c:163: void getDs1302Time(DataStruct *date)
;	-----------------------------------------
;	 function getDs1302Time
;	-----------------------------------------
_getDs1302Time:
;	DS1302/DS1302.c:166: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
