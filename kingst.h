#ifndef __KINGST_H_
#define __KINGST_H_
#include <8052.h>
/********************************************************************************
*  引脚定义
********************************************************************************/
//LED数据引脚
#define LED    P0
//LED点阵数据引脚
#define LEDZHENDATA    P0
//LED数码管据引脚
#define LEDSHU P0
//LED数据引脚
#define LEDDATA P0
#define ADDR0  P1_0
#define ADDR1  P1_1
#define ADDR2  P1_2
#define ADDR3  P1_3
#define ENLED  P1_4
#define LED1    P0_0
#define LED2    P0_1
#define LED3    P0_2
#define LED4    P0_3
#define LED5    P0_4

//按键引脚
#define KEYIN1  P2_4
#define KEYIN2  P2_5
#define KEYIN3  P2_6
#define KEYIN4  P2_7
#define KEYOUT1 P2_3
#define KEYOUT2 P2_2
#define KEYOUT3 P2_1
#define KEYOUT4 P2_0
#define BUZZ    P1_6

//LCD引脚
//数据引脚
#define LCD1602_DB P0
//数据/命令选择端
#define LCD1602_RS P1_0
//读/写选择端
#define LCD1602_RW P1_1
//使能端
#define LCD1602_E P1_5

#endif
