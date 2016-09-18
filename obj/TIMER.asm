;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Sun Sep 18 21:21:12 2016
;--------------------------------------------------------
	.module TIMER
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _time0Init
	.globl _timer0SetValue
	.globl _Timer0Stop
	.globl _Timer0Start
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
	.globl _timer0TaskStruct
	.globl _addTIMER0Task_PARM_3
	.globl _addTIMER0Task_PARM_2
	.globl _taskCount
	.globl _timerCount
	.globl _timerClock
	.globl _getTaskCount
	.globl _addTIMER0Task
	.globl _delTIMER0Task
	.globl _InterruptTimer0
	.globl _updateTIMER0
	.globl _delay10us
	.globl _delay10usValue
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
_timerClock::
	.ds 4
_timerCount::
	.ds 2
_taskCount::
	.ds 2
_addTIMER0Task_PARM_2:
	.ds 2
_addTIMER0Task_PARM_3:
	.ds 2
_addTIMER0Task_inTimerMs_1_11:
	.ds 2
_addTIMER0Task_sloc0_1_0:
	.ds 2
_addTIMER0Task_sloc1_1_0:
	.ds 2
_addTIMER0Task_sloc2_1_0:
	.ds 4
_delTIMER0Task_intag_1_16:
	.ds 2
_delTIMER0Task_i_1_17:
	.ds 2
_updateTIMER0_i_1_22:
	.ds 2
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
_timer0TaskStruct::
	.ds 120
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
;	TIMER/TIMER.c:13: unsigned long timerClock = 0;
	clr	a
	mov	_timerClock,a
	mov	(_timerClock + 1),a
	mov	(_timerClock + 2),a
	mov	(_timerClock + 3),a
;	TIMER/TIMER.c:15: unsigned int timerCount = 20;  //定义初始定时周期
	mov	_timerCount,#0x14
;	1-genFromRTrack replaced	mov	(_timerCount + 1),#0x00
	mov	(_timerCount + 1),a
;	TIMER/TIMER.c:16: int taskCount = 0;
	mov	_taskCount,a
	mov	(_taskCount + 1),a
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
;Allocation info for local variables in function 'Timer0Start'
;------------------------------------------------------------
;	TIMER/TIMER.c:23: void Timer0Start()
;	-----------------------------------------
;	 function Timer0Start
;	-----------------------------------------
_Timer0Start:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	TIMER/TIMER.c:25: TR0 = 1;      //开启定时器
	setb	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0Stop'
;------------------------------------------------------------
;	TIMER/TIMER.c:33: void Timer0Stop()
;	-----------------------------------------
;	 function Timer0Stop
;	-----------------------------------------
_Timer0Stop:
;	TIMER/TIMER.c:35: TR0 = 0;      //停止定时器
	clr	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0SetValue'
;------------------------------------------------------------
;value                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	TIMER/TIMER.c:43: void timer0SetValue(unsigned int value)
;	-----------------------------------------
;	 function timer0SetValue
;	-----------------------------------------
_timer0SetValue:
	mov	r6,dpl
	mov	r7,dph
;	TIMER/TIMER.c:45: value = value * 928;
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x03A0
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
;	TIMER/TIMER.c:46: value = 0xFFFF-value;
	mov	a,#0xFF
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,#0xFF
	subb	a,r7
;	TIMER/TIMER.c:47: TH0 = (value>>8) & 0xFF;   //设置定时时间
	mov	r5,a
	mov	_TH0,r5
;	TIMER/TIMER.c:48: TL0 =  value     & 0xFF;
	mov	_TL0,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'time0Init'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	TIMER/TIMER.c:56: void time0Init()
;	-----------------------------------------
;	 function time0Init
;	-----------------------------------------
_time0Init:
;	TIMER/TIMER.c:59: for(i = 0; i < timer0TaskCount; i++)
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
00102$:
;	TIMER/TIMER.c:61: timer0TaskStruct[i].TimerFun0 = NULL;
	mov	a,r4
	add	a,#_timer0TaskStruct
	mov	r2,a
	mov	a,r5
	addc	a,#(_timer0TaskStruct >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	TIMER/TIMER.c:62: taskCount = 0;
	mov	_taskCount,a
	mov	(_taskCount + 1),a
;	TIMER/TIMER.c:59: for(i = 0; i < timer0TaskCount; i++)
	mov	a,#0x0C
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	inc	r6
	cjne	r6,#0x00,00113$
	inc	r7
