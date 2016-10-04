#include "DS18B20.h"




/*****************************************************************************
*  函数名称  ： Delay_us
*  函数介绍  ：  使用Time1定时器模模式，进行精确定位
*            ：
*    参数    ： k : 延时k us
*   返回值   ： 无
******************************************************************************/

void Delay_10us(unsigned int k)//us延时函数
{ 
	while(k--)
	{
		__asm 
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		__endasm;
	}
}


/*******************************************************************************
 * 函数名称 : get18B20Ack
 * 函数介绍 : 判断18B20是否就绪
 * 参数介绍 : 无
 * 返回值   : 0 : 就绪, 1:没有就绪
 ******************************************************************************/
char get18B20Ack()
{
	char ret = 1;
	EA = 0;

	Ds18b20IO = 1;
	Delay_10us(5);
	Ds18b20IO = 0;
	Delay_10us(75);
	Ds18b20IO = 1;
	Delay_10us(6);
	ret = Ds18b20IO;
	Ds18b20IO = 1;
	Delay_10us(24);
	EA = 1;
	return ret;

}

/*******************************************************************************
 * 函数名称 : write18B20
 * 函数介绍 : 向18B20写一个字节
 * 参数介绍 : ch : 将要写的字节
 * 返回值   : 无
 ******************************************************************************/
void write18B20(unsigned char ch)
{
	unsigned char i = 0;
	EA = 0;
	for(i = 0; i < 8; i++)
	{
		if(ch & (1 << i))
		{
			Ds18b20IO = 0;
			__asm 
			NOP
			NOP
			NOP
			NOP
			NOP
			NOP
			__endasm;
			Ds18b20IO = 1;
			Delay_10us(6);      
		}
		else
		{
			Ds18b20IO = 0;
			Delay_10us(6);
			Ds18b20IO = 1;
			__asm 
			NOP
			NOP
			NOP
			NOP
			NOP
			NOP
			__endasm;     
		}
	  
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
	unsigned char ret = 0;
	unsigned char i;
	EA = 0;
	Ds18b20IO = 1;
	Delay_10us(1);
	for(i = 0; i < 8; i++)
	{
		Ds18b20IO = 0;
		__asm 
			NOP
			NOP
			NOP
		__endasm;
		Ds18b20IO = 1;
		__asm 
			NOP
			NOP
			NOP
		__endasm;
		ret |= (Ds18b20IO << i);
		Ds18b20IO = 0;
		__asm 
			NOP
			NOP
			NOP
		__endasm;
	}
	EA = 1;
	return ret;
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
