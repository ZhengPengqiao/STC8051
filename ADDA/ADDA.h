#ifndef __ADDA_H_
#define __ADDA_H_

#include "kingst.h"
#include "config.h"

/*******************************************************************************
 *  函数名字 ：  getADCValue
 *  函数介绍 ：  得到ADC特定通道的值
 *  参数介绍 ：  chan : 选择的通道
 *  返回    ：  得到ADC的值
 ******************************************************************************/
extern unsigned char getADCValue(unsigned char chan);

/*******************************************************************************
 *  函数名字 ：  setDACValue
 *  函数介绍 ：  设置DAC的输出值
 *  参数介绍 ：  value : 将要设置的值
 *  返回    ：  无   
 ******************************************************************************/
extern void setDACValue(unsigned char value);
#endif //__ADDA_H_
