;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Thu Sep 29 13:34:06 2016
;--------------------------------------------------------
	.module KEY
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
	.globl _ledStatus
	.globl _ledBuf
	.globl _keyScan
	.globl _getKeyStatus
	.globl _clearKeyStatus
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
_ledBuf::
	.ds 16
_ledStatus::
	.ds 2
_keyScan_raw_1_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;------------------------------------------------------------
;Allocation info for local variables in function 'keyScan'
;------------------------------------------------------------
;raw                       Allocated with name '_keyScan_raw_1_2'
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	KEY/KEY.c:20: static unsigned char raw = 0;
	mov	_keyScan_raw_1_2,#0x00
;	KEY/KEY.c:3: unsigned char ledBuf[4][4] = {
	mov	_ledBuf,#0xFF
	mov	(_ledBuf + 0x0001),#0xFF
	mov	(_ledBuf + 0x0002),#0xFF
	mov	(_ledBuf + 0x0003),#0xFF
	mov	(_ledBuf + 0x0004),#0xFF
	mov	(_ledBuf + 0x0005),#0xFF
	mov	(_ledBuf + 0x0006),#0xFF
	mov	(_ledBuf + 0x0007),#0xFF
	mov	(_ledBuf + 0x0008),#0xFF
	mov	(_ledBuf + 0x0009),#0xFF
	mov	(_ledBuf + 0x000a),#0xFF
	mov	(_ledBuf + 0x000b),#0xFF
	mov	(_ledBuf + 0x000c),#0xFF
	mov	(_ledBuf + 0x000d),#0xFF
	mov	(_ledBuf + 0x000e),#0xFF
	mov	(_ledBuf + 0x000f),#0xFF
;	KEY/KEY.c:9: unsigned int ledStatus = 0;
	clr	a
	mov	_ledStatus,a
	mov	(_ledStatus + 1),a
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
;Allocation info for local variables in function 'keyScan'
;------------------------------------------------------------
;raw                       Allocated with name '_keyScan_raw_1_2'
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	KEY/KEY.c:17: void keyScan()
;	-----------------------------------------
;	 function keyScan
;	-----------------------------------------
_keyScan:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	KEY/KEY.c:22: ledBuf[raw][0] = (ledBuf[raw][0]<<1) | KEYIN1;
	mov	a,_keyScan_raw_1_2
	add	a,_keyScan_raw_1_2
	add	a,acc
	add	a,#_ledBuf
	mov	r1,a
	mov	a,@r1
	add	a,@r1
	mov	r7,a
	mov	c,_P2_4
	clr	a
	rlc	a
	orl	a,r7
	mov	@r1,a
;	KEY/KEY.c:23: ledBuf[raw][1] = (ledBuf[raw][1]<<1) | KEYIN2;
	mov	a,_keyScan_raw_1_2
	add	a,_keyScan_raw_1_2
	add	a,acc
	add	a,#_ledBuf
	inc	a
	mov	r1,a
	mov	a,@r1
	add	a,@r1
	mov	r7,a
	mov	c,_P2_5
	clr	a
	rlc	a
	orl	a,r7
	mov	@r1,a
;	KEY/KEY.c:24: ledBuf[raw][2] = (ledBuf[raw][2]<<1) | KEYIN3;
	mov	a,_keyScan_raw_1_2
	add	a,_keyScan_raw_1_2
	add	a,acc
	add	a,#_ledBuf
	add	a,#0x02
	mov	r1,a
	mov	a,@r1
	add	a,@r1
	mov	r7,a
	mov	c,_P2_6
	clr	a
	rlc	a
	orl	a,r7
	mov	@r1,a
;	KEY/KEY.c:25: ledBuf[raw][3] = (ledBuf[raw][3]<<1) | KEYIN4;
	mov	a,_keyScan_raw_1_2
	add	a,_keyScan_raw_1_2
	add	a,acc
	add	a,#_ledBuf
	add	a,#0x03
	mov	r1,a
	mov	a,@r1
	add	a,@r1
	mov	r7,a
	mov	c,_P2_7
	clr	a
	rlc	a
	mov	r6,a
	orl	a,r7
	mov	@r1,a
;	KEY/KEY.c:27: for(i = 0; i < 4; i++)
	mov	r7,#0x00
00109$:
;	KEY/KEY.c:29: if(ledBuf[raw][i] == 0x00)
	mov	a,_keyScan_raw_1_2
	add	a,_keyScan_raw_1_2
	add	a,acc
	mov	r6,a
	add	a,#_ledBuf
	mov	r5,a
	add	a,r7
	mov	r1,a
	mov	a,@r1
	jnz	00110$
;	KEY/KEY.c:31: ledStatus |= (1 << (raw*4+i) );
	mov	a,_keyScan_raw_1_2
	mov	b,#0x04
	mul	ab
	mov	r4,a
	mov	r5,b
	mov	a,r7
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r2
	add	a,r4
	mov	r4,a
	mov	a,r3
	addc	a,r5
	mov	b,r4
	inc	b
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	00128$
00127$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00128$:
	djnz	b,00127$
	mov	a,r4
	orl	_ledStatus,a
	mov	a,r5
	orl	(_ledStatus + 1),a
;	KEY/KEY.c:32: ledBuf[raw][i] = 0xFF;
	mov	a,r6
	add	a,#_ledBuf
	mov	r6,a
	add	a,r7
	mov	r0,a
	mov	@r0,#0xFF
00110$:
;	KEY/KEY.c:27: for(i = 0; i < 4; i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x84
	jc	00109$
;	KEY/KEY.c:36: switch(raw)
	mov	a,_keyScan_raw_1_2
	add	a,#0xff - 0x03
	jc	00111$
	mov	a,_keyScan_raw_1_2
	mov	b,#0x03
	mul	ab
	mov	dptr,#00131$
	jmp	@a+dptr
00131$:
	ljmp	00104$
	ljmp	00105$
	ljmp	00106$
	ljmp	00107$
;	KEY/KEY.c:38: case 0: KEYOUT1 = 1; KEYOUT2 = 0; raw = 1;break;  //下一行是第2行
00104$:
	setb	_P2_3
	clr	_P2_2
	mov	_keyScan_raw_1_2,#0x01
;	KEY/KEY.c:39: case 1: KEYOUT2 = 1; KEYOUT3 = 0; raw = 2;break;  //下一行是第3行
	ret
00105$:
	setb	_P2_2
	clr	_P2_1
	mov	_keyScan_raw_1_2,#0x02
;	KEY/KEY.c:40: case 2: KEYOUT3 = 1; KEYOUT4 = 0; raw = 3;break;  //下一行是第4行
	ret
00106$:
	setb	_P2_1
	clr	_P2_0
	mov	_keyScan_raw_1_2,#0x03
;	KEY/KEY.c:41: case 3: KEYOUT4 = 1; KEYOUT1 = 0; raw = 0;break;  //下一行是第1行
	ret
00107$:
	setb	_P2_0
	clr	_P2_3
	mov	_keyScan_raw_1_2,#0x00
;	KEY/KEY.c:42: }
00111$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getKeyStatus'
;------------------------------------------------------------
;	KEY/KEY.c:51: unsigned int getKeyStatus()
;	-----------------------------------------
;	 function getKeyStatus
;	-----------------------------------------
_getKeyStatus:
;	KEY/KEY.c:53: return ledStatus;
	mov	dpl,_ledStatus
	mov	dph,(_ledStatus + 1)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clearKeyStatus'
;------------------------------------------------------------
;which                     Allocated to registers r7 
;------------------------------------------------------------
;	KEY/KEY.c:63: void clearKeyStatus(unsigned char which)
;	-----------------------------------------
;	 function clearKeyStatus
;	-----------------------------------------
_clearKeyStatus:
	mov	r7,dpl
;	KEY/KEY.c:65: ledStatus &= ~(1 << which);
	mov	b,r7
	inc	b
	mov	r7,#0x01
	mov	r6,#0x00
	sjmp	00104$
00103$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
00104$:
	djnz	b,00103$
	mov	a,r7
	cpl	a
	mov	r7,a
	mov	a,r6
	cpl	a
	mov	r6,a
	mov	a,r7
	anl	_ledStatus,a
	mov	a,r6
	anl	(_ledStatus + 1),a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