00113$:
	clr	c
	mov	a,r6
	subb	a,#0x0A
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	TIMER/TIMER.c:65: EA = 1;  //开中断
	setb	_EA
;	TIMER/TIMER.c:67: TMOD = 0x01;  //使能模式1
	mov	_TMOD,#0x01
;	TIMER/TIMER.c:68: timer0SetValue(timerCount);
	mov	dpl,_timerCount
	mov	dph,(_timerCount + 1)
	lcall	_timer0SetValue
;	TIMER/TIMER.c:69: ET0 = 1;  //开定时器0的中断
	setb	_ET0
;	TIMER/TIMER.c:70: Timer0Start();
	ljmp	_Timer0Start
;------------------------------------------------------------
;Allocation info for local variables in function 'getTaskCount'
;------------------------------------------------------------
;	TIMER/TIMER.c:79: int getTaskCount()
;	-----------------------------------------
;	 function getTaskCount
;	-----------------------------------------
_getTaskCount:
;	TIMER/TIMER.c:81: return taskCount;
	mov	dpl,_taskCount
	mov	dph,(_taskCount + 1)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'addTIMER0Task'
;------------------------------------------------------------
;inTimerFun0               Allocated with name '_addTIMER0Task_PARM_2'
;intag                     Allocated with name '_addTIMER0Task_PARM_3'
;inTimerMs                 Allocated with name '_addTIMER0Task_inTimerMs_1_11'
;i                         Allocated to registers r4 r5 
;sloc0                     Allocated with name '_addTIMER0Task_sloc0_1_0'
;sloc1                     Allocated with name '_addTIMER0Task_sloc1_1_0'
;sloc2                     Allocated with name '_addTIMER0Task_sloc2_1_0'
;------------------------------------------------------------
;	TIMER/TIMER.c:91: void addTIMER0Task(unsigned int inTimerMs,void (*inTimerFun0)(),int intag)
;	-----------------------------------------
;	 function addTIMER0Task
;	-----------------------------------------
_addTIMER0Task:
	mov	_addTIMER0Task_inTimerMs_1_11,dpl
	mov	(_addTIMER0Task_inTimerMs_1_11 + 1),dph
;	TIMER/TIMER.c:94: if(taskCount == 0) //在添加第一次任务时，会初始化。
	mov	a,_taskCount
	orl	a,(_taskCount + 1)
	jnz	00112$
;	TIMER/TIMER.c:96: time0Init();
	lcall	_time0Init
;	TIMER/TIMER.c:98: for(i = 0; i < timer0TaskCount; i++)
00112$:
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
00106$:
;	TIMER/TIMER.c:100: if(timer0TaskStruct[i].TimerFun0 == NULL)
	mov	a,r2
	add	a,#_timer0TaskStruct
	mov	_addTIMER0Task_sloc1_1_0,a
	mov	a,r3
	addc	a,#(_timer0TaskStruct >> 8)
	mov	(_addTIMER0Task_sloc1_1_0 + 1),a
	mov	a,#0x04
	add	a,_addTIMER0Task_sloc1_1_0
	mov	_addTIMER0Task_sloc0_1_0,a
	clr	a
	addc	a,(_addTIMER0Task_sloc1_1_0 + 1)
	mov	(_addTIMER0Task_sloc0_1_0 + 1),a
	mov	dpl,_addTIMER0Task_sloc0_1_0
	mov	dph,(_addTIMER0Task_sloc0_1_0 + 1)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00107$
;	TIMER/TIMER.c:102: timer0TaskStruct[i].TimerFun0 = inTimerFun0;
	mov	dpl,_addTIMER0Task_sloc0_1_0
	mov	dph,(_addTIMER0Task_sloc0_1_0 + 1)
	mov	a,_addTIMER0Task_PARM_2
	movx	@dptr,a
	mov	a,(_addTIMER0Task_PARM_2 + 1)
	inc	dptr
	movx	@dptr,a
