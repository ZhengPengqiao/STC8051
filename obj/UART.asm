;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Thu Sep 29 13:34:06 2016
;--------------------------------------------------------
	.module UART
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
	.globl _UART0_CHAR
	.globl _readStringWait_PARM_2
	.globl _readString_PARM_2
	.globl _sendString_PARM_2
	.globl _UART0_TXISR_function
	.globl _UART0_RXISR_function
	.globl _sendstatus
	.globl _start
	.globl _end
	.globl _InterruptUART
	.globl _sendNewLine
	.globl _initUart
	.globl _sendChar
	.globl _sendString
	.globl _readChar
	.globl _readString
	.globl _readStringWait
	.globl _setUartRXFun
	.globl _setUartTXFun
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_end::
	.ds 2
_start::
	.ds 2
_sendstatus::
	.ds 2
_UART0_RXISR_function::
	.ds 2
_UART0_TXISR_function::
	.ds 2
_sendString_PARM_2:
	.ds 2
_readString_PARM_2:
	.ds 2
_readString_str_1_28:
	.ds 3
_readStringWait_PARM_2:
	.ds 2
_readStringWait_str_1_34:
	.ds 3
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
_UART0_CHAR::
	.ds 50
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
;	UART/UART.c:5: int sendstatus = 0;                //发送状态
	clr	a
	mov	_sendstatus,a
	mov	(_sendstatus + 1),a
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
;Allocation info for local variables in function 'InterruptUART'
;------------------------------------------------------------
;	UART/UART.c:15: void InterruptUART() __interrupt 4
;	-----------------------------------------
;	 function InterruptUART
;	-----------------------------------------
_InterruptUART:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	UART/UART.c:17: if(RI)  //接收到新字符
;	UART/UART.c:19: RI = 0;
	jbc	_RI,00128$
	sjmp	00106$
