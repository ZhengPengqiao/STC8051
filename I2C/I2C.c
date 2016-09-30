#include "I2C.h"


/*******************************************************************************
 * 函数名称 : i2cStart
 * 函数介绍 :	发送蓝牙起始位
 * 参数介绍 : 无
 * 返回值   : 无
 ******************************************************************************/
void i2cStart()
{
	I2CSCL = 1;  //首先保持I2CSCL,I2CSDA都是高电平
	I2CSDA = 1;
	I2CDelay();
	I2CSDA = 0;  //先将I2CSDA拉低
	I2CDelay();
	I2CSCL = 0;  //再将I2CSCL拉低
}

/*******************************************************************************
 * 函数名称 : i2cStop
 * 函数介绍 :	发送蓝牙停止位
 * 参数介绍 : 无
 * 返回值   : 无
 ******************************************************************************/
void i2cStop()
{
	I2CSCL = 0;  //首先保持I2CSCL,I2CSDA都是低电平
	I2CSDA = 0;
	I2CDelay();
	I2CSCL = 1;  //先将I2CSCL拉高
	I2CDelay();
	I2CSDA = 1;  //再将I2CSDA拉高
	I2CDelay();
}

/*******************************************************************************
 * 函数名称 : i2cWrite
 * 函数介绍 :	发送一个字节
 * 参数介绍 : data : 将要发送的字节
 * 返回值   : 返回从机应答位
 ******************************************************************************/
char i2cWrite(unsigned char data)
{
	char ack;  //用于存储应答位
	unsigned char mask;
	for(mask = 0x80; mask != 0; mask >>= 1)  //循环发送8位
	{
		if(data & mask)    //将数据位改为要发送的bit值
		{
			I2CSDA = 1;
		}
		else
		{
			I2CSDA = 0;
		}
		I2CDelay();        //I2CSCL低位延时
		I2CSCL = 1;
		I2CDelay();        //I2CSCL高位延时
		I2CSCL = 0;
	}
	
	I2CSDA = 1;            //将数据线拉高.等待应答
	I2CDelay();            //I2CSCL低位延时
	I2CSCL = 1;
	ack = I2CSDA;          //读取应答位
	I2CSCL = 0;            //将I2CSCL改为低电平,为以后准备
	return !ack;  //取反,以符合正常逻辑,1,存在,0,不存在或者忙
}


/*******************************************************************************
 * 函数名称 : i2cReadNAK
 * 函数介绍 :	读取一个字节,发送发送非应答位
 * 参数介绍 : 无
 * 返回值   : 返回读取到的字节
 ******************************************************************************/
unsigned char i2cReadNAK()
{
	unsigned char mask;
	unsigned char data = 0;
	
	I2CSDA = 1;                     //首先确定主机释放SDA
	for(mask = 0x80; mask != 0; mask >>= 1)  //循环接收8位
	{
		I2CDelay();   //低电平延时
		I2CSCL = 1;   
		if(I2CSDA)    //读取相应的位
		{
			data |= mask;
		}
		else
		{
			data &= ~mask;
		}
		I2CDelay();   //高电平延时
		I2CSCL = 0;
	}
	I2CSDA = 1;       //拉高SDA,发送非应答位
	I2CDelay();       //低电平延时
	I2CSCL = 1;
	I2CDelay();       //高电平延时
	I2CSCL = 0;
	
	return data;
}

/*******************************************************************************
 * 函数名称 : i2cReadACK
 * 函数介绍 :	读取一个字节,发送应答位
 * 参数介绍 : 无
 * 返回值   : 返回读取到的字节
 ******************************************************************************/
unsigned char i2cReadACK()
{
	unsigned char mask;
	unsigned char data = 0;
	
	I2CSDA = 1;                     //首先确定主机释放SDA
	for(mask = 0x80; mask != 0; mask >>= 1)  //循环接收8位
	{
		I2CDelay();   //低电平延时
		I2CSCL = 1;   
		if(I2CSDA)    //读取相应的位
		{
			data |= mask;
		}
		else
		{
			data &= ~mask;
		}
		I2CDelay();   //高电平延时
		I2CSCL = 0;
	}
	I2CSDA = 0;       //拉高SDA,发送非应答位
	I2CDelay();       //低电平延时
	I2CSCL = 1;
	I2CDelay();       //高电平延时
	I2CSCL = 0;
	
	return data;
}