;	TIMER/TIMER.c:103: timer0TaskStruct[i].tag = intag;
	mov	dpl,_addTIMER0Task_sloc1_1_0
	mov	dph,(_addTIMER0Task_sloc1_1_0 + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,_addTIMER0Task_PARM_3
	movx	@dptr,a
	mov	a,(_addTIMER0Task_PARM_3 + 1)
	inc	dptr
	movx	@dptr,a
;	TIMER/TIMER.c:104: timer0TaskStruct[i].time = timerClock + inTimerMs;
	mov	_addTIMER0Task_sloc2_1_0,_addTIMER0Task_inTimerMs_1_11
	mov	(_addTIMER0Task_sloc2_1_0 + 1),(_addTIMER0Task_inTimerMs_1_11 + 1)
	clr	a
	mov	(_addTIMER0Task_sloc2_1_0 + 2),a
	mov	(_addTIMER0Task_sloc2_1_0 + 3),a
	mov	a,_addTIMER0Task_sloc2_1_0
	add	a,_timerClock
	mov	r0,a
	mov	a,(_addTIMER0Task_sloc2_1_0 + 1)
	addc	a,(_timerClock + 1)
	mov	r1,a
	mov	a,(_addTIMER0Task_sloc2_1_0 + 2)
	addc	a,(_timerClock + 2)
	mov	r6,a
	mov	a,(_addTIMER0Task_sloc2_1_0 + 3)
	addc	a,(_timerClock + 3)
	mov	r7,a
	mov	dpl,_addTIMER0Task_sloc1_1_0
	mov	dph,(_addTIMER0Task_sloc1_1_0 + 1)
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	TIMER/TIMER.c:105: timer0TaskStruct[i].timeBack = inTimerMs;
	mov	dpl,_addTIMER0Task_sloc1_1_0
	mov	dph,(_addTIMER0Task_sloc1_1_0 + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,_addTIMER0Task_sloc2_1_0
	movx	@dptr,a
	mov	a,(_addTIMER0Task_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_addTIMER0Task_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_addTIMER0Task_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	TIMER/TIMER.c:106: taskCount++;
	inc	_taskCount
	clr	a
;	TIMER/TIMER.c:107: break;
	cjne	a,_taskCount,00108$
	inc	(_taskCount + 1)
	ret
00107$:
;	TIMER/TIMER.c:98: for(i = 0; i < timer0TaskCount; i++)
	mov	a,#0x0C
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	inc	r4
	cjne	r4,#0x00,00122$
	inc	r5
00122$:
	clr	c
	mov	a,r4
	subb	a,#0x0A
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00123$
	ljmp	00106$
00123$:
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delTIMER0Task'
;------------------------------------------------------------
;intag                     Allocated with name '_delTIMER0Task_intag_1_16'
;i                         Allocated with name '_delTIMER0Task_i_1_17'
;------------------------------------------------------------
;	TIMER/TIMER.c:118: void delTIMER0Task(int intag)
;	-----------------------------------------
;	 function delTIMER0Task
;	-----------------------------------------
_delTIMER0Task:
	mov	_delTIMER0Task_intag_1_16,dpl
	mov	(_delTIMER0Task_intag_1_16 + 1),dph
;	TIMER/TIMER.c:121: for(i = 0; i < timer0TaskCount; i++)
	clr	a
	mov	_delTIMER0Task_i_1_17,a
	mov	(_delTIMER0Task_i_1_17 + 1),a
	mov	r2,#0x00
	mov	r3,#0x00
00106$:
;	TIMER/TIMER.c:123: if(timer0TaskStruct[i].tag == intag)
	mov	a,r2
	add	a,#_timer0TaskStruct
	mov	r0,a
	mov	a,r3
	addc	a,#(_timer0TaskStruct >> 8)
	mov	r1,a
	mov	a,#0x06
	add	a,r0
	mov	dpl,a
	clr	a
	addc	a,r1
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,_delTIMER0Task_intag_1_16
	mov	r5,(_delTIMER0Task_intag_1_16 + 1)
	mov	a,r6
	cjne	a,ar4,00107$
	mov	a,r7
	cjne	a,ar5,00107$
;	TIMER/TIMER.c:125: timer0TaskStruct[i].TimerFun0 = NULL;
	mov	dpl,r0
	mov	dph,r1
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	TIMER/TIMER.c:126: taskCount--;
	dec	_taskCount
	mov	a,#0xFF
	cjne	a,_taskCount,00121$
	dec	(_taskCount + 1)
00121$:
;	TIMER/TIMER.c:127: if(taskCount <= 0)
	clr	c
	clr	a
	subb	a,_taskCount
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_taskCount + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00108$
;	TIMER/TIMER.c:129: Timer0Stop();
;	TIMER/TIMER.c:131: break;
	ljmp	_Timer0Stop
00107$:
;	TIMER/TIMER.c:121: for(i = 0; i < timer0TaskCount; i++)
	mov	a,#0x0C
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	inc	_delTIMER0Task_i_1_17
	clr	a
	cjne	a,_delTIMER0Task_i_1_17,00123$
	inc	(_delTIMER0Task_i_1_17 + 1)
00123$:
	clr	c
	mov	a,_delTIMER0Task_i_1_17
	subb	a,#0x0A
	mov	a,(_delTIMER0Task_i_1_17 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00106$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InterruptTimer0'
;------------------------------------------------------------
;	TIMER/TIMER.c:141: void InterruptTimer0() __interrupt 1
;	-----------------------------------------
;	 function InterruptTimer0
;	-----------------------------------------
_InterruptTimer0:
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
;	TIMER/TIMER.c:143: timerClock += timerCount;
	mov	r4,_timerCount
	mov	r5,(_timerCount + 1)
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r4
	add	a,_timerClock
	mov	_timerClock,a
	mov	a,r5
	addc	a,(_timerClock + 1)
	mov	(_timerClock + 1),a
	mov	a,r6
	addc	a,(_timerClock + 2)
	mov	(_timerClock + 2),a
	mov	a,r7
	addc	a,(_timerClock + 3)
	mov	(_timerClock + 3),a
;	TIMER/TIMER.c:144: timer0SetValue(timerCount);
	mov	dpl,_timerCount
	mov	dph,(_timerCount + 1)
	lcall	_timer0SetValue
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
;Allocation info for local variables in function 'updateTIMER0'
;------------------------------------------------------------
;i                         Allocated with name '_updateTIMER0_i_1_22'
;------------------------------------------------------------
;	TIMER/TIMER.c:152: void updateTIMER0()
;	-----------------------------------------
;	 function updateTIMER0
;	-----------------------------------------
_updateTIMER0:
;	TIMER/TIMER.c:155: for(i = 0; i < timer0TaskCount; i++)
	clr	a
	mov	_updateTIMER0_i_1_22,a
	mov	(_updateTIMER0_i_1_22 + 1),a
	mov	r4,#0x00
	mov	r5,#0x00
00106$:
;	TIMER/TIMER.c:157: if(timer0TaskStruct[i].TimerFun0 != NULL)
	mov	a,r4
	add	a,#_timer0TaskStruct
	mov	r2,a
	mov	a,r5
	addc	a,#(_timer0TaskStruct >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	orl	a,r0
	jz	00107$
;	TIMER/TIMER.c:159: if(timer0TaskStruct[i].time <= timerClock)
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,_timerClock
	subb	a,r0
	mov	a,(_timerClock + 1)
	subb	a,r1
	mov	a,(_timerClock + 2)
	subb	a,r6
	mov	a,(_timerClock + 3)
	subb	a,r7
	pop	ar1
	pop	ar0
	jc	00107$
;	TIMER/TIMER.c:161: timer0TaskStruct[i].TimerFun0();    //调用函数
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	mov	dpl,r0
	mov	dph,r1
	lcall	__sdcc_call_dptr
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	TIMER/TIMER.c:162: timer0TaskStruct[i].time = \
	mov	a,#0x08
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_timerClock
	add	a,r0
	mov	r0,a
	mov	a,(_timerClock + 1)
	addc	a,r1
	mov	r1,a
	mov	a,(_timerClock + 2)
	addc	a,r6
	mov	r6,a
	mov	a,(_timerClock + 3)
	addc	a,r7
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00107$:
;	TIMER/TIMER.c:155: for(i = 0; i < timer0TaskCount; i++)
	mov	a,#0x0C
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	inc	_updateTIMER0_i_1_22
	clr	a
	cjne	a,_updateTIMER0_i_1_22,00122$
	inc	(_updateTIMER0_i_1_22 + 1)
00122$:
	clr	c
	mov	a,_updateTIMER0_i_1_22
	subb	a,#0x0A
	mov	a,(_updateTIMER0_i_1_22 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00123$
	ljmp	00106$
00123$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay10us'
;------------------------------------------------------------
;	TIMER/TIMER.c:175: void delay10us()
;	-----------------------------------------
;	 function delay10us
;	-----------------------------------------
_delay10us:
;	TIMER/TIMER.c:184: __endasm;
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay10usValue'
;------------------------------------------------------------
;value                     Allocated to registers 
;------------------------------------------------------------
;	TIMER/TIMER.c:192: void delay10usValue(unsigned int value)
;	-----------------------------------------
;	 function delay10usValue
;	-----------------------------------------
_delay10usValue:
	mov	r6,dpl
	mov	r7,dph
;	TIMER/TIMER.c:194: while(value--);
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xFF,00110$
	dec	r7
00110$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