00128$:
;	UART/UART.c:20: if(end >= RX_BUFFER_SIZE )
	clr	c
	mov	a,_end
	subb	a,#0x32
	mov	a,(_end + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	UART/UART.c:21: end = 0;
	clr	a
	mov	_end,a
	mov	(_end + 1),a
00102$:
;	UART/UART.c:22: UART0_CHAR[end++] = SBUF;
	mov	r6,_end
	mov	r7,(_end + 1)
	inc	_end
	clr	a
	cjne	a,_end,00130$
	inc	(_end + 1)
00130$:
	mov	a,r6
	add	a,#_UART0_CHAR
	mov	dpl,a
	mov	a,r7
	addc	a,#(_UART0_CHAR >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
;	UART/UART.c:23: if( UART0_RXISR_function != 0)
	mov	a,_UART0_RXISR_function
	orl	a,(_UART0_RXISR_function + 1)
	jz	00106$
;	UART/UART.c:25: UART0_RXISR_function();
	mov	dpl,_UART0_RXISR_function
	mov	dph,(_UART0_RXISR_function + 1)
	lcall	__sdcc_call_dptr
00106$:
;	UART/UART.c:29: if(TI)  //字节发送完毕
;	UART/UART.c:31: TI = 0;
	jbc	_TI,00132$
	sjmp	00111$
00132$:
;	UART/UART.c:32: sendstatus = 1;
	mov	_sendstatus,#0x01
	mov	(_sendstatus + 1),#0x00
;	UART/UART.c:33: if(UART0_TXISR_function != 0 )
	mov	a,_UART0_TXISR_function
	orl	a,(_UART0_TXISR_function + 1)
	jz	00111$
;	UART/UART.c:35: UART0_TXISR_function();
	mov	dpl,_UART0_TXISR_function
	mov	dph,(_UART0_TXISR_function + 1)
	lcall	__sdcc_call_dptr
00111$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'sendNewLine'
;------------------------------------------------------------
;	UART/UART.c:47: void sendNewLine()
;	-----------------------------------------
;	 function sendNewLine
;	-----------------------------------------
_sendNewLine:
;	UART/UART.c:49: sendString("\r\n",2);
	mov	_sendString_PARM_2,#0x02
	mov	(_sendString_PARM_2 + 1),#0x00
	mov	dptr,#___str_0
	mov	b,#0x80
	ljmp	_sendString
;------------------------------------------------------------
;Allocation info for local variables in function 'initUart'
;------------------------------------------------------------
;baud                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	UART/UART.c:58: void initUart(unsigned int baud)
;	-----------------------------------------
;	 function initUart
;	-----------------------------------------
_initUart:
	mov	r6,dpl
	mov	r7,dph
;	UART/UART.c:60: EA = 1;
	setb	_EA
;	UART/UART.c:61: SCON = 0x50;
	mov	_SCON,#0x50
;	UART/UART.c:62: TMOD &= 0x0F;
	anl	_TMOD,#0x0F
;	UART/UART.c:63: TMOD |= 0x20; //配置T1为模式2
	orl	_TMOD,#0x20
;	UART/UART.c:64: TH1 = 256-(11059200/12/32)/baud;
	mov	__divslong_PARM_2,r6
	mov	(__divslong_PARM_2 + 1),r7
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	mov	dptr,#0x7080
	clr	a
	mov	b,a
	lcall	__divslong
	mov	r4,dpl
	clr	c
	clr	a
	subb	a,r4
	mov	_TH1,a
;	UART/UART.c:65: TL1 = TH1; //初始值等于重载值
	mov	_TL1,_TH1
;	UART/UART.c:66: ET1 = 0;   //禁止T1的中断
	clr	_ET1
;	UART/UART.c:67: ES = 1;    //使能串口中断
	setb	_ES
;	UART/UART.c:68: TR1 = 1;   //启动T1
	setb	_TR1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendChar'
;------------------------------------------------------------
;ch                        Allocated to registers 
;------------------------------------------------------------
;	UART/UART.c:77: void sendChar(char ch)
;	-----------------------------------------
;	 function sendChar
;	-----------------------------------------
_sendChar:
	mov	_SBUF,dpl
;	UART/UART.c:80: while( sendstatus == 0 ); //在发送成功时,中断会将sendstatus置0,
00101$:
	mov	a,_sendstatus
	orl	a,(_sendstatus + 1)
	jz	00101$
;	UART/UART.c:81: sendstatus = 0;
	clr	a
	mov	_sendstatus,a
	mov	(_sendstatus + 1),a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendString'
;------------------------------------------------------------
;len                       Allocated with name '_sendString_PARM_2'
;str                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	UART/UART.c:91: void sendString(char * str, int len)
;	-----------------------------------------
;	 function sendString
;	-----------------------------------------
_sendString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	UART/UART.c:94: for(i = 0; i < len; i++)
	mov	r3,#0x00
	mov	r4,#0x00
00103$:
	clr	c
	mov	a,r3
	subb	a,_sendString_PARM_2
	mov	a,r4
	xrl	a,#0x80
	mov	b,(_sendString_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	UART/UART.c:96: sendChar( str[i] );
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_sendChar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	UART/UART.c:94: for(i = 0; i < len; i++)
	inc	r3
	cjne	r3,#0x00,00103$
	inc	r4
	sjmp	00103$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readChar'
;------------------------------------------------------------
;ch                        Allocated to registers r5 
;------------------------------------------------------------
;	UART/UART.c:106: char readChar()
;	-----------------------------------------
;	 function readChar
;	-----------------------------------------
_readChar:
;	UART/UART.c:108: if(start != end)
	mov	a,_end
	cjne	a,_start,00114$
	mov	a,(_end + 1)
	cjne	a,(_start + 1),00114$
	sjmp	00104$
00114$:
;	UART/UART.c:110: char ch = UART0_CHAR[start];
	mov	a,_start
	add	a,#_UART0_CHAR
	mov	r6,a
	mov	a,(_start + 1)
	addc	a,#(_UART0_CHAR >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
;	UART/UART.c:111: UART0_CHAR[start] = 0;
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
;	UART/UART.c:112: start++;
	inc	_start
;	genFromRTrack removed	clr	a
	cjne	a,_start,00115$
	inc	(_start + 1)
00115$:
;	UART/UART.c:113: if(start >= RX_BUFFER_SIZE)
	clr	c
	mov	a,_start
	subb	a,#0x32
	mov	a,(_start + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	UART/UART.c:115: start = 0;
	clr	a
	mov	_start,a
	mov	(_start + 1),a
00102$:
;	UART/UART.c:118: return ch;
	mov	dpl,r5
	ret
00104$:
;	UART/UART.c:122: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readString'
;------------------------------------------------------------
;len                       Allocated with name '_readString_PARM_2'
;str                       Allocated with name '_readString_str_1_28'
;ch                        Allocated to registers r4 
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	UART/UART.c:133: int readString(char * str, int len)
;	-----------------------------------------
;	 function readString
;	-----------------------------------------
_readString:
	mov	_readString_str_1_28,dpl
	mov	(_readString_str_1_28 + 1),dph
	mov	(_readString_str_1_28 + 2),b
;	UART/UART.c:137: if(len <= 0)
	clr	c
	clr	a
	subb	a,_readString_PARM_2
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_readString_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00102$
;	UART/UART.c:139: return -1;
	mov	dptr,#0xFFFF
	ret
00102$:
;	UART/UART.c:141: ch = readChar();
	lcall	_readChar
	mov	r4,dpl
;	UART/UART.c:142: while( ch != 0 )
	mov	r2,#0x00
	mov	r3,#0x00
00106$:
	mov	a,r4
	jz	00108$
;	UART/UART.c:144: *(str+i) = ch;
	mov	a,r2
	add	a,_readString_str_1_28
	mov	r0,a
	mov	a,r3
	addc	a,(_readString_str_1_28 + 1)
	mov	r1,a
	mov	r7,(_readString_str_1_28 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	UART/UART.c:145: i++;
	inc	r2
	cjne	r2,#0x00,00126$
	inc	r3
00126$:
;	UART/UART.c:146: if( i < len )
	clr	c
	mov	a,r2
	subb	a,_readString_PARM_2
	mov	a,r3
	xrl	a,#0x80
	mov	b,(_readString_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
;	UART/UART.c:148: ch = readChar();
	push	ar3
	push	ar2
	lcall	_readChar
	mov	r4,dpl
	pop	ar2
	pop	ar3
;	UART/UART.c:152: break;
	sjmp	00106$
00108$:
;	UART/UART.c:155: return i;
	mov	dpl,r2
	mov	dph,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readStringWait'
;------------------------------------------------------------
;len                       Allocated with name '_readStringWait_PARM_2'
;str                       Allocated with name '_readStringWait_str_1_34'
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	UART/UART.c:166: void readStringWait(char * str, int len)
;	-----------------------------------------
;	 function readStringWait
;	-----------------------------------------
_readStringWait:
	mov	_readStringWait_str_1_34,dpl
	mov	(_readStringWait_str_1_34 + 1),dph
	mov	(_readStringWait_str_1_34 + 2),b
;	UART/UART.c:168: unsigned int i = 0;
	mov	r3,#0x00
	mov	r4,#0x00
;	UART/UART.c:169: while(i < len)
00101$:
	mov	r1,_readStringWait_PARM_2
	mov	r2,(_readStringWait_PARM_2 + 1)
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	subb	a,r2
	jnc	00104$
;	UART/UART.c:171: i += readString(str+i,len-i);
	mov	a,r3
	add	a,_readStringWait_str_1_34
	mov	r0,a
	mov	a,r4
	addc	a,(_readStringWait_str_1_34 + 1)
	mov	r6,a
	mov	r7,(_readStringWait_str_1_34 + 2)
	mov	a,r1
	clr	c
	subb	a,r3
	mov	_readString_PARM_2,a
	mov	a,r2
	subb	a,r4
	mov	(_readString_PARM_2 + 1),a
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	lcall	_readString
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	mov	a,r6
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setUartRXFun'
;------------------------------------------------------------
;inUART0_RXISR_function    Allocated to registers 
;------------------------------------------------------------
;	UART/UART.c:181: void setUartRXFun( void (*inUART0_RXISR_function)())
;	-----------------------------------------
;	 function setUartRXFun
;	-----------------------------------------
_setUartRXFun:
	mov	_UART0_RXISR_function,dpl
	mov	(_UART0_RXISR_function + 1),dph
;	UART/UART.c:183: UART0_RXISR_function = inUART0_RXISR_function;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setUartTXFun'
;------------------------------------------------------------
;inUART0_TXISR_function    Allocated to registers 
;------------------------------------------------------------
;	UART/UART.c:193: void setUartTXFun( void (*inUART0_TXISR_function)())
;	-----------------------------------------
;	 function setUartTXFun
;	-----------------------------------------
_setUartTXFun:
	mov	_UART0_TXISR_function,dpl
	mov	(_UART0_TXISR_function + 1),dph
;	UART/UART.c:195: UART0_TXISR_function = inUART0_TXISR_function;
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0D
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
