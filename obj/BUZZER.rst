                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Thu Sep 29 13:34:06 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module BUZZER
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _TF2
                                     13 	.globl _EXF2
                                     14 	.globl _RCLK
                                     15 	.globl _TCLK
                                     16 	.globl _EXEN2
                                     17 	.globl _TR2
                                     18 	.globl _C_T2
                                     19 	.globl _CP_RL2
                                     20 	.globl _T2CON_7
                                     21 	.globl _T2CON_6
                                     22 	.globl _T2CON_5
                                     23 	.globl _T2CON_4
                                     24 	.globl _T2CON_3
                                     25 	.globl _T2CON_2
                                     26 	.globl _T2CON_1
                                     27 	.globl _T2CON_0
                                     28 	.globl _PT2
                                     29 	.globl _ET2
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _PS
                                     39 	.globl _PT1
                                     40 	.globl _PX1
                                     41 	.globl _PT0
                                     42 	.globl _PX0
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _EA
                                     60 	.globl _ES
                                     61 	.globl _ET1
                                     62 	.globl _EX1
                                     63 	.globl _ET0
                                     64 	.globl _EX0
                                     65 	.globl _P2_7
                                     66 	.globl _P2_6
                                     67 	.globl _P2_5
                                     68 	.globl _P2_4
                                     69 	.globl _P2_3
                                     70 	.globl _P2_2
                                     71 	.globl _P2_1
                                     72 	.globl _P2_0
                                     73 	.globl _SM0
                                     74 	.globl _SM1
                                     75 	.globl _SM2
                                     76 	.globl _REN
                                     77 	.globl _TB8
                                     78 	.globl _RB8
                                     79 	.globl _TI
                                     80 	.globl _RI
                                     81 	.globl _P1_7
                                     82 	.globl _P1_6
                                     83 	.globl _P1_5
                                     84 	.globl _P1_4
                                     85 	.globl _P1_3
                                     86 	.globl _P1_2
                                     87 	.globl _P1_1
                                     88 	.globl _P1_0
                                     89 	.globl _TF1
                                     90 	.globl _TR1
                                     91 	.globl _TF0
                                     92 	.globl _TR0
                                     93 	.globl _IE1
                                     94 	.globl _IT1
                                     95 	.globl _IE0
                                     96 	.globl _IT0
                                     97 	.globl _P0_7
                                     98 	.globl _P0_6
                                     99 	.globl _P0_5
                                    100 	.globl _P0_4
                                    101 	.globl _P0_3
                                    102 	.globl _P0_2
                                    103 	.globl _P0_1
                                    104 	.globl _P0_0
                                    105 	.globl _TH2
                                    106 	.globl _TL2
                                    107 	.globl _RCAP2H
                                    108 	.globl _RCAP2L
                                    109 	.globl _T2CON
                                    110 	.globl _B
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _IP
                                    114 	.globl _P3
                                    115 	.globl _IE
                                    116 	.globl _P2
                                    117 	.globl _SBUF
                                    118 	.globl _SCON
                                    119 	.globl _P1
                                    120 	.globl _TH1
                                    121 	.globl _TH0
                                    122 	.globl _TL1
                                    123 	.globl _TL0
                                    124 	.globl _TMOD
                                    125 	.globl _TCON
                                    126 	.globl _PCON
                                    127 	.globl _DPH
                                    128 	.globl _DPL
                                    129 	.globl _SP
                                    130 	.globl _P0
                                    131 	.globl _updateBuzz
                                    132 ;--------------------------------------------------------
                                    133 ; special function registers
                                    134 ;--------------------------------------------------------
                                    135 	.area RSEG    (ABS,DATA)
      000000                        136 	.org 0x0000
                           000080   137 _P0	=	0x0080
                           000081   138 _SP	=	0x0081
                           000082   139 _DPL	=	0x0082
                           000083   140 _DPH	=	0x0083
                           000087   141 _PCON	=	0x0087
                           000088   142 _TCON	=	0x0088
                           000089   143 _TMOD	=	0x0089
                           00008A   144 _TL0	=	0x008a
                           00008B   145 _TL1	=	0x008b
                           00008C   146 _TH0	=	0x008c
                           00008D   147 _TH1	=	0x008d
                           000090   148 _P1	=	0x0090
                           000098   149 _SCON	=	0x0098
                           000099   150 _SBUF	=	0x0099
                           0000A0   151 _P2	=	0x00a0
                           0000A8   152 _IE	=	0x00a8
                           0000B0   153 _P3	=	0x00b0
                           0000B8   154 _IP	=	0x00b8
                           0000D0   155 _PSW	=	0x00d0
                           0000E0   156 _ACC	=	0x00e0
                           0000F0   157 _B	=	0x00f0
                           0000C8   158 _T2CON	=	0x00c8
                           0000CA   159 _RCAP2L	=	0x00ca
                           0000CB   160 _RCAP2H	=	0x00cb
                           0000CC   161 _TL2	=	0x00cc
                           0000CD   162 _TH2	=	0x00cd
                                    163 ;--------------------------------------------------------
                                    164 ; special function bits
                                    165 ;--------------------------------------------------------
                                    166 	.area RSEG    (ABS,DATA)
      000000                        167 	.org 0x0000
                           000080   168 _P0_0	=	0x0080
                           000081   169 _P0_1	=	0x0081
                           000082   170 _P0_2	=	0x0082
                           000083   171 _P0_3	=	0x0083
                           000084   172 _P0_4	=	0x0084
                           000085   173 _P0_5	=	0x0085
                           000086   174 _P0_6	=	0x0086
                           000087   175 _P0_7	=	0x0087
                           000088   176 _IT0	=	0x0088
                           000089   177 _IE0	=	0x0089
                           00008A   178 _IT1	=	0x008a
                           00008B   179 _IE1	=	0x008b
                           00008C   180 _TR0	=	0x008c
                           00008D   181 _TF0	=	0x008d
                           00008E   182 _TR1	=	0x008e
                           00008F   183 _TF1	=	0x008f
                           000090   184 _P1_0	=	0x0090
                           000091   185 _P1_1	=	0x0091
                           000092   186 _P1_2	=	0x0092
                           000093   187 _P1_3	=	0x0093
                           000094   188 _P1_4	=	0x0094
                           000095   189 _P1_5	=	0x0095
                           000096   190 _P1_6	=	0x0096
                           000097   191 _P1_7	=	0x0097
                           000098   192 _RI	=	0x0098
                           000099   193 _TI	=	0x0099
                           00009A   194 _RB8	=	0x009a
                           00009B   195 _TB8	=	0x009b
                           00009C   196 _REN	=	0x009c
                           00009D   197 _SM2	=	0x009d
                           00009E   198 _SM1	=	0x009e
                           00009F   199 _SM0	=	0x009f
                           0000A0   200 _P2_0	=	0x00a0
                           0000A1   201 _P2_1	=	0x00a1
                           0000A2   202 _P2_2	=	0x00a2
                           0000A3   203 _P2_3	=	0x00a3
                           0000A4   204 _P2_4	=	0x00a4
                           0000A5   205 _P2_5	=	0x00a5
                           0000A6   206 _P2_6	=	0x00a6
                           0000A7   207 _P2_7	=	0x00a7
                           0000A8   208 _EX0	=	0x00a8
                           0000A9   209 _ET0	=	0x00a9
                           0000AA   210 _EX1	=	0x00aa
                           0000AB   211 _ET1	=	0x00ab
                           0000AC   212 _ES	=	0x00ac
                           0000AF   213 _EA	=	0x00af
                           0000B0   214 _P3_0	=	0x00b0
                           0000B1   215 _P3_1	=	0x00b1
                           0000B2   216 _P3_2	=	0x00b2
                           0000B3   217 _P3_3	=	0x00b3
                           0000B4   218 _P3_4	=	0x00b4
                           0000B5   219 _P3_5	=	0x00b5
                           0000B6   220 _P3_6	=	0x00b6
                           0000B7   221 _P3_7	=	0x00b7
                           0000B0   222 _RXD	=	0x00b0
                           0000B1   223 _TXD	=	0x00b1
                           0000B2   224 _INT0	=	0x00b2
                           0000B3   225 _INT1	=	0x00b3
                           0000B4   226 _T0	=	0x00b4
                           0000B5   227 _T1	=	0x00b5
                           0000B6   228 _WR	=	0x00b6
                           0000B7   229 _RD	=	0x00b7
                           0000B8   230 _PX0	=	0x00b8
                           0000B9   231 _PT0	=	0x00b9
                           0000BA   232 _PX1	=	0x00ba
                           0000BB   233 _PT1	=	0x00bb
                           0000BC   234 _PS	=	0x00bc
                           0000D0   235 _P	=	0x00d0
                           0000D1   236 _F1	=	0x00d1
                           0000D2   237 _OV	=	0x00d2
                           0000D3   238 _RS0	=	0x00d3
                           0000D4   239 _RS1	=	0x00d4
                           0000D5   240 _F0	=	0x00d5
                           0000D6   241 _AC	=	0x00d6
                           0000D7   242 _CY	=	0x00d7
                           0000AD   243 _ET2	=	0x00ad
                           0000BD   244 _PT2	=	0x00bd
                           0000C8   245 _T2CON_0	=	0x00c8
                           0000C9   246 _T2CON_1	=	0x00c9
                           0000CA   247 _T2CON_2	=	0x00ca
                           0000CB   248 _T2CON_3	=	0x00cb
                           0000CC   249 _T2CON_4	=	0x00cc
                           0000CD   250 _T2CON_5	=	0x00cd
                           0000CE   251 _T2CON_6	=	0x00ce
                           0000CF   252 _T2CON_7	=	0x00cf
                           0000C8   253 _CP_RL2	=	0x00c8
                           0000C9   254 _C_T2	=	0x00c9
                           0000CA   255 _TR2	=	0x00ca
                           0000CB   256 _EXEN2	=	0x00cb
                           0000CC   257 _TCLK	=	0x00cc
                           0000CD   258 _RCLK	=	0x00cd
                           0000CE   259 _EXF2	=	0x00ce
                           0000CF   260 _TF2	=	0x00cf
                                    261 ;--------------------------------------------------------
                                    262 ; overlayable register banks
                                    263 ;--------------------------------------------------------
                                    264 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        265 	.ds 8
                                    266 ;--------------------------------------------------------
                                    267 ; internal ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area DSEG    (DATA)
                                    270 ;--------------------------------------------------------
                                    271 ; overlayable items in internal ram 
                                    272 ;--------------------------------------------------------
                                    273 ;--------------------------------------------------------
                                    274 ; indirectly addressable internal ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area ISEG    (DATA)
                                    277 ;--------------------------------------------------------
                                    278 ; absolute internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area IABS    (ABS,DATA)
                                    281 	.area IABS    (ABS,DATA)
                                    282 ;--------------------------------------------------------
                                    283 ; bit data
                                    284 ;--------------------------------------------------------
                                    285 	.area BSEG    (BIT)
                                    286 ;--------------------------------------------------------
                                    287 ; paged external ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area PSEG    (PAG,XDATA)
                                    290 ;--------------------------------------------------------
                                    291 ; external ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area XSEG    (XDATA)
                                    294 ;--------------------------------------------------------
                                    295 ; absolute external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area XABS    (ABS,XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; external initialized ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XISEG   (XDATA)
                                    302 	.area HOME    (CODE)
                                    303 	.area GSINIT0 (CODE)
                                    304 	.area GSINIT1 (CODE)
                                    305 	.area GSINIT2 (CODE)
                                    306 	.area GSINIT3 (CODE)
                                    307 	.area GSINIT4 (CODE)
                                    308 	.area GSINIT5 (CODE)
                                    309 	.area GSINIT  (CODE)
                                    310 	.area GSFINAL (CODE)
                                    311 	.area CSEG    (CODE)
                                    312 ;--------------------------------------------------------
                                    313 ; global & static initialisations
                                    314 ;--------------------------------------------------------
                                    315 	.area HOME    (CODE)
                                    316 	.area GSINIT  (CODE)
                                    317 	.area GSFINAL (CODE)
                                    318 	.area GSINIT  (CODE)
                                    319 ;--------------------------------------------------------
                                    320 ; Home
                                    321 ;--------------------------------------------------------
                                    322 	.area HOME    (CODE)
                                    323 	.area HOME    (CODE)
                                    324 ;--------------------------------------------------------
                                    325 ; code
                                    326 ;--------------------------------------------------------
                                    327 	.area CSEG    (CODE)
                                    328 ;------------------------------------------------------------
                                    329 ;Allocation info for local variables in function 'updateBuzz'
                                    330 ;------------------------------------------------------------
                                    331 ;	BUZZER/BUZZER.c:9: void updateBuzz()
                                    332 ;	-----------------------------------------
                                    333 ;	 function updateBuzz
                                    334 ;	-----------------------------------------
      00081A                        335 _updateBuzz:
                           000007   336 	ar7 = 0x07
                           000006   337 	ar6 = 0x06
                           000005   338 	ar5 = 0x05
                           000004   339 	ar4 = 0x04
                           000003   340 	ar3 = 0x03
                           000002   341 	ar2 = 0x02
                           000001   342 	ar1 = 0x01
                           000000   343 	ar0 = 0x00
                                    344 ;	BUZZER/BUZZER.c:11: BUZZ = !BUZZ;
      00081A B2 96            [12]  345 	cpl	_P1_6
      00081C 22               [24]  346 	ret
                                    347 	.area CSEG    (CODE)
                                    348 	.area CONST   (CODE)
                                    349 	.area XINIT   (CODE)
                                    350 	.area CABS    (ABS,CODE)
