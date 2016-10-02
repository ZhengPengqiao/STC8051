#include "PCF8591.h"


/*******************************************************************************
 *  函数名字 ：  getADCValue
 *  函数介绍 ：  得到ADC特定通道的值
 *  参数介绍 ：  chan : 选择的通道
 * 				mode : 选择模式,是单端,还是差分
 *  返回    ：  得到ADC的值
 ******************************************************************************/
unsigned char getADCValue(ADMODE mode, unsigned char chan)
{
	unsigned char val;
	i2cStart();
	if( !i2cWrite(0x48 << 1) )  //寻址PCF8591,如未应答,则停止操作,并返回0
	{
		i2cStop();
		return 0;
	}
	//写入控制字,选择转换通道
	switch(mode)
	{
		case SINGLE0: i2cWrite(0x40 | chan);   break;
		case DIFF1:   i2cWrite(0x50 | chan);   break;
		case DIFF2:   i2cWrite(0x60 | chan);   break;
		case DIFF3:   i2cWrite(0x70 | chan);   break;
	}
	
	i2cStart();
	i2cWrite( (0x48 << 1) | 0x01 );  //重新寻址PCF8591,制定后续为读操作
	
	
	//PCF8591的转换时钟是由I2C的SCL提供的,8个SCL周期完成一次转换,所以当前的转换结果总是在下一
	//个字节的8个SCL上读取到,因此这里第一条语句的作用是提供时钟进行AD转换
	i2cReadACK();             //先读取一个字节,提供采样时间
	val = i2cReadNAK();         //读取刚刚转换完的数值
	i2cStop();
	return val;
}

/*******************************************************************************
 *  函数名字 ：  getADCAutoValue
 *  函数介绍 ：  得到ADC特定通道的值,自动转换
 *  参数介绍 ：  mode : 选择模式,是单端,还是差分
 *  返回    ：  得到ADC的值
 ******************************************************************************/
unsigned char getADCAutoValue(ADMODE mode)
{
	unsigned char val;
	i2cStart();
	if( !i2cWrite(0x48 << 1) )  //寻址PCF8591,如未应答,则停止操作,并返回0
	{
		i2cStop();
		return 0;
	}
	//写入控制字,选择转换通道
	switch(mode)
	{
		case SINGLE0: i2cWrite(0x40 | 0x4);   break;
		case DIFF1:   i2cWrite(0x50 | 0x4);   break;
		case DIFF2:   i2cWrite(0x60 | 0x4);   break;
		case DIFF3:   i2cWrite(0x70 | 0x4);   break;
	}
	
	i2cStart();
	i2cWrite( (0x48 << 1) | 0x01 );  //重新寻址PCF8591,制定后续为读操作
	
	
	//PCF8591的转换时钟是由I2C的SCL提供的,8个SCL周期完成一次转换,所以当前的转换结果总是在下一
	//个字节的8个SCL上读取到,因此这里第一条语句的作用是提供时钟进行AD转换
	i2cReadACK();             //先读取一个字节,提供采样时间
	val = i2cReadNAK();         //读取刚刚转换完的数值
	i2cStop();
	return val;
}

/*******************************************************************************
 *  函数名字 ：  setDACValue
 *  函数介绍 ：  设置DAC的输出值
 *  参数介绍 ：  value : 将要设置的值
 *  返回    ：  无   
 ******************************************************************************/
void setDACValue(unsigned char value)
{
	i2cStart();
	if( !i2cWrite(0x48 << 1)  ) //寻址PCF8591,如未应答,则停止操作,并返回0
	{
		i2cStop();
		return;
	}
	
	i2cWrite(0x40);              //写入控制字
	i2cWrite(value);               //写入da值
	i2cStop();
}
