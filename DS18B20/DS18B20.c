#include "DS18B20.h"



#define IO_18B20  P3_2  //DS18B20通信引脚
#define _nop_() __asm NOP __endasm

/* 软件延时函数，延时时间(t*10)us */
void DelayX10us(unsigned char t)
{
    do {
        _nop_();
        _nop_();
        _nop_();
        _nop_();
        _nop_();
        _nop_();
    } while (--t);
}


/*******************************************************************************
 * 函数名称 : get18B20Ack
 * 函数介绍 : 判断18B20是否就绪
 * 参数介绍 : 无
 * 返回值   : 0 : 就绪, 1:没有就绪
 ******************************************************************************/
char get18B20Ack()
{
	char ack;

	EA = 0;
	IO_18B20 = 0;
	DelayX10us(50);
	IO_18B20 = 1;
	DelayX10us(6);
	ack = IO_18B20;
	while(!IO_18B20);
	EA = 1;

	return ack;
}

/*******************************************************************************
 * 函数名称 : write18B20
 * 函数介绍 : 向18B20写一个字节
 * 参数介绍 : ch : 将要写的字节
 * 返回值   : 无
 ******************************************************************************/
void  write18B20(unsigned char dat)
{
	unsigned char mask;
	EA = 0;
	for(mask=0x01; mask!= 0; mask<<=1)
	{
		IO_18B20 = 0;
		_nop_();
		_nop_();
		if((mask&dat) == 0)
			IO_18B20 = 0;
		else
			IO_18B20 = 1;
		DelayX10us(6);
		IO_18B20 = 1;
	}
	EA = 1;
}


/*******************************************************************************
 * 函数名称 : read18B20
 * 函数介绍 : 从18B20读取一个字节
 * 参数介绍 : 无
 * 返回值   : 返回读取的字节
 ******************************************************************************/
unsigned char read18B20()
{
	unsigned char dat = 0;
	unsigned char mask;

	EA = 0;
	for(mask=0x01; mask!=0; mask<<=1)
	{
		IO_18B20 = 0;
		_nop_();
		_nop_();
		IO_18B20 = 1;
		_nop_();
		_nop_();
		if(!IO_18B20)
			dat &= ~mask;
		else
			dat |= mask;
		DelayX10us(6);
	}
	EA = 1;

	return dat;
}

/*******************************************************************************
 * 函数名称 : getDs18B20
 * 函数介绍 : 读取18B20的温度,整数温度
 * 参数介绍 : 无
 * 返回值   : 整数温度
 ******************************************************************************/
int getDs18B20(void) 
{
	unsigned char V1,V2;   //定义高低8位 缓冲
	int temp;    //定义温度缓冲寄存器
	char status;
	status = get18B20Ack();
	if( status == 0)
	{
			write18B20(0xcc);    // 跳过读序号列号的操作
			write18B20(0x44);    // 启动温度转换
	}

	status = get18B20Ack();
	if( status == 0)
	{
			write18B20(0xcc);    //跳过读序号列号的操作
			write18B20(0xbe);    //读取温度寄存器等（共可读9个寄存器） 前两个就是温度
	}

	V1 = read18B20();    //低位
	V2 = read18B20();    //高位
	temp = ((V1 >> 4)+((V2 & 0x07)*16)); //转换数据

	return temp;
}

/*******************************************************************************
 * 函数名称 : getFloatDs18B20
 * 函数介绍 : 得到18B20的浮点温度
 * 参数介绍 : 无
 * 返回值   : 浮点温度
 ******************************************************************************/
float getFloatDs18B20(void) 
{
	unsigned char V1,V2;   //定义高低8位 缓冲
	unsigned int temp;     //定义温度缓冲寄存器
	char status;
	float fValue;
	status = get18B20Ack();
	if( status == 0)
	{
			write18B20(0xcc);    // 跳过读序号列号的操作
			write18B20(0x44);    // 启动温度转换
	}

	status = get18B20Ack();
	if( status == 0)
	{
			write18B20(0xcc);    //跳过读序号列号的操作
			write18B20(0xbe);    //读取温度寄存器等（共可读9个寄存器） 前两个就是温度
	}
	V1 = read18B20();    //低位
	V2 = read18B20();    //高位
	//temp = ((V1 >> 4)+((V2 & 0x07)*16)); //转换数据
	temp=V2*0xFF+V1;
	fValue = temp*0.0625;

	return fValue;
}
