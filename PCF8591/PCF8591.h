#ifndef __PCF8591_H_
#define __PCF8591_H_

#include "kingst.h"
#include "config.h"
#include "I2C.h"

typedef enum ADMODE_E
{
	SINGLE0,
	DIFF1,     // ch0 = +AIN0,-AIN3   ch1 = +AIN1,-AIN3 ch2 = +AIN1,-AIN3
	DIFF2,     // ch0 = ch0   ch1 = ch1 ch2 = +AIN2,-AIN3
	DIFF3,     // ch0 = +AIN0,-AIN1 ch2 = +AIN2,-AIN3
}ADMODE;



/*******************************************************************************
 *  函数名字 ：  getADCValue
 *  函数介绍 ：  得到ADC特定通道的值
 *  参数介绍 ：  chan : 选择的通道
 *  返回    ：  得到ADC的值
 ******************************************************************************/
extern unsigned char getADCValue(ADMODE mode, unsigned char chan);


/*******************************************************************************
 *  函数名字 ：  getADCAutoValue
 *  函数介绍 ：  得到ADC特定通道的值,自动转换
 *  参数介绍 ：  mode : 选择模式,是单端,还是差分
 *  返回    ：  得到ADC的值
 ******************************************************************************/
extern unsigned char getADCAutoValue(ADMODE mode, unsigned char chan);

/*******************************************************************************
 *  函数名字 ：  setDACValue
 *  函数介绍 ：  设置DAC的输出值
 *  参数介绍 ：  value : 将要设置的值
 *  返回    ：  无   
 ******************************************************************************/
extern void setDACValue(unsigned char value);
#endif //__PCF8591_H_
