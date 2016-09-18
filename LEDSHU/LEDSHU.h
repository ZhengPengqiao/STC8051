/*******************************************************************************
 * 文件名称：LEDSHU.h
 * 作者    ：  郑朋桥
 * 文件介绍： 数码管相关函数定义,提供数码管的基础操作,函数实现在LEDSHU.c
 * 
 ******************************************************************************/
#ifndef __LEDSHU_H_
#define __LEDSHU_H_

#include <8052.h>
#include "kingst.h"
extern void setLedShuNum(unsigned char ledShuArray[]);
extern void updateLedShu();
#endif
